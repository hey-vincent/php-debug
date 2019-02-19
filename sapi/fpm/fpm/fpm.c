	/* $Id: fpm.c,v 1.23 2008/07/20 16:38:31 anight Exp $ */
	/* (c) 2007,2008 Andrei Nigmatulin */

#include "fpm_config.h"

#include <stdlib.h> /* for exit */

#include "fpm.h"
#include "fpm_children.h"
#include "fpm_signals.h"
#include "fpm_env.h"
#include "fpm_events.h"
#include "fpm_cleanup.h"
#include "fpm_php.h"
#include "fpm_sockets.h"
#include "fpm_unix.h"
#include "fpm_process_ctl.h"
#include "fpm_conf.h"
#include "fpm_worker_pool.h"
#include "fpm_scoreboard.h"
#include "fpm_stdio.h"
#include "fpm_log.h"
#include "zlog.h"
#include <execinfo.h>

struct fpm_globals_s fpm_globals = {
	.parent_pid = 0,
	.argc = 0,
	.argv = NULL,
	.config = NULL,
	.prefix = NULL,
	.pid = NULL,
	.running_children = 0,
	.error_log_fd = 0,
	.log_level = 0,
	.listening_socket = 0,
	.max_requests = 0,
	.is_child = 0,
	.test_successful = 0,
	.heartbeat = 0,
	.run_as_root = 0,
	.force_stderr = 0,
	.send_config_pipe = {0, 0},
};

int fpm_init(int argc, char **argv, char *config, char *prefix, char *pid, int test_conf, int run_as_root, int force_daemon, int force_stderr) /* {{{ */
{
	// vincent comment notes: 2019-01-03 HERE maybe the first time that fpm_globals beeing assigned
	wenshengLog("Fpm 初始化(%d,%s,%d,%s,%d,%d,%d)",argc, *argv, prefix, pid, run_as_root, force_daemon, force_stderr);
	fpm_globals.argc = argc;
	fpm_globals.argv = argv;
	// vincent comment notes: 2019-01-03   没有额外配置参数的时候config = null
	if (config && *config) {
		wenshengLog("fpm_init is being called since config passed");
		fpm_globals.config = strdup(config);
	}
	fpm_globals.prefix = prefix;
	fpm_globals.pid = pid;
	fpm_globals.run_as_root = run_as_root;
	fpm_globals.force_stderr = force_stderr;

	if (0 > fpm_php_init_main()           ||
	    0 > fpm_stdio_init_main()         ||
	    0 > fpm_conf_init_main(test_conf, force_daemon) ||
	    0 > fpm_unix_init_main()          ||
	    0 > fpm_scoreboard_init_main()    ||
	    0 > fpm_pctl_init_main()          ||
	    0 > fpm_env_init_main()           ||
	    0 > fpm_signals_init_main()       ||
	    0 > fpm_children_init_main()      ||
	    0 > fpm_sockets_init_main()       ||  // vincent comment notes: 2018-12-26  初始化socket 开始监听端口
	    0 > fpm_worker_pool_init_main()   ||
	    0 > fpm_event_init_main()) {

		if (fpm_globals.test_successful) {
			exit(FPM_EXIT_OK);
		} else {
			zlog(ZLOG_ERROR, "FPM initialization failed");
			return -1;
		}
	}




	if (0 > fpm_conf_write_pid()) {
		zlog(ZLOG_ERROR, "FPM initialization failed");
		return -1;
	}

	fpm_stdio_init_final();
	zlog(ZLOG_NOTICE, "fpm is running, pid %d", (int) fpm_globals.parent_pid);

	return 0;
}
/* }}} */

/*	children: return listening socket
	parent: never return */
int fpm_run(int *max_requests) /* {{{ */
{
    wenshengLog("================================================================");
    wenshengLog("================================================================");
    wenshengLog("================================================================");
    wenshengLog("=                                                              =");
    wenshengLog("=                                                              =");
    wenshengLog("=                                                              =");
    wenshengLog("=                    开始启动FPM                               =");
    wenshengLog("=                                                              =");
    wenshengLog("=                                                              =");
    wenshengLog("=                                                              =");
    wenshengLog("================================================================");
    wenshengLog("================================================================");
    wenshengLog("================================================================");
    wenshengLog("================================================================");
    wenshengLog("================================================================");
	struct fpm_worker_pool_s *wp;

	/* create initial children in all pools */
	for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
		int is_parent;

		// wensheng comment:--
        // 父进程返回 2, 子进程 和 失败 返回 0 -1
        // --:end
		is_parent = fpm_children_create_initial(wp);
		if (!is_parent) {
			goto run_child;
		}

		/* handle error */
		if (is_parent == 2) {
			fpm_pctl(FPM_PCTL_STATE_TERMINATING, FPM_PCTL_ACTION_SET);
			fpm_event_loop(1);
		}
	}

	/* run event loop forever */
	fpm_event_loop(0);

run_child: /* only workers reach this point */

	fpm_cleanups_run(FPM_CLEANUP_CHILD);

	*max_requests = fpm_globals.max_requests;
	return fpm_globals.listening_socket;
}
/* }}} */


//wensheng add
void traceLog(char *fl){
    if(fl){
        wenshengLog("%s", fl);
    }
    const int max_trace_count = 64;
    void *trace[max_trace_count];
    memset(trace, 0,max_trace_count * sizeof(void*));
    int trace_count = backtrace(trace, max_trace_count);
    char **smb = (char **)backtrace_symbols(trace, trace_count);
    for (int ti = 0; ti < trace_count; ++ti) {
        wenshengLog("%s",smb[ti]);
    }
}