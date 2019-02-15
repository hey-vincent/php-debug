srcdir = /Users/momo/helloworld/php-source-code-reading
builddir = /Users/momo/helloworld/php-source-code-reading
top_srcdir = /Users/momo/helloworld/php-source-code-reading
top_builddir = /Users/momo/helloworld/php-source-code-reading
EGREP = /usr/bin/grep -E
SED = /usr/bin/sed
CONFIGURE_COMMAND = './configure' '--without-iconv' '--without-valgrind' '--enable-fpm'
CONFIGURE_OPTIONS = '--without-iconv' '--without-valgrind' '--enable-fpm'
PHP_MAJOR_VERSION = 7
PHP_MINOR_VERSION = 2
PHP_RELEASE_VERSION = 15
PHP_EXTRA_VERSION = -dev
AWK = awk
YACC = bison -y
RE2C = re2c
RE2C_FLAGS =
SHLIB_SUFFIX_NAME = dylib
SHLIB_DL_SUFFIX_NAME = so
PHP_CLI_OBJS = sapi/cli/php_cli.lo sapi/cli/php_http_parser.lo sapi/cli/php_cli_server.lo sapi/cli/ps_title.lo sapi/cli/php_cli_process_title.lo
PHP_EXECUTABLE = $(top_builddir)/$(SAPI_CLI_PATH)
SAPI_CLI_PATH = sapi/cli/php
BUILD_CLI = $(CC) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) $(EXTRA_LDFLAGS_PROGRAM) $(LDFLAGS) $(NATIVE_RPATHS) $(PHP_GLOBAL_OBJS:.lo=.o) $(PHP_BINARY_OBJS:.lo=.o) $(PHP_CLI_OBJS:.lo=.o) $(PHP_FRAMEWORKS) $(EXTRA_LIBS) $(ZEND_EXTRA_LIBS) -o $(SAPI_CLI_PATH)
php_fpm_systemd = simple
php_fpm_user = nobody
php_fpm_group = nobody
php_fpm_sysconfdir = NONE/etc
php_fpm_localstatedir = NONE/var
php_fpm_prefix = NONE
PHP_FPM_OBJS = sapi/fpm/fpm/fpm.lo sapi/fpm/fpm/fpm_children.lo sapi/fpm/fpm/fpm_cleanup.lo sapi/fpm/fpm/fpm_clock.lo sapi/fpm/fpm/fpm_conf.lo sapi/fpm/fpm/fpm_env.lo sapi/fpm/fpm/fpm_events.lo sapi/fpm/fpm/fpm_log.lo sapi/fpm/fpm/fpm_main.lo sapi/fpm/fpm/fpm_php.lo sapi/fpm/fpm/fpm_php_trace.lo sapi/fpm/fpm/fpm_process_ctl.lo sapi/fpm/fpm/fpm_request.lo sapi/fpm/fpm/fpm_shm.lo sapi/fpm/fpm/fpm_scoreboard.lo sapi/fpm/fpm/fpm_signals.lo sapi/fpm/fpm/fpm_sockets.lo sapi/fpm/fpm/fpm_status.lo sapi/fpm/fpm/fpm_stdio.lo sapi/fpm/fpm/fpm_unix.lo sapi/fpm/fpm/fpm_worker_pool.lo sapi/fpm/fpm/zlog.lo sapi/fpm/fpm/events/select.lo sapi/fpm/fpm/events/poll.lo sapi/fpm/fpm/events/epoll.lo sapi/fpm/fpm/events/kqueue.lo sapi/fpm/fpm/events/devpoll.lo sapi/fpm/fpm/events/port.lo sapi/fpm/fpm/fpm_trace.lo sapi/fpm/fpm/fpm_trace_mach.lo
SAPI_FPM_PATH = sapi/fpm/php-fpm
BUILD_FPM = $(CC) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) $(EXTRA_LDFLAGS_PROGRAM) $(LDFLAGS) $(NATIVE_RPATHS) $(PHP_GLOBAL_OBJS:.lo=.o) $(PHP_BINARY_OBJS:.lo=.o) $(PHP_FASTCGI_OBJS:.lo=.o) $(PHP_FPM_OBJS:.lo=.o) $(PHP_FRAMEWORKS) $(EXTRA_LIBS) $(FPM_EXTRA_LIBS) $(ZEND_EXTRA_LIBS) -o $(SAPI_FPM_PATH)
PHP_PHPDBG_CFLAGS = -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1
PHP_PHPDBG_FILES = phpdbg.c phpdbg_parser.c phpdbg_lexer.c phpdbg_prompt.c phpdbg_help.c phpdbg_break.c phpdbg_print.c phpdbg_bp.c phpdbg_opcode.c phpdbg_list.c phpdbg_utils.c phpdbg_info.c phpdbg_cmd.c phpdbg_set.c phpdbg_frame.c phpdbg_watch.c phpdbg_btree.c phpdbg_sigsafe.c phpdbg_wait.c phpdbg_io.c phpdbg_eol.c phpdbg_out.c
PHPDBG_EXTRA_LIBS =
PHP_PHPDBG_OBJS = sapi/phpdbg/phpdbg.lo sapi/phpdbg/phpdbg_parser.lo sapi/phpdbg/phpdbg_lexer.lo sapi/phpdbg/phpdbg_prompt.lo sapi/phpdbg/phpdbg_help.lo sapi/phpdbg/phpdbg_break.lo sapi/phpdbg/phpdbg_print.lo sapi/phpdbg/phpdbg_bp.lo sapi/phpdbg/phpdbg_opcode.lo sapi/phpdbg/phpdbg_list.lo sapi/phpdbg/phpdbg_utils.lo sapi/phpdbg/phpdbg_info.lo sapi/phpdbg/phpdbg_cmd.lo sapi/phpdbg/phpdbg_set.lo sapi/phpdbg/phpdbg_frame.lo sapi/phpdbg/phpdbg_watch.lo sapi/phpdbg/phpdbg_btree.lo sapi/phpdbg/phpdbg_sigsafe.lo sapi/phpdbg/phpdbg_wait.lo sapi/phpdbg/phpdbg_io.lo sapi/phpdbg/phpdbg_eol.lo sapi/phpdbg/phpdbg_out.lo
BUILD_BINARY = sapi/phpdbg/phpdbg
BUILD_SHARED = sapi/phpdbg/libphpdbg.la
BUILD_PHPDBG = $(LIBTOOL) --mode=link $(CC) -export-dynamic $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) $(EXTRA_LDFLAGS_PROGRAM) $(LDFLAGS) $(PHP_RPATHS) $(PHP_GLOBAL_OBJS) $(PHP_BINARY_OBJS) $(PHP_PHPDBG_OBJS) $(EXTRA_LIBS) $(PHPDBG_EXTRA_LIBS) $(ZEND_EXTRA_LIBS) -o $(BUILD_BINARY)
BUILD_PHPDBG_SHARED = $(LIBTOOL) --mode=link $(CC) -shared -Wl,-soname,libphpdbg.so -export-dynamic $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) $(EXTRA_LDFLAGS_PROGRAM) $(LDFLAGS) $(PHP_RPATHS) $(PHP_GLOBAL_OBJS) $(PHP_BINARY_OBJS) $(PHP_PHPDBG_OBJS) $(EXTRA_LIBS) $(PHPDBG_EXTRA_LIBS) $(ZEND_EXTRA_LIBS) \-DPHPDBG_SHARED -o $(BUILD_SHARED)
PHP_CGI_OBJS = sapi/cgi/cgi_main.lo
SAPI_CGI_PATH = sapi/cgi/php-cgi
BUILD_CGI = $(CC) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) $(EXTRA_LDFLAGS_PROGRAM) $(LDFLAGS) $(NATIVE_RPATHS) $(PHP_GLOBAL_OBJS:.lo=.o) $(PHP_BINARY_OBJS:.lo=.o) $(PHP_FASTCGI_OBJS:.lo=.o) $(PHP_CGI_OBJS:.lo=.o) $(PHP_FRAMEWORKS) $(EXTRA_LIBS) $(ZEND_EXTRA_LIBS) -o $(SAPI_CGI_PATH)
PROG_SENDMAIL = /usr/sbin/sendmail
SQLITE3_SHARED_LIBADD =
DOM_SHARED_LIBADD =
FILTER_SHARED_LIBADD =
JSON_SHARED_LIBADD =
shared_objects_opcache = ext/opcache/ZendAccelerator.lo ext/opcache/zend_accelerator_blacklist.lo ext/opcache/zend_accelerator_debug.lo ext/opcache/zend_accelerator_hash.lo ext/opcache/zend_accelerator_module.lo ext/opcache/zend_persist.lo ext/opcache/zend_persist_calc.lo ext/opcache/zend_file_cache.lo ext/opcache/zend_shared_alloc.lo ext/opcache/zend_accelerator_util_funcs.lo ext/opcache/shared_alloc_shm.lo ext/opcache/shared_alloc_mmap.lo ext/opcache/shared_alloc_posix.lo ext/opcache/Optimizer/zend_optimizer.lo ext/opcache/Optimizer/pass1_5.lo ext/opcache/Optimizer/pass2.lo ext/opcache/Optimizer/pass3.lo ext/opcache/Optimizer/optimize_func_calls.lo ext/opcache/Optimizer/block_pass.lo ext/opcache/Optimizer/optimize_temp_vars_5.lo ext/opcache/Optimizer/nop_removal.lo ext/opcache/Optimizer/compact_literals.lo ext/opcache/Optimizer/zend_cfg.lo ext/opcache/Optimizer/zend_dfg.lo ext/opcache/Optimizer/dfa_pass.lo ext/opcache/Optimizer/zend_ssa.lo ext/opcache/Optimizer/zend_inference.lo ext/opcache/Optimizer/zend_func_info.lo ext/opcache/Optimizer/zend_call_graph.lo ext/opcache/Optimizer/sccp.lo ext/opcache/Optimizer/scdf.lo ext/opcache/Optimizer/dce.lo ext/opcache/Optimizer/compact_vars.lo ext/opcache/Optimizer/zend_dump.lo
PDO_SQLITE_SHARED_LIBADD =
SESSION_SHARED_LIBADD =
SIMPLEXML_SHARED_LIBADD =
XML_SHARED_LIBADD =
XMLREADER_SHARED_LIBADD =
XMLWRITER_SHARED_LIBADD =
PHP_INSTALLED_SAPIS = cli fpm phpdbg cgi
PHP_EXECUTABLE = $(top_builddir)/$(SAPI_CLI_PATH)
PHP_FASTCGI_OBJS = main/fastcgi.lo
PHP_SAPI_OBJS = main/internal_functions.lo
PHP_BINARY_OBJS = main/internal_functions_cli.lo
PHP_GLOBAL_OBJS = ext/date/php_date.lo ext/date/lib/astro.lo ext/date/lib/dow.lo ext/date/lib/parse_date.lo ext/date/lib/parse_tz.lo ext/date/lib/timelib.lo ext/date/lib/tm2unixtime.lo ext/date/lib/unixtime2tm.lo ext/date/lib/parse_iso_intervals.lo ext/date/lib/interval.lo ext/libxml/libxml.lo ext/pcre/pcrelib/pcre_chartables.lo ext/pcre/pcrelib/pcre_ucd.lo ext/pcre/pcrelib/pcre_compile.lo ext/pcre/pcrelib/pcre_config.lo ext/pcre/pcrelib/pcre_exec.lo ext/pcre/pcrelib/pcre_fullinfo.lo ext/pcre/pcrelib/pcre_get.lo ext/pcre/pcrelib/pcre_globals.lo ext/pcre/pcrelib/pcre_maketables.lo ext/pcre/pcrelib/pcre_newline.lo ext/pcre/pcrelib/pcre_ord2utf8.lo ext/pcre/pcrelib/pcre_refcount.lo ext/pcre/pcrelib/pcre_study.lo ext/pcre/pcrelib/pcre_tables.lo ext/pcre/pcrelib/pcre_valid_utf8.lo ext/pcre/pcrelib/pcre_version.lo ext/pcre/pcrelib/pcre_xclass.lo ext/pcre/pcrelib/pcre_jit_compile.lo ext/pcre/php_pcre.lo ext/sqlite3/sqlite3.lo ext/sqlite3/libsqlite/sqlite3.lo ext/ctype/ctype.lo ext/dom/php_dom.lo ext/dom/attr.lo ext/dom/document.lo ext/dom/domerrorhandler.lo ext/dom/domstringlist.lo ext/dom/domexception.lo ext/dom/namelist.lo ext/dom/processinginstruction.lo ext/dom/cdatasection.lo ext/dom/documentfragment.lo ext/dom/domimplementation.lo ext/dom/element.lo ext/dom/node.lo ext/dom/string_extend.lo ext/dom/characterdata.lo ext/dom/documenttype.lo ext/dom/domimplementationlist.lo ext/dom/entity.lo ext/dom/nodelist.lo ext/dom/text.lo ext/dom/comment.lo ext/dom/domconfiguration.lo ext/dom/domimplementationsource.lo ext/dom/entityreference.lo ext/dom/notation.lo ext/dom/xpath.lo ext/dom/dom_iterators.lo ext/dom/typeinfo.lo ext/dom/domerror.lo ext/dom/domlocator.lo ext/dom/namednodemap.lo ext/dom/userdatahandler.lo ext/fileinfo/fileinfo.lo ext/fileinfo/libmagic/apprentice.lo ext/fileinfo/libmagic/apptype.lo ext/fileinfo/libmagic/ascmagic.lo ext/fileinfo/libmagic/cdf.lo ext/fileinfo/libmagic/cdf_time.lo ext/fileinfo/libmagic/compress.lo ext/fileinfo/libmagic/encoding.lo ext/fileinfo/libmagic/fsmagic.lo ext/fileinfo/libmagic/funcs.lo ext/fileinfo/libmagic/is_tar.lo ext/fileinfo/libmagic/magic.lo ext/fileinfo/libmagic/print.lo ext/fileinfo/libmagic/readcdf.lo ext/fileinfo/libmagic/softmagic.lo ext/fileinfo/libmagic/der.lo ext/filter/filter.lo ext/filter/sanitizing_filters.lo ext/filter/logical_filters.lo ext/filter/callback_filter.lo ext/hash/hash.lo ext/hash/hash_md.lo ext/hash/hash_sha.lo ext/hash/hash_ripemd.lo ext/hash/hash_haval.lo ext/hash/hash_tiger.lo ext/hash/hash_gost.lo ext/hash/hash_snefru.lo ext/hash/hash_whirlpool.lo ext/hash/hash_adler32.lo ext/hash/hash_crc32.lo ext/hash/hash_fnv.lo ext/hash/hash_joaat.lo ext/hash/sha3/generic64lc/KeccakP-1600-opt64.lo ext/hash/sha3/generic64lc/KeccakHash.lo ext/hash/sha3/generic64lc/KeccakSponge.lo ext/hash/hash_sha3.lo ext/json/json.lo ext/json/json_encoder.lo ext/json/json_parser.lo ext/json/json_scanner.lo ext/pdo/pdo.lo ext/pdo/pdo_dbh.lo ext/pdo/pdo_stmt.lo ext/pdo/pdo_sql_parser.lo ext/pdo/pdo_sqlstate.lo ext/pdo_sqlite/pdo_sqlite.lo ext/pdo_sqlite/sqlite_driver.lo ext/pdo_sqlite/sqlite_statement.lo ext/phar/util.lo ext/phar/tar.lo ext/phar/zip.lo ext/phar/stream.lo ext/phar/func_interceptors.lo ext/phar/dirstream.lo ext/phar/phar.lo ext/phar/phar_object.lo ext/phar/phar_path_check.lo ext/posix/posix.lo ext/reflection/php_reflection.lo ext/session/mod_user_class.lo ext/session/session.lo ext/session/mod_files.lo ext/session/mod_mm.lo ext/session/mod_user.lo ext/simplexml/simplexml.lo ext/simplexml/sxe.lo ext/spl/php_spl.lo ext/spl/spl_functions.lo ext/spl/spl_engine.lo ext/spl/spl_iterators.lo ext/spl/spl_array.lo ext/spl/spl_directory.lo ext/spl/spl_exceptions.lo ext/spl/spl_observer.lo ext/spl/spl_dllist.lo ext/spl/spl_heap.lo ext/spl/spl_fixedarray.lo ext/standard/crypt_freesec.lo ext/standard/crypt_blowfish.lo ext/standard/crypt_sha512.lo ext/standard/crypt_sha256.lo ext/standard/php_crypt_r.lo ext/standard/array.lo ext/standard/base64.lo ext/standard/basic_functions.lo ext/standard/browscap.lo ext/standard/crc32.lo ext/standard/crypt.lo ext/standard/cyr_convert.lo ext/standard/datetime.lo ext/standard/dir.lo ext/standard/dl.lo ext/standard/dns.lo ext/standard/exec.lo ext/standard/file.lo ext/standard/filestat.lo ext/standard/flock_compat.lo ext/standard/formatted_print.lo ext/standard/fsock.lo ext/standard/head.lo ext/standard/html.lo ext/standard/image.lo ext/standard/info.lo ext/standard/iptc.lo ext/standard/lcg.lo ext/standard/link.lo ext/standard/mail.lo ext/standard/math.lo ext/standard/md5.lo ext/standard/metaphone.lo ext/standard/microtime.lo ext/standard/pack.lo ext/standard/pageinfo.lo ext/standard/quot_print.lo ext/standard/rand.lo ext/standard/mt_rand.lo ext/standard/soundex.lo ext/standard/string.lo ext/standard/scanf.lo ext/standard/syslog.lo ext/standard/type.lo ext/standard/uniqid.lo ext/standard/url.lo ext/standard/var.lo ext/standard/versioning.lo ext/standard/assert.lo ext/standard/strnatcmp.lo ext/standard/levenshtein.lo ext/standard/incomplete_class.lo ext/standard/url_scanner_ex.lo ext/standard/ftp_fopen_wrapper.lo ext/standard/http_fopen_wrapper.lo ext/standard/php_fopen_wrapper.lo ext/standard/credits.lo ext/standard/css.lo ext/standard/var_unserializer.lo ext/standard/ftok.lo ext/standard/sha1.lo ext/standard/user_filters.lo ext/standard/uuencode.lo ext/standard/filters.lo ext/standard/proc_open.lo ext/standard/streamsfuncs.lo ext/standard/http.lo ext/standard/password.lo ext/standard/random.lo ext/tokenizer/tokenizer.lo ext/tokenizer/tokenizer_data.lo ext/xml/xml.lo ext/xml/compat.lo ext/xmlreader/php_xmlreader.lo ext/xmlwriter/php_xmlwriter.lo TSRM/TSRM.lo TSRM/tsrm_strtok_r.lo main/main.lo main/snprintf.lo main/spprintf.lo main/php_sprintf.lo main/fopen_wrappers.lo main/alloca.lo main/php_scandir.lo main/php_ini.lo main/SAPI.lo main/rfc1867.lo main/php_content_types.lo main/strlcpy.lo main/strlcat.lo main/explicit_bzero.lo main/mergesort.lo main/reentrancy.lo main/php_variables.lo main/php_ticks.lo main/network.lo main/php_open_temporary_file.lo main/output.lo main/getopt.lo main/streams/streams.lo main/streams/cast.lo main/streams/memory.lo main/streams/filter.lo main/streams/plain_wrapper.lo main/streams/userspace.lo main/streams/transports.lo main/streams/xp_socket.lo main/streams/mmap.lo main/streams/glob_wrapper.lo Zend/zend_language_parser.lo Zend/zend_language_scanner.lo Zend/zend_ini_parser.lo Zend/zend_ini_scanner.lo Zend/zend_alloc.lo Zend/zend_compile.lo Zend/zend_constants.lo Zend/zend_dtrace.lo Zend/zend_execute_API.lo Zend/zend_highlight.lo Zend/zend_llist.lo Zend/zend_vm_opcodes.lo Zend/zend_opcode.lo Zend/zend_operators.lo Zend/zend_ptr_stack.lo Zend/zend_stack.lo Zend/zend_variables.lo Zend/zend.lo Zend/zend_API.lo Zend/zend_extensions.lo Zend/zend_hash.lo Zend/zend_list.lo Zend/zend_builtin_functions.lo Zend/zend_sprintf.lo Zend/zend_ini.lo Zend/zend_sort.lo Zend/zend_multibyte.lo Zend/zend_ts_hash.lo Zend/zend_stream.lo Zend/zend_iterators.lo Zend/zend_interfaces.lo Zend/zend_exceptions.lo Zend/zend_strtod.lo Zend/zend_gc.lo Zend/zend_closures.lo Zend/zend_float.lo Zend/zend_string.lo Zend/zend_signal.lo Zend/zend_generators.lo Zend/zend_virtual_cwd.lo Zend/zend_ast.lo Zend/zend_objects.lo Zend/zend_object_handlers.lo Zend/zend_objects_API.lo Zend/zend_default_classes.lo Zend/zend_inheritance.lo Zend/zend_smart_str.lo Zend/zend_execute.lo
PHP_BINARIES = cli fpm phpdbg cgi
PHP_MODULES =
PHP_ZEND_EX = $(phplibdir)/opcache.la
EXT_LIBS =
abs_builddir = /Users/momo/helloworld/php-source-code-reading
abs_srcdir = /Users/momo/helloworld/php-source-code-reading
php_abs_top_builddir = /Users/momo/helloworld/php-source-code-reading
php_abs_top_srcdir = /Users/momo/helloworld/php-source-code-reading
bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
exec_prefix = ${prefix}
program_prefix =
program_suffix =
includedir = ${prefix}/include
libdir = ${exec_prefix}/lib/php
mandir = ${datarootdir}/man
phplibdir = /Users/momo/helloworld/php-source-code-reading/modules
phptempdir = /Users/momo/helloworld/php-source-code-reading/libs
prefix = /usr/local
localstatedir = ${prefix}/var
datadir = ${datarootdir}/php
datarootdir = /usr/local/php
sysconfdir = ${prefix}/etc
EXEEXT =
CC = cc
CFLAGS = $(CFLAGS_CLEAN) -prefer-non-pic -static
CFLAGS_CLEAN = -g -O2 -fvisibility=hidden -DZEND_SIGNALS $(PROF_FLAGS)
CPP = cc -E
CPPFLAGS = -no-cpp-precomp
CXX =
CXXFLAGS = -prefer-non-pic -static $(PROF_FLAGS)
CXXFLAGS_CLEAN =
DEBUG_CFLAGS =
EXTENSION_DIR = /usr/local/lib/php/extensions/no-debug-non-zts-20170718
EXTRA_LDFLAGS = -L/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/usr/lib
EXTRA_LDFLAGS_PROGRAM = -L/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/usr/lib
EXTRA_LIBS = -lresolv -lm -lxml2 -lz -licucore -lm -lxml2 -lz -licucore -lm -lxml2 -lz -licucore -lm -lxml2 -lz -licucore -lm -lxml2 -lz -licucore -lm -lxml2 -lz -licucore -lm
ZEND_EXTRA_LIBS =
INCLUDES = -I/Users/momo/helloworld/php-source-code-reading/ext/date/lib -I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/usr/include/libxml2 -I/Users/momo/helloworld/php-source-code-reading/ext/sqlite3/libsqlite -I$(top_builddir)/TSRM -I$(top_builddir)/Zend
EXTRA_INCLUDES =
INCLUDE_PATH = .:/usr/local/lib/php
INSTALL_IT =
LFLAGS =
LIBTOOL = $(SHELL) $(top_builddir)/libtool --silent --preserve-dup-deps
LN_S = ln -s
NATIVE_RPATHS = -Wl,-rpath,/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/usr/lib
PEAR_INSTALLDIR = ${exec_prefix}/lib/php
PHP_BUILD_DATE = 2019-02-15
PHP_LDFLAGS = -L/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/usr/lib
PHP_LIBS =
OVERALL_TARGET =
PHP_RPATHS = -R /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/usr/lib
PHP_SAPI = none
PHP_VERSION = 7.2.15-dev
PHP_VERSION_ID = 70215
SHELL = /bin/sh
SHARED_LIBTOOL = $(LIBTOOL)
WARNING_LEVEL =
PHP_FRAMEWORKS =
PHP_FRAMEWORKPATH =
INSTALL_HEADERS = sapi/cli/cli.h ext/date/php_date.h ext/date/lib/timelib.h ext/date/lib/timelib_config.h ext/libxml/php_libxml.h ext/pcre/php_pcre.h ext/pcre/pcrelib/ ext/sqlite3/libsqlite/sqlite3.h ext/dom/xml_common.h ext/filter/php_filter.h ext/hash/php_hash.h ext/hash/php_hash_md.h ext/hash/php_hash_sha.h ext/hash/php_hash_ripemd.h ext/hash/php_hash_haval.h ext/hash/php_hash_tiger.h ext/hash/php_hash_gost.h ext/hash/php_hash_snefru.h ext/hash/php_hash_whirlpool.h ext/hash/php_hash_adler32.h ext/hash/php_hash_crc32.h ext/hash/php_hash_fnv.h ext/hash/php_hash_joaat.h ext/hash/php_hash_sha3.h ext/json/php_json.h ext/json/php_json_parser.h ext/json/php_json_scanner.h ext/pdo/php_pdo.h ext/pdo/php_pdo_driver.h ext/pdo/php_pdo_error.h ext/phar/php_phar.h ext/session/php_session.h ext/session/mod_files.h ext/session/mod_user.h ext/simplexml/php_simplexml.h ext/simplexml/php_simplexml_exports.h ext/spl/php_spl.h ext/spl/spl_array.h ext/spl/spl_directory.h ext/spl/spl_engine.h ext/spl/spl_exceptions.h ext/spl/spl_functions.h ext/spl/spl_iterators.h ext/spl/spl_observer.h ext/spl/spl_dllist.h ext/spl/spl_heap.h ext/spl/spl_fixedarray.h ext/standard/ ext/xml/ Zend/ TSRM/ include/ main/ main/streams/
ZEND_EXT_TYPE = zend_extension
all_targets = $(OVERALL_TARGET) $(PHP_MODULES) $(PHP_ZEND_EX) $(PHP_BINARIES) pharcmd
install_targets = install-modules install-binaries install-build install-headers install-programs install-pear install-pharcmd
install_binary_targets = install-cli install-fpm install-phpdbg install-cgi
mkinstalldirs = $(top_srcdir)/build/shtool mkdir -p
INSTALL = $(top_srcdir)/build/shtool install -c
INSTALL_DATA = $(INSTALL) -m 644

DEFS = -DPHP_ATOM_INC -I$(top_builddir)/include -I$(top_builddir)/main -I$(top_srcdir)
COMMON_FLAGS = $(DEFS) $(INCLUDES) $(EXTRA_INCLUDES) $(CPPFLAGS) $(PHP_FRAMEWORKPATH)

all: $(all_targets)
	@echo
	@echo "Build complete."
	@echo "Don't forget to run 'make test'."
	@echo

build-modules: $(PHP_MODULES) $(PHP_ZEND_EX)

build-binaries: $(PHP_BINARIES)

libphp$(PHP_MAJOR_VERSION).la: $(PHP_GLOBAL_OBJS) $(PHP_SAPI_OBJS)
	$(LIBTOOL) --mode=link $(CC) $(CFLAGS) $(EXTRA_CFLAGS) -rpath $(phptempdir) $(EXTRA_LDFLAGS) $(LDFLAGS) $(PHP_RPATHS) $(PHP_GLOBAL_OBJS) $(PHP_SAPI_OBJS) $(EXTRA_LIBS) $(ZEND_EXTRA_LIBS) -o $@
	-@$(LIBTOOL) --silent --mode=install cp $@ $(phptempdir)/$@ >/dev/null 2>&1

libs/libphp$(PHP_MAJOR_VERSION).bundle: $(PHP_GLOBAL_OBJS) $(PHP_SAPI_OBJS)
	$(CC) $(MH_BUNDLE_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) $(LDFLAGS) $(EXTRA_LDFLAGS) $(PHP_GLOBAL_OBJS:.lo=.o) $(PHP_SAPI_OBJS:.lo=.o) $(PHP_FRAMEWORKS) $(EXTRA_LIBS) $(ZEND_EXTRA_LIBS) -o $@ && cp $@ libs/libphp$(PHP_MAJOR_VERSION).so

install: $(all_targets) $(install_targets)

install-sapi: $(OVERALL_TARGET)
	@echo "Installing PHP SAPI module:       $(PHP_SAPI)"
	-@$(mkinstalldirs) $(INSTALL_ROOT)$(bindir)
	-@if test ! -r $(phptempdir)/libphp$(PHP_MAJOR_VERSION).$(SHLIB_DL_SUFFIX_NAME); then \
		for i in 0.0.0 0.0 0; do \
			if test -r $(phptempdir)/libphp$(PHP_MAJOR_VERSION).$(SHLIB_DL_SUFFIX_NAME).$$i; then \
				$(LN_S) $(phptempdir)/libphp$(PHP_MAJOR_VERSION).$(SHLIB_DL_SUFFIX_NAME).$$i $(phptempdir)/libphp$(PHP_MAJOR_VERSION).$(SHLIB_DL_SUFFIX_NAME); \
				break; \
			fi; \
		done; \
	fi
	@$(INSTALL_IT)

install-binaries: build-binaries $(install_binary_targets)

install-modules: build-modules
	@test -d modules && \
	$(mkinstalldirs) $(INSTALL_ROOT)$(EXTENSION_DIR)
	@echo "Installing shared extensions:     $(INSTALL_ROOT)$(EXTENSION_DIR)/"
	@rm -f modules/*.la >/dev/null 2>&1
	@$(INSTALL) modules/* $(INSTALL_ROOT)$(EXTENSION_DIR)

install-headers:
	-@if test "$(INSTALL_HEADERS)"; then \
		for i in `echo $(INSTALL_HEADERS)`; do \
			i=`$(top_srcdir)/build/shtool path -d $$i`; \
			paths="$$paths $(INSTALL_ROOT)$(phpincludedir)/$$i"; \
		done; \
		$(mkinstalldirs) $$paths && \
		echo "Installing header files:          $(INSTALL_ROOT)$(phpincludedir)/" && \
		for i in `echo $(INSTALL_HEADERS)`; do \
			if test "$(PHP_PECL_EXTENSION)"; then \
				src=`echo $$i | $(SED) -e "s#ext/$(PHP_PECL_EXTENSION)/##g"`; \
			else \
				src=$$i; \
			fi; \
			if test -f "$(top_srcdir)/$$src"; then \
				$(INSTALL_DATA) $(top_srcdir)/$$src $(INSTALL_ROOT)$(phpincludedir)/$$i; \
			elif test -f "$(top_builddir)/$$src"; then \
				$(INSTALL_DATA) $(top_builddir)/$$src $(INSTALL_ROOT)$(phpincludedir)/$$i; \
			else \
				(cd $(top_srcdir)/$$src && $(INSTALL_DATA) *.h $(INSTALL_ROOT)$(phpincludedir)/$$i; \
				cd $(top_builddir)/$$src && $(INSTALL_DATA) *.h $(INSTALL_ROOT)$(phpincludedir)/$$i) 2>/dev/null || true; \
			fi \
		done; \
	fi

PHP_TEST_SETTINGS = -d 'open_basedir=' -d 'output_buffering=0' -d 'memory_limit=-1'
PHP_TEST_SHARED_EXTENSIONS =  ` \
	if test "x$(PHP_MODULES)" != "x"; then \
		for i in $(PHP_MODULES)""; do \
			. $$i; $(top_srcdir)/build/shtool echo -n -- " -d extension=$$dlname"; \
		done; \
	fi; \
	if test "x$(PHP_ZEND_EX)" != "x"; then \
		for i in $(PHP_ZEND_EX)""; do \
			. $$i; $(top_srcdir)/build/shtool echo -n -- " -d $(ZEND_EXT_TYPE)=$(top_builddir)/modules/$$dlname"; \
		done; \
	fi`
PHP_DEPRECATED_DIRECTIVES_REGEX = '^(magic_quotes_(gpc|runtime|sybase)?|(zend_)?extension(_debug)?(_ts)?)[\t\ ]*='

test: all
	@if test ! -z "$(PHP_EXECUTABLE)" && test -x "$(PHP_EXECUTABLE)"; then \
		INI_FILE=`$(PHP_EXECUTABLE) -d 'display_errors=stderr' -r 'echo php_ini_loaded_file();' 2> /dev/null`; \
		if test "$$INI_FILE"; then \
			$(EGREP) -h -v $(PHP_DEPRECATED_DIRECTIVES_REGEX) "$$INI_FILE" > $(top_builddir)/tmp-php.ini; \
		else \
			echo > $(top_builddir)/tmp-php.ini; \
		fi; \
		INI_SCANNED_PATH=`$(PHP_EXECUTABLE) -d 'display_errors=stderr' -r '$$a = explode(",\n", trim(php_ini_scanned_files())); echo $$a[0];' 2> /dev/null`; \
		if test "$$INI_SCANNED_PATH"; then \
			INI_SCANNED_PATH=`$(top_srcdir)/build/shtool path -d $$INI_SCANNED_PATH`; \
			$(EGREP) -h -v $(PHP_DEPRECATED_DIRECTIVES_REGEX) "$$INI_SCANNED_PATH"/*.ini >> $(top_builddir)/tmp-php.ini; \
		fi; \
		TEST_PHP_EXECUTABLE=$(PHP_EXECUTABLE) \
		TEST_PHP_SRCDIR=$(top_srcdir) \
		CC="$(CC)" \
			$(PHP_EXECUTABLE) -n -c $(top_builddir)/tmp-php.ini $(PHP_TEST_SETTINGS) $(top_srcdir)/run-tests.php -n -c $(top_builddir)/tmp-php.ini -d extension_dir=$(top_builddir)/modules/ $(PHP_TEST_SHARED_EXTENSIONS) $(TESTS); \
		TEST_RESULT_EXIT_CODE=$$?; \
		rm $(top_builddir)/tmp-php.ini; \
		exit $$TEST_RESULT_EXIT_CODE; \
	else \
		echo "ERROR: Cannot run tests without CLI sapi."; \
	fi

clean:
	find . -name \*.gcno -o -name \*.gcda | xargs rm -f
	find . -name \*.lo -o -name \*.o | xargs rm -f
	find . -name \*.la -o -name \*.a | xargs rm -f
	find . -name \*.so | xargs rm -f
	find . -name .libs -a -type d|xargs rm -rf
	rm -f libphp$(PHP_MAJOR_VERSION).la $(SAPI_CLI_PATH) $(SAPI_CGI_PATH) $(SAPI_MILTER_PATH) $(SAPI_LITESPEED_PATH) $(SAPI_FPM_PATH) $(OVERALL_TARGET) modules/* libs/*

distclean: clean
	rm -f Makefile config.cache config.log config.status Makefile.objects Makefile.fragments libtool main/php_config.h main/internal_functions_cli.c main/internal_functions.c stamp-h buildmk.stamp Zend/zend_dtrace_gen.h Zend/zend_dtrace_gen.h.bak Zend/zend_config.h TSRM/tsrm_config.h
	rm -f php7.spec main/build-defs.h scripts/phpize
	rm -f ext/date/lib/timelib_config.h ext/mbstring/oniguruma/config.h ext/mbstring/libmbfl/config.h ext/oci8/oci8_dtrace_gen.h ext/oci8/oci8_dtrace_gen.h.bak
	rm -f scripts/man1/phpize.1 scripts/php-config scripts/man1/php-config.1 sapi/cli/php.1 sapi/cgi/php-cgi.1 sapi/phpdbg/phpdbg.1 ext/phar/phar.1 ext/phar/phar.phar.1
	rm -f sapi/fpm/php-fpm.conf sapi/fpm/init.d.php-fpm sapi/fpm/php-fpm.service sapi/fpm/php-fpm.8 sapi/fpm/status.html
	rm -f ext/iconv/php_have_bsd_iconv.h ext/iconv/php_have_glibc_iconv.h ext/iconv/php_have_ibm_iconv.h ext/iconv/php_have_iconv.h ext/iconv/php_have_libiconv.h ext/iconv/php_iconv_aliased_libiconv.h ext/iconv/php_iconv_supports_errno.h ext/iconv/php_php_iconv_h_path.h ext/iconv/php_php_iconv_impl.h
	rm -f ext/phar/phar.phar ext/phar/phar.php
	if test "$(srcdir)" != "$(builddir)"; then \
	  rm -f ext/phar/phar/phar.inc; \
	fi
	$(EGREP) define'.*include/php' $(top_srcdir)/configure | $(SED) 's/.*>//'|xargs rm -f

prof-gen:
	CCACHE_DISABLE=1 $(MAKE) PROF_FLAGS=-fprofile-generate all

prof-clean:
	find . -name \*.lo -o -name \*.o | xargs rm -f
	find . -name \*.la -o -name \*.a | xargs rm -f
	find . -name \*.so | xargs rm -f
	rm -f libphp$(PHP_MAJOR_VERSION).la $(SAPI_CLI_PATH) $(SAPI_CGI_PATH) $(SAPI_MILTER_PATH) $(SAPI_LITESPEED_PATH) $(SAPI_FPM_PATH) $(OVERALL_TARGET) modules/* libs/*

prof-use:
	CCACHE_DISABLE=1 $(MAKE) PROF_FLAGS=-fprofile-use all


.PHONY: all clean install distclean test prof-gen prof-clean prof-use
.NOEXPORT:
cli: $(SAPI_CLI_PATH)

$(SAPI_CLI_PATH): $(PHP_GLOBAL_OBJS) $(PHP_BINARY_OBJS) $(PHP_CLI_OBJS)
	$(BUILD_CLI)

install-cli: $(SAPI_CLI_PATH)
	@echo "Installing PHP CLI binary:        $(INSTALL_ROOT)$(bindir)/"
	@$(mkinstalldirs) $(INSTALL_ROOT)$(bindir)
	@$(INSTALL) -m 0755 $(SAPI_CLI_PATH) $(INSTALL_ROOT)$(bindir)/$(program_prefix)php$(program_suffix)$(EXEEXT)
	@echo "Installing PHP CLI man page:      $(INSTALL_ROOT)$(mandir)/man1/"
	@$(mkinstalldirs) $(INSTALL_ROOT)$(mandir)/man1
	@$(INSTALL_DATA) sapi/cli/php.1 $(INSTALL_ROOT)$(mandir)/man1/$(program_prefix)php$(program_suffix).1
fpm: $(SAPI_FPM_PATH)

$(SAPI_FPM_PATH): $(PHP_GLOBAL_OBJS) $(PHP_BINARY_OBJS) $(PHP_FASTCGI_OBJS) $(PHP_FPM_OBJS)
	$(BUILD_FPM)

install-fpm: $(SAPI_FPM_PATH)
	@echo "Installing PHP FPM binary:        $(INSTALL_ROOT)$(sbindir)/"
	@$(mkinstalldirs) $(INSTALL_ROOT)$(sbindir)
	@$(mkinstalldirs) $(INSTALL_ROOT)$(localstatedir)/log
	@$(mkinstalldirs) $(INSTALL_ROOT)$(localstatedir)/run
	@$(INSTALL) -m 0755 $(SAPI_FPM_PATH) $(INSTALL_ROOT)$(sbindir)/$(program_prefix)php-fpm$(program_suffix)$(EXEEXT)

	@if test -f "$(INSTALL_ROOT)$(sysconfdir)/php-fpm.conf"; then \
		echo "Installing PHP FPM defconfig:     skipping"; \
	else \
		echo "Installing PHP FPM defconfig:     $(INSTALL_ROOT)$(sysconfdir)/" && \
		$(mkinstalldirs) $(INSTALL_ROOT)$(sysconfdir)/php-fpm.d; \
		$(INSTALL_DATA) sapi/fpm/php-fpm.conf $(INSTALL_ROOT)$(sysconfdir)/php-fpm.conf.default; \
		$(INSTALL_DATA) sapi/fpm/www.conf $(INSTALL_ROOT)$(sysconfdir)/php-fpm.d/www.conf.default; \
	fi

	@echo "Installing PHP FPM man page:      $(INSTALL_ROOT)$(mandir)/man8/"
	@$(mkinstalldirs) $(INSTALL_ROOT)$(mandir)/man8
	@$(INSTALL_DATA) sapi/fpm/php-fpm.8 $(INSTALL_ROOT)$(mandir)/man8/php-fpm$(program_suffix).8

	@echo "Installing PHP FPM status page:   $(INSTALL_ROOT)$(datadir)/fpm/"
	@$(mkinstalldirs) $(INSTALL_ROOT)$(datadir)/fpm
	@$(INSTALL_DATA) sapi/fpm/status.html $(INSTALL_ROOT)$(datadir)/fpm/status.html
phpdbg: $(BUILD_BINARY)

phpdbg-shared: $(BUILD_SHARED)

$(BUILD_SHARED): $(PHP_GLOBAL_OBJS) $(PHP_BINARY_OBJS) $(PHP_PHPDBG_OBJS)
	$(BUILD_PHPDBG_SHARED)

$(BUILD_BINARY): $(PHP_GLOBAL_OBJS) $(PHP_BINARY_OBJS) $(PHP_PHPDBG_OBJS)
	$(BUILD_PHPDBG)

%.c: %.y
%.c: %.l

/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_lexer.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_parser.h

/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_lexer.c: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_lexer.l
	@(cd $(top_srcdir); $(RE2C) $(RE2C_FLAGS) --no-generation-date -cbdFo sapi/phpdbg/phpdbg_lexer.c sapi/phpdbg/phpdbg_lexer.l)

/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_parser.h: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_parser.c
/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_parser.c: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_parser.y
	@$(YACC) -p phpdbg_ -v -d /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_parser.y -o $@

install-phpdbg: $(BUILD_BINARY)
	@echo "Installing phpdbg binary:         $(INSTALL_ROOT)$(bindir)/"
	@$(mkinstalldirs) $(INSTALL_ROOT)$(bindir)
	@$(mkinstalldirs) $(INSTALL_ROOT)$(localstatedir)/log
	@$(mkinstalldirs) $(INSTALL_ROOT)$(localstatedir)/run
	@$(INSTALL) -m 0755 $(BUILD_BINARY) $(INSTALL_ROOT)$(bindir)/$(program_prefix)phpdbg$(program_suffix)$(EXEEXT)
	@echo "Installing phpdbg man page:       $(INSTALL_ROOT)$(mandir)/man1/"
	@$(mkinstalldirs) $(INSTALL_ROOT)$(mandir)/man1
	@$(INSTALL_DATA) sapi/phpdbg/phpdbg.1 $(INSTALL_ROOT)$(mandir)/man1/$(program_prefix)phpdbg$(program_suffix).1

clean-phpdbg:
	@echo "Cleaning phpdbg object files ..."
	find sapi/phpdbg/ -name *.lo -o -name *.o | xargs rm -f

test-phpdbg:
	@echo "Running phpdbg tests ..."
	@$(top_builddir)/sapi/cli/php sapi/phpdbg/tests/run-tests.php --phpdbg sapi/phpdbg/phpdbg

.PHONY: clean-phpdbg test-phpdbg
cgi: $(SAPI_CGI_PATH)

$(SAPI_CGI_PATH): $(PHP_GLOBAL_OBJS) $(PHP_BINARY_OBJS) $(PHP_FASTCGI_OBJS) $(PHP_CGI_OBJS)
	$(BUILD_CGI)

install-cgi: $(SAPI_CGI_PATH)
	@echo "Installing PHP CGI binary:        $(INSTALL_ROOT)$(bindir)/"
	@$(mkinstalldirs) $(INSTALL_ROOT)$(bindir)
	@$(INSTALL) -m 0755 $(SAPI_CGI_PATH) $(INSTALL_ROOT)$(bindir)/$(program_prefix)php-cgi$(program_suffix)$(EXEEXT)
	@echo "Installing PHP CGI man page:      $(INSTALL_ROOT)$(mandir)/man1/"
	@$(mkinstalldirs) $(INSTALL_ROOT)$(mandir)/man1
	@$(INSTALL_DATA) sapi/cgi/php-cgi.1 $(INSTALL_ROOT)$(mandir)/man1/$(program_prefix)php-cgi$(program_suffix).1
ext/fileinfo/libmagic/apprentice.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/data_file.c
/Users/momo/helloworld/php-source-code-reading/ext/json/json_scanner.c: /Users/momo/helloworld/php-source-code-reading/ext/json/json_scanner.re
	$(RE2C) -t /Users/momo/helloworld/php-source-code-reading/ext/json/php_json_scanner_defs.h --no-generation-date -bci -o $@ /Users/momo/helloworld/php-source-code-reading/ext/json/json_scanner.re

/Users/momo/helloworld/php-source-code-reading/ext/json/json_parser.tab.c: /Users/momo/helloworld/php-source-code-reading/ext/json/json_parser.y
	$(YACC) --defines -l /Users/momo/helloworld/php-source-code-reading/ext/json/json_parser.y -o $@
phpincludedir=$(prefix)/include/php

PDO_HEADER_FILES= \
	php_pdo.h \
	php_pdo_driver.h \
	php_pdo_error.h


/Users/momo/helloworld/php-source-code-reading/ext/pdo/pdo_sql_parser.c: /Users/momo/helloworld/php-source-code-reading/ext/pdo/pdo_sql_parser.re
	@(cd $(top_srcdir); \
	if test -f ./pdo_sql_parser.re; then \
		$(RE2C) --no-generation-date -o pdo_sql_parser.c pdo_sql_parser.re; \
	else \
		$(RE2C) --no-generation-date -o ext/pdo/pdo_sql_parser.c ext/pdo/pdo_sql_parser.re; \
	fi)

install-pdo-headers:
	@echo "Installing PDO headers:           $(INSTALL_ROOT)$(phpincludedir)/ext/pdo/"
	@$(mkinstalldirs) $(INSTALL_ROOT)$(phpincludedir)/ext/pdo
	@for f in $(PDO_HEADER_FILES); do \
		if test -f "$(top_srcdir)/$$f"; then \
			$(INSTALL_DATA) $(top_srcdir)/$$f $(INSTALL_ROOT)$(phpincludedir)/ext/pdo; \
		elif test -f "$(top_builddir)/$$f"; then \
			$(INSTALL_DATA) $(top_builddir)/$$f $(INSTALL_ROOT)$(phpincludedir)/ext/pdo; \
		elif test -f "$(top_srcdir)/ext/pdo/$$f"; then \
			$(INSTALL_DATA) $(top_srcdir)/ext/pdo/$$f $(INSTALL_ROOT)$(phpincludedir)/ext/pdo; \
		elif test -f "$(top_builddir)/ext/pdo/$$f"; then \
			$(INSTALL_DATA) $(top_builddir)/ext/pdo/$$f $(INSTALL_ROOT)$(phpincludedir)/ext/pdo; \
		else \
			echo "hmmm"; \
		fi \
	done;

# mini hack
install: $(all_targets) $(install_targets) install-pdo-headers
/Users/momo/helloworld/php-source-code-reading/ext/phar/phar_path_check.c: /Users/momo/helloworld/php-source-code-reading/ext/phar/phar_path_check.re
	@(cd $(top_srcdir); \
	if test -f ./php_phar.h; then \
		$(RE2C) --no-generation-date -b -o phar_path_check.c phar_path_check.re; \
	else \
		$(RE2C) --no-generation-date -b -o ext/phar/phar_path_check.c ext/phar/phar_path_check.re; \
	fi)

pharcmd: ext/phar/phar.php ext/phar/phar.phar

PHP_PHARCMD_SETTINGS = -n -d 'open_basedir=' -d 'output_buffering=0' -d 'memory_limit=-1' -d phar.readonly=0 -d 'safe_mode=0'
PHP_PHARCMD_EXECUTABLE = ` \
	if test -x "$(top_builddir)/$(SAPI_CLI_PATH)"; then \
		$(top_srcdir)/build/shtool echo -n -- "$(top_builddir)/$(SAPI_CLI_PATH) -n"; \
		if test "x$(PHP_MODULES)" != "x"; then \
		$(top_srcdir)/build/shtool echo -n -- " -d extension_dir=$(top_builddir)/modules"; \
		for i in bz2 zlib phar; do \
			if test -f "$(top_builddir)/modules/$$i.la"; then \
				. $(top_builddir)/modules/$$i.la; $(top_srcdir)/build/shtool echo -n -- " -d extension=$$dlname"; \
			fi; \
		done; \
		fi; \
	else \
		$(top_srcdir)/build/shtool echo -n -- "$(PHP_EXECUTABLE)"; \
	fi;`
PHP_PHARCMD_BANG = `$(top_srcdir)/build/shtool echo -n -- "$(INSTALL_ROOT)$(bindir)/$(program_prefix)php$(program_suffix)$(EXEEXT)";`

ext/phar/phar/phar.inc: /Users/momo/helloworld/php-source-code-reading/ext/phar/phar/phar.inc
	-@test -d ext/phar/phar || mkdir ext/phar/phar
	-@test -f ext/phar/phar/phar.inc || cp /Users/momo/helloworld/php-source-code-reading/ext/phar/phar/phar.inc ext/phar/phar/phar.inc

ext/phar/phar.php: /Users/momo/helloworld/php-source-code-reading/ext/phar/build_precommand.php /Users/momo/helloworld/php-source-code-reading/ext/phar/phar/*.inc /Users/momo/helloworld/php-source-code-reading/ext/phar/phar/*.php $(SAPI_CLI_PATH)
	-@echo "Generating phar.php"
	@$(PHP_PHARCMD_EXECUTABLE) $(PHP_PHARCMD_SETTINGS) /Users/momo/helloworld/php-source-code-reading/ext/phar/build_precommand.php > ext/phar/phar.php

ext/phar/phar.phar: ext/phar/phar.php ext/phar/phar/phar.inc /Users/momo/helloworld/php-source-code-reading/ext/phar/phar/*.inc /Users/momo/helloworld/php-source-code-reading/ext/phar/phar/*.php $(SAPI_CLI_PATH)
	-@echo "Generating phar.phar"
	-@rm -f ext/phar/phar.phar
	-@rm -f /Users/momo/helloworld/php-source-code-reading/ext/phar/phar.phar
	@$(PHP_PHARCMD_EXECUTABLE) $(PHP_PHARCMD_SETTINGS) ext/phar/phar.php pack -f ext/phar/phar.phar -a pharcommand -c auto -x \\.svn -p 0 -s /Users/momo/helloworld/php-source-code-reading/ext/phar/phar/phar.php -h sha1 -b "$(PHP_PHARCMD_BANG)"  /Users/momo/helloworld/php-source-code-reading/ext/phar/phar/
	-@chmod +x ext/phar/phar.phar

install-pharcmd: pharcmd
	-@$(mkinstalldirs) $(INSTALL_ROOT)$(bindir)
	$(INSTALL) ext/phar/phar.phar $(INSTALL_ROOT)$(bindir)
	-@rm -f $(INSTALL_ROOT)$(bindir)/phar
	$(LN_S) -f phar.phar $(INSTALL_ROOT)$(bindir)/phar
	@$(mkinstalldirs) $(INSTALL_ROOT)$(mandir)/man1
	@$(INSTALL_DATA) ext/phar/phar.1 $(INSTALL_ROOT)$(mandir)/man1/phar.1
	@$(INSTALL_DATA) ext/phar/phar.phar.1 $(INSTALL_ROOT)$(mandir)/man1/phar.phar.1
/Users/momo/helloworld/php-source-code-reading/ext/standard/var_unserializer.c: /Users/momo/helloworld/php-source-code-reading/ext/standard/var_unserializer.re
	@(cd $(top_srcdir); $(RE2C) --no-generation-date -b -o ext/standard/var_unserializer.c ext/standard/var_unserializer.re)

/Users/momo/helloworld/php-source-code-reading/ext/standard/url_scanner_ex.c: /Users/momo/helloworld/php-source-code-reading/ext/standard/url_scanner_ex.re
	@(cd $(top_srcdir); $(RE2C) --no-generation-date -b -o ext/standard/url_scanner_ex.c	ext/standard/url_scanner_ex.re)

ext/standard/info.lo: ext/standard/../../main/build-defs.h

ext/standard/basic_functions.lo: $(top_srcdir)/Zend/zend_language_parser.h
$(top_srcdir)/Zend/zend_language_parser.c:
$(top_srcdir)/Zend/zend_language_scanner.c:
$(top_srcdir)/ext/tokenizer/tokenizer_data.c: $(top_srcdir)/Zend/zend_language_parser.h
ext/tokenizer/tokenizer.lo: $(top_srcdir)/Zend/zend_language_parser.c $(top_srcdir)/Zend/zend_language_scanner.c
# -*- makefile -*-

peardir=$(PEAR_INSTALLDIR)

# Skip all php.ini files altogether
PEAR_INSTALL_FLAGS = -n -dshort_open_tag=0 -dopen_basedir= -derror_reporting=1803 -dmemory_limit=-1 -ddetect_unicode=0

WGET = `which wget 2>/dev/null`
FETCH = `which fetch 2>/dev/null`
PEAR_PREFIX = -dp a${program_prefix}
PEAR_SUFFIX = -ds a$(program_suffix)
PEAR_INSTALLER_URL = https://pear.php.net/install-pear-nozlib.phar

install-pear-installer: $(SAPI_CLI_PATH)
	@$(top_builddir)/sapi/cli/php $(PEAR_INSTALL_FLAGS) pear/install-pear-nozlib.phar -d "$(peardir)" -b "$(bindir)" ${PEAR_PREFIX} ${PEAR_SUFFIX}

install-pear:
	@echo "Installing PEAR environment:      $(INSTALL_ROOT)$(peardir)/"
	@if test ! -f pear/install-pear-nozlib.phar; then \
		if test -f /Users/momo/helloworld/php-source-code-reading/pear/install-pear-nozlib.phar; then \
			cp /Users/momo/helloworld/php-source-code-reading/pear/install-pear-nozlib.phar pear/install-pear-nozlib.phar; \
		else \
			if test ! -z "$(WGET)" && test -x "$(WGET)"; then \
				"$(WGET)" "${PEAR_INSTALLER_URL}" -nd -P pear/; \
			elif test ! -z "$(FETCH)" && test -x "$(FETCH)"; then \
				"$(FETCH)" -o pear/ "${PEAR_INSTALLER_URL}"; \
			else \
				$(top_builddir)/sapi/cli/php -n /Users/momo/helloworld/php-source-code-reading/pear/fetch.php "${PEAR_INSTALLER_URL}" pear/install-pear-nozlib.phar; \
			fi \
		fi \
	fi
	@if test -f pear/install-pear-nozlib.phar && $(mkinstalldirs) $(INSTALL_ROOT)$(peardir); then \
		$(MAKE) -s install-pear-installer; \
	else \
		cat /Users/momo/helloworld/php-source-code-reading/pear/install-pear.txt; \
	fi
#
# Build environment install
#

phpincludedir = $(includedir)/php
phpbuilddir = $(libdir)/build

BUILD_FILES = \
	scripts/phpize.m4 \
	build/mkdep.awk \
	build/scan_makefile_in.awk \
	build/libtool.m4 \
	build/ax_check_compile_flag.m4 \
	Makefile.global \
	acinclude.m4 \
	ltmain.sh \
	run-tests.php

BUILD_FILES_EXEC = \
	build/shtool \
	config.guess \
	config.sub

bin_SCRIPTS = phpize php-config
man_PAGES = phpize php-config

install-build:
	@echo "Installing build environment:     $(INSTALL_ROOT)$(phpbuilddir)/"
	@$(mkinstalldirs) $(INSTALL_ROOT)$(phpbuilddir) $(INSTALL_ROOT)$(bindir) && \
	(cd $(top_srcdir) && \
	$(INSTALL) $(BUILD_FILES_EXEC) $(INSTALL_ROOT)$(phpbuilddir) && \
	$(INSTALL_DATA) $(BUILD_FILES) $(INSTALL_ROOT)$(phpbuilddir))

install-programs: scripts/phpize scripts/php-config
	@echo "Installing helper programs:       $(INSTALL_ROOT)$(bindir)/"
	@$(mkinstalldirs) $(INSTALL_ROOT)$(bindir)
	@for prog in $(bin_SCRIPTS); do \
		echo "  program: $(program_prefix)$${prog}$(program_suffix)"; \
		$(INSTALL) -m 755 scripts/$${prog} $(INSTALL_ROOT)$(bindir)/$(program_prefix)$${prog}$(program_suffix); \
	done
	@echo "Installing man pages:             $(INSTALL_ROOT)$(mandir)/man1/"
	@$(mkinstalldirs) $(INSTALL_ROOT)$(mandir)/man1
	@for page in $(man_PAGES); do \
		echo "  page: $(program_prefix)$${page}$(program_suffix).1"; \
		$(INSTALL_DATA) scripts/man1/$${page}.1 $(INSTALL_ROOT)$(mandir)/man1/$(program_prefix)$${page}$(program_suffix).1; \
	done

scripts/phpize: /Users/momo/helloworld/php-source-code-reading/scripts/phpize.in $(top_builddir)/config.status
	(CONFIG_FILES=$@ CONFIG_HEADERS= $(top_builddir)/config.status)

scripts/php-config: /Users/momo/helloworld/php-source-code-reading/scripts/php-config.in $(top_builddir)/config.status
	(CONFIG_FILES=$@ CONFIG_HEADERS= $(top_builddir)/config.status)
#
# Zend
#

Zend/zend_language_scanner.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_language_parser.h
Zend/zend_ini_scanner.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_ini_parser.h

/Users/momo/helloworld/php-source-code-reading/Zend/zend_language_scanner.c: /Users/momo/helloworld/php-source-code-reading/Zend/zend_language_scanner.l
	@(cd $(top_srcdir); $(RE2C) $(RE2C_FLAGS) --no-generation-date --case-inverted -cbdFt Zend/zend_language_scanner_defs.h -oZend/zend_language_scanner.c Zend/zend_language_scanner.l)

/Users/momo/helloworld/php-source-code-reading/Zend/zend_language_parser.h: /Users/momo/helloworld/php-source-code-reading/Zend/zend_language_parser.c
/Users/momo/helloworld/php-source-code-reading/Zend/zend_language_parser.c: /Users/momo/helloworld/php-source-code-reading/Zend/zend_language_parser.y
	@$(YACC) -p zend -v -d /Users/momo/helloworld/php-source-code-reading/Zend/zend_language_parser.y -o $@

/Users/momo/helloworld/php-source-code-reading/Zend/zend_ini_parser.h: /Users/momo/helloworld/php-source-code-reading/Zend/zend_ini_parser.c
/Users/momo/helloworld/php-source-code-reading/Zend/zend_ini_parser.c: /Users/momo/helloworld/php-source-code-reading/Zend/zend_ini_parser.y
	@$(YACC) -p ini_ -v -d /Users/momo/helloworld/php-source-code-reading/Zend/zend_ini_parser.y -o $@

/Users/momo/helloworld/php-source-code-reading/Zend/zend_ini_scanner.c: /Users/momo/helloworld/php-source-code-reading/Zend/zend_ini_scanner.l
	@(cd $(top_srcdir); $(RE2C) $(RE2C_FLAGS) --no-generation-date --case-inverted -cbdFt Zend/zend_ini_scanner_defs.h -oZend/zend_ini_scanner.c Zend/zend_ini_scanner.l)

Zend/zend_highlight.lo Zend/zend_compile.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_language_parser.h
Zend/zend_execute.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_vm_execute.h /Users/momo/helloworld/php-source-code-reading/Zend/zend_vm_opcodes.h
sapi/cli/php_cli.lo: /Users/momo/helloworld/php-source-code-reading/sapi/cli/php_cli.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/cli/ -I/Users/momo/helloworld/php-source-code-reading/sapi/cli/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/cli/php_cli.c -o sapi/cli/php_cli.lo 
sapi/cli/php_http_parser.lo: /Users/momo/helloworld/php-source-code-reading/sapi/cli/php_http_parser.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/cli/ -I/Users/momo/helloworld/php-source-code-reading/sapi/cli/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/cli/php_http_parser.c -o sapi/cli/php_http_parser.lo 
sapi/cli/php_cli_server.lo: /Users/momo/helloworld/php-source-code-reading/sapi/cli/php_cli_server.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/cli/ -I/Users/momo/helloworld/php-source-code-reading/sapi/cli/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/cli/php_cli_server.c -o sapi/cli/php_cli_server.lo 
sapi/cli/ps_title.lo: /Users/momo/helloworld/php-source-code-reading/sapi/cli/ps_title.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/cli/ -I/Users/momo/helloworld/php-source-code-reading/sapi/cli/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/cli/ps_title.c -o sapi/cli/ps_title.lo 
sapi/cli/php_cli_process_title.lo: /Users/momo/helloworld/php-source-code-reading/sapi/cli/php_cli_process_title.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/cli/ -I/Users/momo/helloworld/php-source-code-reading/sapi/cli/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/cli/php_cli_process_title.c -o sapi/cli/php_cli_process_title.lo 
sapi/fpm/fpm/fpm.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm.c -o sapi/fpm/fpm/fpm.lo 
sapi/fpm/fpm/fpm_children.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_children.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_children.c -o sapi/fpm/fpm/fpm_children.lo 
sapi/fpm/fpm/fpm_cleanup.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_cleanup.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_cleanup.c -o sapi/fpm/fpm/fpm_cleanup.lo 
sapi/fpm/fpm/fpm_clock.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_clock.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_clock.c -o sapi/fpm/fpm/fpm_clock.lo 
sapi/fpm/fpm/fpm_conf.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_conf.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_conf.c -o sapi/fpm/fpm/fpm_conf.lo 
sapi/fpm/fpm/fpm_env.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_env.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_env.c -o sapi/fpm/fpm/fpm_env.lo 
sapi/fpm/fpm/fpm_events.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_events.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_events.c -o sapi/fpm/fpm/fpm_events.lo 
sapi/fpm/fpm/fpm_log.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_log.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_log.c -o sapi/fpm/fpm/fpm_log.lo 
sapi/fpm/fpm/fpm_main.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_main.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_main.c -o sapi/fpm/fpm/fpm_main.lo 
sapi/fpm/fpm/fpm_php.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_php.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_php.c -o sapi/fpm/fpm/fpm_php.lo 
sapi/fpm/fpm/fpm_php_trace.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_php_trace.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_php_trace.c -o sapi/fpm/fpm/fpm_php_trace.lo 
sapi/fpm/fpm/fpm_process_ctl.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_process_ctl.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_process_ctl.c -o sapi/fpm/fpm/fpm_process_ctl.lo 
sapi/fpm/fpm/fpm_request.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_request.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_request.c -o sapi/fpm/fpm/fpm_request.lo 
sapi/fpm/fpm/fpm_shm.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_shm.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_shm.c -o sapi/fpm/fpm/fpm_shm.lo 
sapi/fpm/fpm/fpm_scoreboard.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_scoreboard.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_scoreboard.c -o sapi/fpm/fpm/fpm_scoreboard.lo 
sapi/fpm/fpm/fpm_signals.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_signals.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_signals.c -o sapi/fpm/fpm/fpm_signals.lo 
sapi/fpm/fpm/fpm_sockets.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_sockets.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_sockets.c -o sapi/fpm/fpm/fpm_sockets.lo 
sapi/fpm/fpm/fpm_status.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_status.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_status.c -o sapi/fpm/fpm/fpm_status.lo 
sapi/fpm/fpm/fpm_stdio.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_stdio.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_stdio.c -o sapi/fpm/fpm/fpm_stdio.lo 
sapi/fpm/fpm/fpm_unix.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_unix.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_unix.c -o sapi/fpm/fpm/fpm_unix.lo 
sapi/fpm/fpm/fpm_worker_pool.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_worker_pool.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_worker_pool.c -o sapi/fpm/fpm/fpm_worker_pool.lo 
sapi/fpm/fpm/zlog.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/zlog.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/zlog.c -o sapi/fpm/fpm/zlog.lo 
sapi/fpm/fpm/events/select.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/events/select.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/events/select.c -o sapi/fpm/fpm/events/select.lo 
sapi/fpm/fpm/events/poll.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/events/poll.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/events/poll.c -o sapi/fpm/fpm/events/poll.lo 
sapi/fpm/fpm/events/epoll.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/events/epoll.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/events/epoll.c -o sapi/fpm/fpm/events/epoll.lo 
sapi/fpm/fpm/events/kqueue.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/events/kqueue.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/events/kqueue.c -o sapi/fpm/fpm/events/kqueue.lo 
sapi/fpm/fpm/events/devpoll.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/events/devpoll.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/events/devpoll.c -o sapi/fpm/fpm/events/devpoll.lo 
sapi/fpm/fpm/events/port.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/events/port.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/events/port.c -o sapi/fpm/fpm/events/port.lo 
sapi/fpm/fpm/fpm_trace.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_trace.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_trace.c -o sapi/fpm/fpm/fpm_trace.lo 
sapi/fpm/fpm/fpm_trace_mach.lo: /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_trace_mach.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm -Isapi/fpm/ -I/Users/momo/helloworld/php-source-code-reading/sapi/fpm/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/fpm/fpm/fpm_trace_mach.c -o sapi/fpm/fpm/fpm_trace_mach.lo 
sapi/phpdbg/phpdbg.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg.c -o sapi/phpdbg/phpdbg.lo 
sapi/phpdbg/phpdbg_parser.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_parser.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_parser.c -o sapi/phpdbg/phpdbg_parser.lo 
sapi/phpdbg/phpdbg_lexer.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_lexer.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_lexer.c -o sapi/phpdbg/phpdbg_lexer.lo 
sapi/phpdbg/phpdbg_prompt.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_prompt.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_prompt.c -o sapi/phpdbg/phpdbg_prompt.lo 
sapi/phpdbg/phpdbg_help.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_help.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_help.c -o sapi/phpdbg/phpdbg_help.lo 
sapi/phpdbg/phpdbg_break.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_break.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_break.c -o sapi/phpdbg/phpdbg_break.lo 
sapi/phpdbg/phpdbg_print.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_print.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_print.c -o sapi/phpdbg/phpdbg_print.lo 
sapi/phpdbg/phpdbg_bp.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_bp.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_bp.c -o sapi/phpdbg/phpdbg_bp.lo 
sapi/phpdbg/phpdbg_opcode.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_opcode.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_opcode.c -o sapi/phpdbg/phpdbg_opcode.lo 
sapi/phpdbg/phpdbg_list.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_list.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_list.c -o sapi/phpdbg/phpdbg_list.lo 
sapi/phpdbg/phpdbg_utils.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_utils.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_utils.c -o sapi/phpdbg/phpdbg_utils.lo 
sapi/phpdbg/phpdbg_info.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_info.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_info.c -o sapi/phpdbg/phpdbg_info.lo 
sapi/phpdbg/phpdbg_cmd.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_cmd.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_cmd.c -o sapi/phpdbg/phpdbg_cmd.lo 
sapi/phpdbg/phpdbg_set.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_set.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_set.c -o sapi/phpdbg/phpdbg_set.lo 
sapi/phpdbg/phpdbg_frame.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_frame.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_frame.c -o sapi/phpdbg/phpdbg_frame.lo 
sapi/phpdbg/phpdbg_watch.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_watch.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_watch.c -o sapi/phpdbg/phpdbg_watch.lo 
sapi/phpdbg/phpdbg_btree.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_btree.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_btree.c -o sapi/phpdbg/phpdbg_btree.lo 
sapi/phpdbg/phpdbg_sigsafe.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_sigsafe.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_sigsafe.c -o sapi/phpdbg/phpdbg_sigsafe.lo 
sapi/phpdbg/phpdbg_wait.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_wait.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_wait.c -o sapi/phpdbg/phpdbg_wait.lo 
sapi/phpdbg/phpdbg_io.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_io.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_io.c -o sapi/phpdbg/phpdbg_io.lo 
sapi/phpdbg/phpdbg_eol.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_eol.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_eol.c -o sapi/phpdbg/phpdbg_eol.lo 
sapi/phpdbg/phpdbg_out.lo: /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_out.c
	$(LIBTOOL) --mode=compile $(CC) -D_GNU_SOURCE -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/phpdbg/ -I/Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/phpdbg/phpdbg_out.c -o sapi/phpdbg/phpdbg_out.lo 
sapi/cgi/cgi_main.lo: /Users/momo/helloworld/php-source-code-reading/sapi/cgi/cgi_main.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Isapi/cgi/ -I/Users/momo/helloworld/php-source-code-reading/sapi/cgi/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/sapi/cgi/cgi_main.c -o sapi/cgi/cgi_main.lo 
ext/date/php_date.lo: /Users/momo/helloworld/php-source-code-reading/ext/date/php_date.c
	$(LIBTOOL) --mode=compile $(CC) -Iext/date/lib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -DHAVE_TIMELIB_CONFIG_H=1 -Iext/date/ -I/Users/momo/helloworld/php-source-code-reading/ext/date/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/date/php_date.c -o ext/date/php_date.lo 
ext/date/lib/astro.lo: /Users/momo/helloworld/php-source-code-reading/ext/date/lib/astro.c
	$(LIBTOOL) --mode=compile $(CC) -Iext/date/lib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -DHAVE_TIMELIB_CONFIG_H=1 -Iext/date/ -I/Users/momo/helloworld/php-source-code-reading/ext/date/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/date/lib/astro.c -o ext/date/lib/astro.lo 
ext/date/lib/dow.lo: /Users/momo/helloworld/php-source-code-reading/ext/date/lib/dow.c
	$(LIBTOOL) --mode=compile $(CC) -Iext/date/lib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -DHAVE_TIMELIB_CONFIG_H=1 -Iext/date/ -I/Users/momo/helloworld/php-source-code-reading/ext/date/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/date/lib/dow.c -o ext/date/lib/dow.lo 
ext/date/lib/parse_date.lo: /Users/momo/helloworld/php-source-code-reading/ext/date/lib/parse_date.c
	$(LIBTOOL) --mode=compile $(CC) -Iext/date/lib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -DHAVE_TIMELIB_CONFIG_H=1 -Iext/date/ -I/Users/momo/helloworld/php-source-code-reading/ext/date/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/date/lib/parse_date.c -o ext/date/lib/parse_date.lo 
ext/date/lib/parse_tz.lo: /Users/momo/helloworld/php-source-code-reading/ext/date/lib/parse_tz.c
	$(LIBTOOL) --mode=compile $(CC) -Iext/date/lib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -DHAVE_TIMELIB_CONFIG_H=1 -Iext/date/ -I/Users/momo/helloworld/php-source-code-reading/ext/date/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/date/lib/parse_tz.c -o ext/date/lib/parse_tz.lo 
ext/date/lib/timelib.lo: /Users/momo/helloworld/php-source-code-reading/ext/date/lib/timelib.c
	$(LIBTOOL) --mode=compile $(CC) -Iext/date/lib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -DHAVE_TIMELIB_CONFIG_H=1 -Iext/date/ -I/Users/momo/helloworld/php-source-code-reading/ext/date/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/date/lib/timelib.c -o ext/date/lib/timelib.lo 
ext/date/lib/tm2unixtime.lo: /Users/momo/helloworld/php-source-code-reading/ext/date/lib/tm2unixtime.c
	$(LIBTOOL) --mode=compile $(CC) -Iext/date/lib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -DHAVE_TIMELIB_CONFIG_H=1 -Iext/date/ -I/Users/momo/helloworld/php-source-code-reading/ext/date/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/date/lib/tm2unixtime.c -o ext/date/lib/tm2unixtime.lo 
ext/date/lib/unixtime2tm.lo: /Users/momo/helloworld/php-source-code-reading/ext/date/lib/unixtime2tm.c
	$(LIBTOOL) --mode=compile $(CC) -Iext/date/lib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -DHAVE_TIMELIB_CONFIG_H=1 -Iext/date/ -I/Users/momo/helloworld/php-source-code-reading/ext/date/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/date/lib/unixtime2tm.c -o ext/date/lib/unixtime2tm.lo 
ext/date/lib/parse_iso_intervals.lo: /Users/momo/helloworld/php-source-code-reading/ext/date/lib/parse_iso_intervals.c
	$(LIBTOOL) --mode=compile $(CC) -Iext/date/lib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -DHAVE_TIMELIB_CONFIG_H=1 -Iext/date/ -I/Users/momo/helloworld/php-source-code-reading/ext/date/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/date/lib/parse_iso_intervals.c -o ext/date/lib/parse_iso_intervals.lo 
ext/date/lib/interval.lo: /Users/momo/helloworld/php-source-code-reading/ext/date/lib/interval.c
	$(LIBTOOL) --mode=compile $(CC) -Iext/date/lib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -DHAVE_TIMELIB_CONFIG_H=1 -Iext/date/ -I/Users/momo/helloworld/php-source-code-reading/ext/date/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/date/lib/interval.c -o ext/date/lib/interval.lo 
ext/libxml/libxml.lo: /Users/momo/helloworld/php-source-code-reading/ext/libxml/libxml.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/libxml/ -I/Users/momo/helloworld/php-source-code-reading/ext/libxml/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/libxml/libxml.c -o ext/libxml/libxml.lo 
ext/pcre/pcrelib/pcre_chartables.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_chartables.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_chartables.c -o ext/pcre/pcrelib/pcre_chartables.lo 
ext/pcre/pcrelib/pcre_ucd.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_ucd.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_ucd.c -o ext/pcre/pcrelib/pcre_ucd.lo 
ext/pcre/pcrelib/pcre_compile.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_compile.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_compile.c -o ext/pcre/pcrelib/pcre_compile.lo 
ext/pcre/pcrelib/pcre_config.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_config.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_config.c -o ext/pcre/pcrelib/pcre_config.lo 
ext/pcre/pcrelib/pcre_exec.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_exec.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_exec.c -o ext/pcre/pcrelib/pcre_exec.lo 
ext/pcre/pcrelib/pcre_fullinfo.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_fullinfo.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_fullinfo.c -o ext/pcre/pcrelib/pcre_fullinfo.lo 
ext/pcre/pcrelib/pcre_get.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_get.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_get.c -o ext/pcre/pcrelib/pcre_get.lo 
ext/pcre/pcrelib/pcre_globals.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_globals.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_globals.c -o ext/pcre/pcrelib/pcre_globals.lo 
ext/pcre/pcrelib/pcre_maketables.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_maketables.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_maketables.c -o ext/pcre/pcrelib/pcre_maketables.lo 
ext/pcre/pcrelib/pcre_newline.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_newline.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_newline.c -o ext/pcre/pcrelib/pcre_newline.lo 
ext/pcre/pcrelib/pcre_ord2utf8.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_ord2utf8.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_ord2utf8.c -o ext/pcre/pcrelib/pcre_ord2utf8.lo 
ext/pcre/pcrelib/pcre_refcount.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_refcount.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_refcount.c -o ext/pcre/pcrelib/pcre_refcount.lo 
ext/pcre/pcrelib/pcre_study.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_study.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_study.c -o ext/pcre/pcrelib/pcre_study.lo 
ext/pcre/pcrelib/pcre_tables.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_tables.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_tables.c -o ext/pcre/pcrelib/pcre_tables.lo 
ext/pcre/pcrelib/pcre_valid_utf8.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_valid_utf8.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_valid_utf8.c -o ext/pcre/pcrelib/pcre_valid_utf8.lo 
ext/pcre/pcrelib/pcre_version.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_version.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_version.c -o ext/pcre/pcrelib/pcre_version.lo 
ext/pcre/pcrelib/pcre_xclass.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_xclass.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_xclass.c -o ext/pcre/pcrelib/pcre_xclass.lo 
ext/pcre/pcrelib/pcre_jit_compile.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_jit_compile.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib/pcre_jit_compile.c -o ext/pcre/pcrelib/pcre_jit_compile.lo 
ext/pcre/php_pcre.lo: /Users/momo/helloworld/php-source-code-reading/ext/pcre/php_pcre.c
	$(LIBTOOL) --mode=compile $(CC) -DHAVE_CONFIG_H -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/pcrelib -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/pcre/ -I/Users/momo/helloworld/php-source-code-reading/ext/pcre/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pcre/php_pcre.c -o ext/pcre/php_pcre.lo 
ext/sqlite3/sqlite3.lo: /Users/momo/helloworld/php-source-code-reading/ext/sqlite3/sqlite3.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/sqlite3/libsqlite -DSQLITE_ENABLE_FTS3=1 -DSQLITE_ENABLE_FTS4=1 -DSQLITE_ENABLE_FTS5=1 -DSQLITE_CORE=1 -DSQLITE_ENABLE_COLUMN_METADATA=1 -DSQLITE_THREADSAFE=0  -Iext/sqlite3/ -I/Users/momo/helloworld/php-source-code-reading/ext/sqlite3/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/sqlite3/sqlite3.c -o ext/sqlite3/sqlite3.lo 
ext/sqlite3/libsqlite/sqlite3.lo: /Users/momo/helloworld/php-source-code-reading/ext/sqlite3/libsqlite/sqlite3.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/sqlite3/libsqlite -DSQLITE_ENABLE_FTS3=1 -DSQLITE_ENABLE_FTS4=1 -DSQLITE_ENABLE_FTS5=1 -DSQLITE_CORE=1 -DSQLITE_ENABLE_COLUMN_METADATA=1 -DSQLITE_THREADSAFE=0  -Iext/sqlite3/ -I/Users/momo/helloworld/php-source-code-reading/ext/sqlite3/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/sqlite3/libsqlite/sqlite3.c -o ext/sqlite3/libsqlite/sqlite3.lo 
ext/ctype/ctype.lo: /Users/momo/helloworld/php-source-code-reading/ext/ctype/ctype.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/ctype/ -I/Users/momo/helloworld/php-source-code-reading/ext/ctype/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/ctype/ctype.c -o ext/ctype/ctype.lo 
ext/dom/php_dom.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/php_dom.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/php_dom.c -o ext/dom/php_dom.lo 
ext/dom/attr.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/attr.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/attr.c -o ext/dom/attr.lo 
ext/dom/document.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/document.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/document.c -o ext/dom/document.lo 
ext/dom/domerrorhandler.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/domerrorhandler.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/domerrorhandler.c -o ext/dom/domerrorhandler.lo 
ext/dom/domstringlist.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/domstringlist.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/domstringlist.c -o ext/dom/domstringlist.lo 
ext/dom/domexception.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/domexception.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/domexception.c -o ext/dom/domexception.lo 
ext/dom/namelist.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/namelist.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/namelist.c -o ext/dom/namelist.lo 
ext/dom/processinginstruction.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/processinginstruction.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/processinginstruction.c -o ext/dom/processinginstruction.lo 
ext/dom/cdatasection.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/cdatasection.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/cdatasection.c -o ext/dom/cdatasection.lo 
ext/dom/documentfragment.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/documentfragment.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/documentfragment.c -o ext/dom/documentfragment.lo 
ext/dom/domimplementation.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/domimplementation.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/domimplementation.c -o ext/dom/domimplementation.lo 
ext/dom/element.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/element.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/element.c -o ext/dom/element.lo 
ext/dom/node.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/node.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/node.c -o ext/dom/node.lo 
ext/dom/string_extend.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/string_extend.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/string_extend.c -o ext/dom/string_extend.lo 
ext/dom/characterdata.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/characterdata.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/characterdata.c -o ext/dom/characterdata.lo 
ext/dom/documenttype.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/documenttype.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/documenttype.c -o ext/dom/documenttype.lo 
ext/dom/domimplementationlist.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/domimplementationlist.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/domimplementationlist.c -o ext/dom/domimplementationlist.lo 
ext/dom/entity.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/entity.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/entity.c -o ext/dom/entity.lo 
ext/dom/nodelist.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/nodelist.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/nodelist.c -o ext/dom/nodelist.lo 
ext/dom/text.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/text.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/text.c -o ext/dom/text.lo 
ext/dom/comment.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/comment.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/comment.c -o ext/dom/comment.lo 
ext/dom/domconfiguration.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/domconfiguration.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/domconfiguration.c -o ext/dom/domconfiguration.lo 
ext/dom/domimplementationsource.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/domimplementationsource.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/domimplementationsource.c -o ext/dom/domimplementationsource.lo 
ext/dom/entityreference.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/entityreference.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/entityreference.c -o ext/dom/entityreference.lo 
ext/dom/notation.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/notation.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/notation.c -o ext/dom/notation.lo 
ext/dom/xpath.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/xpath.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/xpath.c -o ext/dom/xpath.lo 
ext/dom/dom_iterators.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/dom_iterators.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/dom_iterators.c -o ext/dom/dom_iterators.lo 
ext/dom/typeinfo.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/typeinfo.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/typeinfo.c -o ext/dom/typeinfo.lo 
ext/dom/domerror.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/domerror.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/domerror.c -o ext/dom/domerror.lo 
ext/dom/domlocator.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/domlocator.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/domlocator.c -o ext/dom/domlocator.lo 
ext/dom/namednodemap.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/namednodemap.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/namednodemap.c -o ext/dom/namednodemap.lo 
ext/dom/userdatahandler.lo: /Users/momo/helloworld/php-source-code-reading/ext/dom/userdatahandler.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/dom/ -I/Users/momo/helloworld/php-source-code-reading/ext/dom/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/dom/userdatahandler.c -o ext/dom/userdatahandler.lo 
ext/fileinfo/fileinfo.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/fileinfo.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/fileinfo.c -o ext/fileinfo/fileinfo.lo 
ext/fileinfo/libmagic/apprentice.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/apprentice.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/apprentice.c -o ext/fileinfo/libmagic/apprentice.lo 
ext/fileinfo/libmagic/apptype.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/apptype.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/apptype.c -o ext/fileinfo/libmagic/apptype.lo 
ext/fileinfo/libmagic/ascmagic.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/ascmagic.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/ascmagic.c -o ext/fileinfo/libmagic/ascmagic.lo 
ext/fileinfo/libmagic/cdf.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/cdf.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/cdf.c -o ext/fileinfo/libmagic/cdf.lo 
ext/fileinfo/libmagic/cdf_time.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/cdf_time.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/cdf_time.c -o ext/fileinfo/libmagic/cdf_time.lo 
ext/fileinfo/libmagic/compress.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/compress.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/compress.c -o ext/fileinfo/libmagic/compress.lo 
ext/fileinfo/libmagic/encoding.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/encoding.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/encoding.c -o ext/fileinfo/libmagic/encoding.lo 
ext/fileinfo/libmagic/fsmagic.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/fsmagic.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/fsmagic.c -o ext/fileinfo/libmagic/fsmagic.lo 
ext/fileinfo/libmagic/funcs.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/funcs.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/funcs.c -o ext/fileinfo/libmagic/funcs.lo 
ext/fileinfo/libmagic/is_tar.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/is_tar.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/is_tar.c -o ext/fileinfo/libmagic/is_tar.lo 
ext/fileinfo/libmagic/magic.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/magic.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/magic.c -o ext/fileinfo/libmagic/magic.lo 
ext/fileinfo/libmagic/print.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/print.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/print.c -o ext/fileinfo/libmagic/print.lo 
ext/fileinfo/libmagic/readcdf.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/readcdf.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/readcdf.c -o ext/fileinfo/libmagic/readcdf.lo 
ext/fileinfo/libmagic/softmagic.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/softmagic.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/softmagic.c -o ext/fileinfo/libmagic/softmagic.lo 
ext/fileinfo/libmagic/der.lo: /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/der.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic -Iext/fileinfo/ -I/Users/momo/helloworld/php-source-code-reading/ext/fileinfo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/fileinfo/libmagic/der.c -o ext/fileinfo/libmagic/der.lo 
ext/filter/filter.lo: /Users/momo/helloworld/php-source-code-reading/ext/filter/filter.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/filter/ -I/Users/momo/helloworld/php-source-code-reading/ext/filter/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/filter/filter.c -o ext/filter/filter.lo 
ext/filter/sanitizing_filters.lo: /Users/momo/helloworld/php-source-code-reading/ext/filter/sanitizing_filters.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/filter/ -I/Users/momo/helloworld/php-source-code-reading/ext/filter/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/filter/sanitizing_filters.c -o ext/filter/sanitizing_filters.lo 
ext/filter/logical_filters.lo: /Users/momo/helloworld/php-source-code-reading/ext/filter/logical_filters.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/filter/ -I/Users/momo/helloworld/php-source-code-reading/ext/filter/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/filter/logical_filters.c -o ext/filter/logical_filters.lo 
ext/filter/callback_filter.lo: /Users/momo/helloworld/php-source-code-reading/ext/filter/callback_filter.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/filter/ -I/Users/momo/helloworld/php-source-code-reading/ext/filter/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/filter/callback_filter.c -o ext/filter/callback_filter.lo 
ext/hash/hash.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/hash.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/hash.c -o ext/hash/hash.lo 
ext/hash/hash_md.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_md.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_md.c -o ext/hash/hash_md.lo 
ext/hash/hash_sha.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_sha.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_sha.c -o ext/hash/hash_sha.lo 
ext/hash/hash_ripemd.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_ripemd.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_ripemd.c -o ext/hash/hash_ripemd.lo 
ext/hash/hash_haval.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_haval.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_haval.c -o ext/hash/hash_haval.lo 
ext/hash/hash_tiger.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_tiger.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_tiger.c -o ext/hash/hash_tiger.lo 
ext/hash/hash_gost.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_gost.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_gost.c -o ext/hash/hash_gost.lo 
ext/hash/hash_snefru.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_snefru.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_snefru.c -o ext/hash/hash_snefru.lo 
ext/hash/hash_whirlpool.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_whirlpool.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_whirlpool.c -o ext/hash/hash_whirlpool.lo 
ext/hash/hash_adler32.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_adler32.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_adler32.c -o ext/hash/hash_adler32.lo 
ext/hash/hash_crc32.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_crc32.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_crc32.c -o ext/hash/hash_crc32.lo 
ext/hash/hash_fnv.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_fnv.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_fnv.c -o ext/hash/hash_fnv.lo 
ext/hash/hash_joaat.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_joaat.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_joaat.c -o ext/hash/hash_joaat.lo 
ext/hash/sha3/generic64lc/KeccakP-1600-opt64.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc/KeccakP-1600-opt64.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc/KeccakP-1600-opt64.c -o ext/hash/sha3/generic64lc/KeccakP-1600-opt64.lo 
ext/hash/sha3/generic64lc/KeccakHash.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc/KeccakHash.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc/KeccakHash.c -o ext/hash/sha3/generic64lc/KeccakHash.lo 
ext/hash/sha3/generic64lc/KeccakSponge.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc/KeccakSponge.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc/KeccakSponge.c -o ext/hash/sha3/generic64lc/KeccakSponge.lo 
ext/hash/hash_sha3.lo: /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_sha3.c
	$(LIBTOOL) --mode=compile $(CC) -I/Users/momo/helloworld/php-source-code-reading/ext/hash/sha3/generic64lc -DKeccakP200_excluded -DKeccakP400_excluded -DKeccakP800_excluded -Iext/hash/ -I/Users/momo/helloworld/php-source-code-reading/ext/hash/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/hash/hash_sha3.c -o ext/hash/hash_sha3.lo 
ext/json/json.lo: /Users/momo/helloworld/php-source-code-reading/ext/json/json.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/json/ -I/Users/momo/helloworld/php-source-code-reading/ext/json/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/json/json.c -o ext/json/json.lo 
ext/json/json_encoder.lo: /Users/momo/helloworld/php-source-code-reading/ext/json/json_encoder.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/json/ -I/Users/momo/helloworld/php-source-code-reading/ext/json/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/json/json_encoder.c -o ext/json/json_encoder.lo 
ext/json/json_parser.lo: /Users/momo/helloworld/php-source-code-reading/ext/json/json_parser.tab.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/json/ -I/Users/momo/helloworld/php-source-code-reading/ext/json/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/json/json_parser.tab.c -o ext/json/json_parser.lo 
ext/json/json_scanner.lo: /Users/momo/helloworld/php-source-code-reading/ext/json/json_scanner.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/json/ -I/Users/momo/helloworld/php-source-code-reading/ext/json/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/json/json_scanner.c -o ext/json/json_scanner.lo 
ext/opcache/ZendAccelerator.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/ZendAccelerator.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/ZendAccelerator.c -o ext/opcache/ZendAccelerator.lo 
ext/opcache/zend_accelerator_blacklist.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_accelerator_blacklist.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_accelerator_blacklist.c -o ext/opcache/zend_accelerator_blacklist.lo 
ext/opcache/zend_accelerator_debug.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_accelerator_debug.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_accelerator_debug.c -o ext/opcache/zend_accelerator_debug.lo 
ext/opcache/zend_accelerator_hash.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_accelerator_hash.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_accelerator_hash.c -o ext/opcache/zend_accelerator_hash.lo 
ext/opcache/zend_accelerator_module.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_accelerator_module.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_accelerator_module.c -o ext/opcache/zend_accelerator_module.lo 
ext/opcache/zend_persist.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_persist.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_persist.c -o ext/opcache/zend_persist.lo 
ext/opcache/zend_persist_calc.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_persist_calc.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_persist_calc.c -o ext/opcache/zend_persist_calc.lo 
ext/opcache/zend_file_cache.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_file_cache.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_file_cache.c -o ext/opcache/zend_file_cache.lo 
ext/opcache/zend_shared_alloc.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_shared_alloc.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_shared_alloc.c -o ext/opcache/zend_shared_alloc.lo 
ext/opcache/zend_accelerator_util_funcs.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_accelerator_util_funcs.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/zend_accelerator_util_funcs.c -o ext/opcache/zend_accelerator_util_funcs.lo 
ext/opcache/shared_alloc_shm.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/shared_alloc_shm.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/shared_alloc_shm.c -o ext/opcache/shared_alloc_shm.lo 
ext/opcache/shared_alloc_mmap.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/shared_alloc_mmap.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/shared_alloc_mmap.c -o ext/opcache/shared_alloc_mmap.lo 
ext/opcache/shared_alloc_posix.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/shared_alloc_posix.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/shared_alloc_posix.c -o ext/opcache/shared_alloc_posix.lo 
ext/opcache/Optimizer/zend_optimizer.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_optimizer.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_optimizer.c -o ext/opcache/Optimizer/zend_optimizer.lo 
ext/opcache/Optimizer/pass1_5.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/pass1_5.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/pass1_5.c -o ext/opcache/Optimizer/pass1_5.lo 
ext/opcache/Optimizer/pass2.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/pass2.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/pass2.c -o ext/opcache/Optimizer/pass2.lo 
ext/opcache/Optimizer/pass3.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/pass3.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/pass3.c -o ext/opcache/Optimizer/pass3.lo 
ext/opcache/Optimizer/optimize_func_calls.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/optimize_func_calls.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/optimize_func_calls.c -o ext/opcache/Optimizer/optimize_func_calls.lo 
ext/opcache/Optimizer/block_pass.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/block_pass.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/block_pass.c -o ext/opcache/Optimizer/block_pass.lo 
ext/opcache/Optimizer/optimize_temp_vars_5.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/optimize_temp_vars_5.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/optimize_temp_vars_5.c -o ext/opcache/Optimizer/optimize_temp_vars_5.lo 
ext/opcache/Optimizer/nop_removal.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/nop_removal.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/nop_removal.c -o ext/opcache/Optimizer/nop_removal.lo 
ext/opcache/Optimizer/compact_literals.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/compact_literals.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/compact_literals.c -o ext/opcache/Optimizer/compact_literals.lo 
ext/opcache/Optimizer/zend_cfg.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_cfg.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_cfg.c -o ext/opcache/Optimizer/zend_cfg.lo 
ext/opcache/Optimizer/zend_dfg.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_dfg.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_dfg.c -o ext/opcache/Optimizer/zend_dfg.lo 
ext/opcache/Optimizer/dfa_pass.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/dfa_pass.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/dfa_pass.c -o ext/opcache/Optimizer/dfa_pass.lo 
ext/opcache/Optimizer/zend_ssa.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_ssa.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_ssa.c -o ext/opcache/Optimizer/zend_ssa.lo 
ext/opcache/Optimizer/zend_inference.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_inference.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_inference.c -o ext/opcache/Optimizer/zend_inference.lo 
ext/opcache/Optimizer/zend_func_info.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_func_info.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_func_info.c -o ext/opcache/Optimizer/zend_func_info.lo 
ext/opcache/Optimizer/zend_call_graph.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_call_graph.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_call_graph.c -o ext/opcache/Optimizer/zend_call_graph.lo 
ext/opcache/Optimizer/sccp.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/sccp.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/sccp.c -o ext/opcache/Optimizer/sccp.lo 
ext/opcache/Optimizer/scdf.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/scdf.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/scdf.c -o ext/opcache/Optimizer/scdf.lo 
ext/opcache/Optimizer/dce.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/dce.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/dce.c -o ext/opcache/Optimizer/dce.lo 
ext/opcache/Optimizer/compact_vars.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/compact_vars.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/compact_vars.c -o ext/opcache/Optimizer/compact_vars.lo 
ext/opcache/Optimizer/zend_dump.lo: /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_dump.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/opcache/ -I/Users/momo/helloworld/php-source-code-reading/ext/opcache/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS)  -c /Users/momo/helloworld/php-source-code-reading/ext/opcache/Optimizer/zend_dump.c -o ext/opcache/Optimizer/zend_dump.lo 
$(phplibdir)/opcache.la: ext/opcache/opcache.la
	$(LIBTOOL) --mode=install cp ext/opcache/opcache.la $(phplibdir)

ext/opcache/opcache.la: $(shared_objects_opcache) $(OPCACHE_SHARED_DEPENDENCIES)
	$(LIBTOOL) --mode=link $(CC) $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) $(LDFLAGS) -o $@ -export-dynamic -avoid-version -prefer-pic -module -rpath $(phplibdir) $(EXTRA_LDFLAGS) $(shared_objects_opcache) $(OPCACHE_SHARED_LIBADD)

ext/pdo/pdo.lo: /Users/momo/helloworld/php-source-code-reading/ext/pdo/pdo.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/pdo/ -I/Users/momo/helloworld/php-source-code-reading/ext/pdo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pdo/pdo.c -o ext/pdo/pdo.lo 
ext/pdo/pdo_dbh.lo: /Users/momo/helloworld/php-source-code-reading/ext/pdo/pdo_dbh.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/pdo/ -I/Users/momo/helloworld/php-source-code-reading/ext/pdo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pdo/pdo_dbh.c -o ext/pdo/pdo_dbh.lo 
ext/pdo/pdo_stmt.lo: /Users/momo/helloworld/php-source-code-reading/ext/pdo/pdo_stmt.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/pdo/ -I/Users/momo/helloworld/php-source-code-reading/ext/pdo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pdo/pdo_stmt.c -o ext/pdo/pdo_stmt.lo 
ext/pdo/pdo_sql_parser.lo: /Users/momo/helloworld/php-source-code-reading/ext/pdo/pdo_sql_parser.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/pdo/ -I/Users/momo/helloworld/php-source-code-reading/ext/pdo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pdo/pdo_sql_parser.c -o ext/pdo/pdo_sql_parser.lo 
ext/pdo/pdo_sqlstate.lo: /Users/momo/helloworld/php-source-code-reading/ext/pdo/pdo_sqlstate.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/pdo/ -I/Users/momo/helloworld/php-source-code-reading/ext/pdo/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pdo/pdo_sqlstate.c -o ext/pdo/pdo_sqlstate.lo 
ext/pdo_sqlite/pdo_sqlite.lo: /Users/momo/helloworld/php-source-code-reading/ext/pdo_sqlite/pdo_sqlite.c
	$(LIBTOOL) --mode=compile $(CC) -DPDO_SQLITE_BUNDLED=1 -DSQLITE_ENABLE_FTS3=1 -DSQLITE_ENABLE_FTS4=1 -DSQLITE_ENABLE_FTS5=1 -DSQLITE_CORE=1 -DSQLITE_ENABLE_COLUMN_METADATA=1 -DSQLITE_THREADSAFE=0 -I/Users/momo/helloworld/php-source-code-reading/ext -Iext/pdo_sqlite/ -I/Users/momo/helloworld/php-source-code-reading/ext/pdo_sqlite/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pdo_sqlite/pdo_sqlite.c -o ext/pdo_sqlite/pdo_sqlite.lo 
ext/pdo_sqlite/sqlite_driver.lo: /Users/momo/helloworld/php-source-code-reading/ext/pdo_sqlite/sqlite_driver.c
	$(LIBTOOL) --mode=compile $(CC) -DPDO_SQLITE_BUNDLED=1 -DSQLITE_ENABLE_FTS3=1 -DSQLITE_ENABLE_FTS4=1 -DSQLITE_ENABLE_FTS5=1 -DSQLITE_CORE=1 -DSQLITE_ENABLE_COLUMN_METADATA=1 -DSQLITE_THREADSAFE=0 -I/Users/momo/helloworld/php-source-code-reading/ext -Iext/pdo_sqlite/ -I/Users/momo/helloworld/php-source-code-reading/ext/pdo_sqlite/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pdo_sqlite/sqlite_driver.c -o ext/pdo_sqlite/sqlite_driver.lo 
ext/pdo_sqlite/sqlite_statement.lo: /Users/momo/helloworld/php-source-code-reading/ext/pdo_sqlite/sqlite_statement.c
	$(LIBTOOL) --mode=compile $(CC) -DPDO_SQLITE_BUNDLED=1 -DSQLITE_ENABLE_FTS3=1 -DSQLITE_ENABLE_FTS4=1 -DSQLITE_ENABLE_FTS5=1 -DSQLITE_CORE=1 -DSQLITE_ENABLE_COLUMN_METADATA=1 -DSQLITE_THREADSAFE=0 -I/Users/momo/helloworld/php-source-code-reading/ext -Iext/pdo_sqlite/ -I/Users/momo/helloworld/php-source-code-reading/ext/pdo_sqlite/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/pdo_sqlite/sqlite_statement.c -o ext/pdo_sqlite/sqlite_statement.lo 
ext/phar/util.lo: /Users/momo/helloworld/php-source-code-reading/ext/phar/util.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/phar/ -I/Users/momo/helloworld/php-source-code-reading/ext/phar/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/phar/util.c -o ext/phar/util.lo 
ext/phar/tar.lo: /Users/momo/helloworld/php-source-code-reading/ext/phar/tar.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/phar/ -I/Users/momo/helloworld/php-source-code-reading/ext/phar/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/phar/tar.c -o ext/phar/tar.lo 
ext/phar/zip.lo: /Users/momo/helloworld/php-source-code-reading/ext/phar/zip.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/phar/ -I/Users/momo/helloworld/php-source-code-reading/ext/phar/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/phar/zip.c -o ext/phar/zip.lo 
ext/phar/stream.lo: /Users/momo/helloworld/php-source-code-reading/ext/phar/stream.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/phar/ -I/Users/momo/helloworld/php-source-code-reading/ext/phar/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/phar/stream.c -o ext/phar/stream.lo 
ext/phar/func_interceptors.lo: /Users/momo/helloworld/php-source-code-reading/ext/phar/func_interceptors.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/phar/ -I/Users/momo/helloworld/php-source-code-reading/ext/phar/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/phar/func_interceptors.c -o ext/phar/func_interceptors.lo 
ext/phar/dirstream.lo: /Users/momo/helloworld/php-source-code-reading/ext/phar/dirstream.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/phar/ -I/Users/momo/helloworld/php-source-code-reading/ext/phar/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/phar/dirstream.c -o ext/phar/dirstream.lo 
ext/phar/phar.lo: /Users/momo/helloworld/php-source-code-reading/ext/phar/phar.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/phar/ -I/Users/momo/helloworld/php-source-code-reading/ext/phar/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/phar/phar.c -o ext/phar/phar.lo 
ext/phar/phar_object.lo: /Users/momo/helloworld/php-source-code-reading/ext/phar/phar_object.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/phar/ -I/Users/momo/helloworld/php-source-code-reading/ext/phar/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/phar/phar_object.c -o ext/phar/phar_object.lo 
ext/phar/phar_path_check.lo: /Users/momo/helloworld/php-source-code-reading/ext/phar/phar_path_check.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/phar/ -I/Users/momo/helloworld/php-source-code-reading/ext/phar/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/phar/phar_path_check.c -o ext/phar/phar_path_check.lo 
ext/posix/posix.lo: /Users/momo/helloworld/php-source-code-reading/ext/posix/posix.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/posix/ -I/Users/momo/helloworld/php-source-code-reading/ext/posix/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/posix/posix.c -o ext/posix/posix.lo 
ext/reflection/php_reflection.lo: /Users/momo/helloworld/php-source-code-reading/ext/reflection/php_reflection.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/reflection/ -I/Users/momo/helloworld/php-source-code-reading/ext/reflection/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/reflection/php_reflection.c -o ext/reflection/php_reflection.lo 
ext/session/mod_user_class.lo: /Users/momo/helloworld/php-source-code-reading/ext/session/mod_user_class.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/session/ -I/Users/momo/helloworld/php-source-code-reading/ext/session/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/session/mod_user_class.c -o ext/session/mod_user_class.lo 
ext/session/session.lo: /Users/momo/helloworld/php-source-code-reading/ext/session/session.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/session/ -I/Users/momo/helloworld/php-source-code-reading/ext/session/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/session/session.c -o ext/session/session.lo 
ext/session/mod_files.lo: /Users/momo/helloworld/php-source-code-reading/ext/session/mod_files.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/session/ -I/Users/momo/helloworld/php-source-code-reading/ext/session/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/session/mod_files.c -o ext/session/mod_files.lo 
ext/session/mod_mm.lo: /Users/momo/helloworld/php-source-code-reading/ext/session/mod_mm.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/session/ -I/Users/momo/helloworld/php-source-code-reading/ext/session/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/session/mod_mm.c -o ext/session/mod_mm.lo 
ext/session/mod_user.lo: /Users/momo/helloworld/php-source-code-reading/ext/session/mod_user.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/session/ -I/Users/momo/helloworld/php-source-code-reading/ext/session/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/session/mod_user.c -o ext/session/mod_user.lo 
ext/simplexml/simplexml.lo: /Users/momo/helloworld/php-source-code-reading/ext/simplexml/simplexml.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/simplexml/ -I/Users/momo/helloworld/php-source-code-reading/ext/simplexml/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/simplexml/simplexml.c -o ext/simplexml/simplexml.lo 
ext/simplexml/sxe.lo: /Users/momo/helloworld/php-source-code-reading/ext/simplexml/sxe.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/simplexml/ -I/Users/momo/helloworld/php-source-code-reading/ext/simplexml/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/simplexml/sxe.c -o ext/simplexml/sxe.lo 
ext/spl/php_spl.lo: /Users/momo/helloworld/php-source-code-reading/ext/spl/php_spl.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/spl/ -I/Users/momo/helloworld/php-source-code-reading/ext/spl/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/spl/php_spl.c -o ext/spl/php_spl.lo 
ext/spl/spl_functions.lo: /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_functions.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/spl/ -I/Users/momo/helloworld/php-source-code-reading/ext/spl/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_functions.c -o ext/spl/spl_functions.lo 
ext/spl/spl_engine.lo: /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_engine.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/spl/ -I/Users/momo/helloworld/php-source-code-reading/ext/spl/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_engine.c -o ext/spl/spl_engine.lo 
ext/spl/spl_iterators.lo: /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_iterators.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/spl/ -I/Users/momo/helloworld/php-source-code-reading/ext/spl/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_iterators.c -o ext/spl/spl_iterators.lo 
ext/spl/spl_array.lo: /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_array.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/spl/ -I/Users/momo/helloworld/php-source-code-reading/ext/spl/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_array.c -o ext/spl/spl_array.lo 
ext/spl/spl_directory.lo: /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_directory.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/spl/ -I/Users/momo/helloworld/php-source-code-reading/ext/spl/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_directory.c -o ext/spl/spl_directory.lo 
ext/spl/spl_exceptions.lo: /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_exceptions.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/spl/ -I/Users/momo/helloworld/php-source-code-reading/ext/spl/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_exceptions.c -o ext/spl/spl_exceptions.lo 
ext/spl/spl_observer.lo: /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_observer.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/spl/ -I/Users/momo/helloworld/php-source-code-reading/ext/spl/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_observer.c -o ext/spl/spl_observer.lo 
ext/spl/spl_dllist.lo: /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_dllist.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/spl/ -I/Users/momo/helloworld/php-source-code-reading/ext/spl/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_dllist.c -o ext/spl/spl_dllist.lo 
ext/spl/spl_heap.lo: /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_heap.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/spl/ -I/Users/momo/helloworld/php-source-code-reading/ext/spl/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_heap.c -o ext/spl/spl_heap.lo 
ext/spl/spl_fixedarray.lo: /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_fixedarray.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/spl/ -I/Users/momo/helloworld/php-source-code-reading/ext/spl/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/spl/spl_fixedarray.c -o ext/spl/spl_fixedarray.lo 
ext/standard/crypt_freesec.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/crypt_freesec.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/crypt_freesec.c -o ext/standard/crypt_freesec.lo 
ext/standard/crypt_blowfish.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/crypt_blowfish.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/crypt_blowfish.c -o ext/standard/crypt_blowfish.lo 
ext/standard/crypt_sha512.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/crypt_sha512.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/crypt_sha512.c -o ext/standard/crypt_sha512.lo 
ext/standard/crypt_sha256.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/crypt_sha256.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/crypt_sha256.c -o ext/standard/crypt_sha256.lo 
ext/standard/php_crypt_r.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/php_crypt_r.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/php_crypt_r.c -o ext/standard/php_crypt_r.lo 
ext/standard/array.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/array.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/array.c -o ext/standard/array.lo 
ext/standard/base64.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/base64.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/base64.c -o ext/standard/base64.lo 
ext/standard/basic_functions.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/basic_functions.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/basic_functions.c -o ext/standard/basic_functions.lo 
ext/standard/browscap.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/browscap.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/browscap.c -o ext/standard/browscap.lo 
ext/standard/crc32.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/crc32.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/crc32.c -o ext/standard/crc32.lo 
ext/standard/crypt.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/crypt.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/crypt.c -o ext/standard/crypt.lo 
ext/standard/cyr_convert.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/cyr_convert.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/cyr_convert.c -o ext/standard/cyr_convert.lo 
ext/standard/datetime.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/datetime.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/datetime.c -o ext/standard/datetime.lo 
ext/standard/dir.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/dir.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/dir.c -o ext/standard/dir.lo 
ext/standard/dl.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/dl.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/dl.c -o ext/standard/dl.lo 
ext/standard/dns.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/dns.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/dns.c -o ext/standard/dns.lo 
ext/standard/exec.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/exec.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/exec.c -o ext/standard/exec.lo 
ext/standard/file.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/file.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/file.c -o ext/standard/file.lo 
ext/standard/filestat.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/filestat.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/filestat.c -o ext/standard/filestat.lo 
ext/standard/flock_compat.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/flock_compat.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/flock_compat.c -o ext/standard/flock_compat.lo 
ext/standard/formatted_print.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/formatted_print.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/formatted_print.c -o ext/standard/formatted_print.lo 
ext/standard/fsock.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/fsock.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/fsock.c -o ext/standard/fsock.lo 
ext/standard/head.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/head.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/head.c -o ext/standard/head.lo 
ext/standard/html.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/html.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/html.c -o ext/standard/html.lo 
ext/standard/image.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/image.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/image.c -o ext/standard/image.lo 
ext/standard/info.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/info.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/info.c -o ext/standard/info.lo 
ext/standard/iptc.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/iptc.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/iptc.c -o ext/standard/iptc.lo 
ext/standard/lcg.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/lcg.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/lcg.c -o ext/standard/lcg.lo 
ext/standard/link.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/link.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/link.c -o ext/standard/link.lo 
ext/standard/mail.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/mail.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/mail.c -o ext/standard/mail.lo 
ext/standard/math.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/math.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/math.c -o ext/standard/math.lo 
ext/standard/md5.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/md5.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/md5.c -o ext/standard/md5.lo 
ext/standard/metaphone.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/metaphone.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/metaphone.c -o ext/standard/metaphone.lo 
ext/standard/microtime.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/microtime.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/microtime.c -o ext/standard/microtime.lo 
ext/standard/pack.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/pack.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/pack.c -o ext/standard/pack.lo 
ext/standard/pageinfo.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/pageinfo.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/pageinfo.c -o ext/standard/pageinfo.lo 
ext/standard/quot_print.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/quot_print.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/quot_print.c -o ext/standard/quot_print.lo 
ext/standard/rand.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/rand.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/rand.c -o ext/standard/rand.lo 
ext/standard/mt_rand.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/mt_rand.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/mt_rand.c -o ext/standard/mt_rand.lo 
ext/standard/soundex.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/soundex.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/soundex.c -o ext/standard/soundex.lo 
ext/standard/string.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/string.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/string.c -o ext/standard/string.lo 
ext/standard/scanf.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/scanf.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/scanf.c -o ext/standard/scanf.lo 
ext/standard/syslog.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/syslog.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/syslog.c -o ext/standard/syslog.lo 
ext/standard/type.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/type.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/type.c -o ext/standard/type.lo 
ext/standard/uniqid.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/uniqid.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/uniqid.c -o ext/standard/uniqid.lo 
ext/standard/url.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/url.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/url.c -o ext/standard/url.lo 
ext/standard/var.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/var.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/var.c -o ext/standard/var.lo 
ext/standard/versioning.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/versioning.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/versioning.c -o ext/standard/versioning.lo 
ext/standard/assert.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/assert.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/assert.c -o ext/standard/assert.lo 
ext/standard/strnatcmp.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/strnatcmp.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/strnatcmp.c -o ext/standard/strnatcmp.lo 
ext/standard/levenshtein.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/levenshtein.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/levenshtein.c -o ext/standard/levenshtein.lo 
ext/standard/incomplete_class.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/incomplete_class.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/incomplete_class.c -o ext/standard/incomplete_class.lo 
ext/standard/url_scanner_ex.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/url_scanner_ex.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/url_scanner_ex.c -o ext/standard/url_scanner_ex.lo 
ext/standard/ftp_fopen_wrapper.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/ftp_fopen_wrapper.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/ftp_fopen_wrapper.c -o ext/standard/ftp_fopen_wrapper.lo 
ext/standard/http_fopen_wrapper.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/http_fopen_wrapper.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/http_fopen_wrapper.c -o ext/standard/http_fopen_wrapper.lo 
ext/standard/php_fopen_wrapper.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/php_fopen_wrapper.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/php_fopen_wrapper.c -o ext/standard/php_fopen_wrapper.lo 
ext/standard/credits.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/credits.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/credits.c -o ext/standard/credits.lo 
ext/standard/css.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/css.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/css.c -o ext/standard/css.lo 
ext/standard/var_unserializer.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/var_unserializer.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/var_unserializer.c -o ext/standard/var_unserializer.lo 
ext/standard/ftok.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/ftok.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/ftok.c -o ext/standard/ftok.lo 
ext/standard/sha1.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/sha1.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/sha1.c -o ext/standard/sha1.lo 
ext/standard/user_filters.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/user_filters.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/user_filters.c -o ext/standard/user_filters.lo 
ext/standard/uuencode.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/uuencode.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/uuencode.c -o ext/standard/uuencode.lo 
ext/standard/filters.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/filters.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/filters.c -o ext/standard/filters.lo 
ext/standard/proc_open.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/proc_open.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/proc_open.c -o ext/standard/proc_open.lo 
ext/standard/streamsfuncs.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/streamsfuncs.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/streamsfuncs.c -o ext/standard/streamsfuncs.lo 
ext/standard/http.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/http.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/http.c -o ext/standard/http.lo 
ext/standard/password.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/password.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/password.c -o ext/standard/password.lo 
ext/standard/random.lo: /Users/momo/helloworld/php-source-code-reading/ext/standard/random.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/standard/ -I/Users/momo/helloworld/php-source-code-reading/ext/standard/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/standard/random.c -o ext/standard/random.lo 
ext/tokenizer/tokenizer.lo: /Users/momo/helloworld/php-source-code-reading/ext/tokenizer/tokenizer.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/tokenizer/ -I/Users/momo/helloworld/php-source-code-reading/ext/tokenizer/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/tokenizer/tokenizer.c -o ext/tokenizer/tokenizer.lo 
ext/tokenizer/tokenizer_data.lo: /Users/momo/helloworld/php-source-code-reading/ext/tokenizer/tokenizer_data.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/tokenizer/ -I/Users/momo/helloworld/php-source-code-reading/ext/tokenizer/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/tokenizer/tokenizer_data.c -o ext/tokenizer/tokenizer_data.lo 
ext/xml/xml.lo: /Users/momo/helloworld/php-source-code-reading/ext/xml/xml.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/xml/ -I/Users/momo/helloworld/php-source-code-reading/ext/xml/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/xml/xml.c -o ext/xml/xml.lo 
ext/xml/compat.lo: /Users/momo/helloworld/php-source-code-reading/ext/xml/compat.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Iext/xml/ -I/Users/momo/helloworld/php-source-code-reading/ext/xml/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/xml/compat.c -o ext/xml/compat.lo 
ext/xmlreader/php_xmlreader.lo: /Users/momo/helloworld/php-source-code-reading/ext/xmlreader/php_xmlreader.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/xmlreader/ -I/Users/momo/helloworld/php-source-code-reading/ext/xmlreader/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/xmlreader/php_xmlreader.c -o ext/xmlreader/php_xmlreader.lo 
ext/xmlwriter/php_xmlwriter.lo: /Users/momo/helloworld/php-source-code-reading/ext/xmlwriter/php_xmlwriter.c
	$(LIBTOOL) --mode=compile $(CC)  -Iext/xmlwriter/ -I/Users/momo/helloworld/php-source-code-reading/ext/xmlwriter/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/ext/xmlwriter/php_xmlwriter.c -o ext/xmlwriter/php_xmlwriter.lo 
TSRM/TSRM.lo: /Users/momo/helloworld/php-source-code-reading/TSRM/TSRM.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -ITSRM/ -I/Users/momo/helloworld/php-source-code-reading/TSRM/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/TSRM/TSRM.c -o TSRM/TSRM.lo 
TSRM/tsrm_strtok_r.lo: /Users/momo/helloworld/php-source-code-reading/TSRM/tsrm_strtok_r.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -ITSRM/ -I/Users/momo/helloworld/php-source-code-reading/TSRM/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/TSRM/tsrm_strtok_r.c -o TSRM/tsrm_strtok_r.lo 
main/main.lo: /Users/momo/helloworld/php-source-code-reading/main/main.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/main.c -o main/main.lo 
main/snprintf.lo: /Users/momo/helloworld/php-source-code-reading/main/snprintf.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/snprintf.c -o main/snprintf.lo 
main/spprintf.lo: /Users/momo/helloworld/php-source-code-reading/main/spprintf.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/spprintf.c -o main/spprintf.lo 
main/php_sprintf.lo: /Users/momo/helloworld/php-source-code-reading/main/php_sprintf.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/php_sprintf.c -o main/php_sprintf.lo 
main/fopen_wrappers.lo: /Users/momo/helloworld/php-source-code-reading/main/fopen_wrappers.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/fopen_wrappers.c -o main/fopen_wrappers.lo 
main/alloca.lo: /Users/momo/helloworld/php-source-code-reading/main/alloca.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/alloca.c -o main/alloca.lo 
main/php_scandir.lo: /Users/momo/helloworld/php-source-code-reading/main/php_scandir.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/php_scandir.c -o main/php_scandir.lo 
main/php_ini.lo: /Users/momo/helloworld/php-source-code-reading/main/php_ini.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/php_ini.c -o main/php_ini.lo 
main/SAPI.lo: /Users/momo/helloworld/php-source-code-reading/main/SAPI.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/SAPI.c -o main/SAPI.lo 
main/rfc1867.lo: /Users/momo/helloworld/php-source-code-reading/main/rfc1867.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/rfc1867.c -o main/rfc1867.lo 
main/php_content_types.lo: /Users/momo/helloworld/php-source-code-reading/main/php_content_types.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/php_content_types.c -o main/php_content_types.lo 
main/strlcpy.lo: /Users/momo/helloworld/php-source-code-reading/main/strlcpy.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/strlcpy.c -o main/strlcpy.lo 
main/strlcat.lo: /Users/momo/helloworld/php-source-code-reading/main/strlcat.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/strlcat.c -o main/strlcat.lo 
main/explicit_bzero.lo: /Users/momo/helloworld/php-source-code-reading/main/explicit_bzero.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/explicit_bzero.c -o main/explicit_bzero.lo 
main/mergesort.lo: /Users/momo/helloworld/php-source-code-reading/main/mergesort.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/mergesort.c -o main/mergesort.lo 
main/reentrancy.lo: /Users/momo/helloworld/php-source-code-reading/main/reentrancy.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/reentrancy.c -o main/reentrancy.lo 
main/php_variables.lo: /Users/momo/helloworld/php-source-code-reading/main/php_variables.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/php_variables.c -o main/php_variables.lo 
main/php_ticks.lo: /Users/momo/helloworld/php-source-code-reading/main/php_ticks.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/php_ticks.c -o main/php_ticks.lo 
main/network.lo: /Users/momo/helloworld/php-source-code-reading/main/network.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/network.c -o main/network.lo 
main/php_open_temporary_file.lo: /Users/momo/helloworld/php-source-code-reading/main/php_open_temporary_file.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/php_open_temporary_file.c -o main/php_open_temporary_file.lo 
main/output.lo: /Users/momo/helloworld/php-source-code-reading/main/output.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/output.c -o main/output.lo 
main/getopt.lo: /Users/momo/helloworld/php-source-code-reading/main/getopt.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/getopt.c -o main/getopt.lo 
main/fastcgi.lo: /Users/momo/helloworld/php-source-code-reading/main/fastcgi.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/fastcgi.c -o main/fastcgi.lo 
main/streams/streams.lo: /Users/momo/helloworld/php-source-code-reading/main/streams/streams.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/streams/ -I/Users/momo/helloworld/php-source-code-reading/main/streams/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/streams/streams.c -o main/streams/streams.lo 
main/streams/cast.lo: /Users/momo/helloworld/php-source-code-reading/main/streams/cast.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/streams/ -I/Users/momo/helloworld/php-source-code-reading/main/streams/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/streams/cast.c -o main/streams/cast.lo 
main/streams/memory.lo: /Users/momo/helloworld/php-source-code-reading/main/streams/memory.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/streams/ -I/Users/momo/helloworld/php-source-code-reading/main/streams/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/streams/memory.c -o main/streams/memory.lo 
main/streams/filter.lo: /Users/momo/helloworld/php-source-code-reading/main/streams/filter.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/streams/ -I/Users/momo/helloworld/php-source-code-reading/main/streams/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/streams/filter.c -o main/streams/filter.lo 
main/streams/plain_wrapper.lo: /Users/momo/helloworld/php-source-code-reading/main/streams/plain_wrapper.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/streams/ -I/Users/momo/helloworld/php-source-code-reading/main/streams/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/streams/plain_wrapper.c -o main/streams/plain_wrapper.lo 
main/streams/userspace.lo: /Users/momo/helloworld/php-source-code-reading/main/streams/userspace.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/streams/ -I/Users/momo/helloworld/php-source-code-reading/main/streams/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/streams/userspace.c -o main/streams/userspace.lo 
main/streams/transports.lo: /Users/momo/helloworld/php-source-code-reading/main/streams/transports.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/streams/ -I/Users/momo/helloworld/php-source-code-reading/main/streams/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/streams/transports.c -o main/streams/transports.lo 
main/streams/xp_socket.lo: /Users/momo/helloworld/php-source-code-reading/main/streams/xp_socket.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/streams/ -I/Users/momo/helloworld/php-source-code-reading/main/streams/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/streams/xp_socket.c -o main/streams/xp_socket.lo 
main/streams/mmap.lo: /Users/momo/helloworld/php-source-code-reading/main/streams/mmap.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/streams/ -I/Users/momo/helloworld/php-source-code-reading/main/streams/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/streams/mmap.c -o main/streams/mmap.lo 
main/streams/glob_wrapper.lo: /Users/momo/helloworld/php-source-code-reading/main/streams/glob_wrapper.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/streams/ -I/Users/momo/helloworld/php-source-code-reading/main/streams/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/main/streams/glob_wrapper.c -o main/streams/glob_wrapper.lo 
main/internal_functions.lo: main/internal_functions.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c main/internal_functions.c -o main/internal_functions.lo 
main/internal_functions_cli.lo: main/internal_functions_cli.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -Imain/ -I/Users/momo/helloworld/php-source-code-reading/main/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c main/internal_functions_cli.c -o main/internal_functions_cli.lo 
Zend/zend_language_parser.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_language_parser.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_language_parser.c -o Zend/zend_language_parser.lo 
Zend/zend_language_scanner.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_language_scanner.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_language_scanner.c -o Zend/zend_language_scanner.lo 
Zend/zend_ini_parser.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_ini_parser.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_ini_parser.c -o Zend/zend_ini_parser.lo 
Zend/zend_ini_scanner.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_ini_scanner.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_ini_scanner.c -o Zend/zend_ini_scanner.lo 
Zend/zend_alloc.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_alloc.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_alloc.c -o Zend/zend_alloc.lo 
Zend/zend_compile.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_compile.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_compile.c -o Zend/zend_compile.lo 
Zend/zend_constants.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_constants.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_constants.c -o Zend/zend_constants.lo 
Zend/zend_dtrace.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_dtrace.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_dtrace.c -o Zend/zend_dtrace.lo 
Zend/zend_execute_API.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_execute_API.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_execute_API.c -o Zend/zend_execute_API.lo 
Zend/zend_highlight.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_highlight.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_highlight.c -o Zend/zend_highlight.lo 
Zend/zend_llist.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_llist.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_llist.c -o Zend/zend_llist.lo 
Zend/zend_vm_opcodes.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_vm_opcodes.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_vm_opcodes.c -o Zend/zend_vm_opcodes.lo 
Zend/zend_opcode.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_opcode.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_opcode.c -o Zend/zend_opcode.lo 
Zend/zend_operators.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_operators.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_operators.c -o Zend/zend_operators.lo 
Zend/zend_ptr_stack.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_ptr_stack.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_ptr_stack.c -o Zend/zend_ptr_stack.lo 
Zend/zend_stack.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_stack.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_stack.c -o Zend/zend_stack.lo 
Zend/zend_variables.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_variables.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_variables.c -o Zend/zend_variables.lo 
Zend/zend.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend.c -o Zend/zend.lo 
Zend/zend_API.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_API.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_API.c -o Zend/zend_API.lo 
Zend/zend_extensions.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_extensions.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_extensions.c -o Zend/zend_extensions.lo 
Zend/zend_hash.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_hash.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_hash.c -o Zend/zend_hash.lo 
Zend/zend_list.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_list.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_list.c -o Zend/zend_list.lo 
Zend/zend_builtin_functions.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_builtin_functions.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_builtin_functions.c -o Zend/zend_builtin_functions.lo 
Zend/zend_sprintf.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_sprintf.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_sprintf.c -o Zend/zend_sprintf.lo 
Zend/zend_ini.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_ini.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_ini.c -o Zend/zend_ini.lo 
Zend/zend_sort.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_sort.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_sort.c -o Zend/zend_sort.lo 
Zend/zend_multibyte.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_multibyte.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_multibyte.c -o Zend/zend_multibyte.lo 
Zend/zend_ts_hash.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_ts_hash.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_ts_hash.c -o Zend/zend_ts_hash.lo 
Zend/zend_stream.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_stream.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_stream.c -o Zend/zend_stream.lo 
Zend/zend_iterators.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_iterators.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_iterators.c -o Zend/zend_iterators.lo 
Zend/zend_interfaces.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_interfaces.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_interfaces.c -o Zend/zend_interfaces.lo 
Zend/zend_exceptions.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_exceptions.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_exceptions.c -o Zend/zend_exceptions.lo 
Zend/zend_strtod.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_strtod.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_strtod.c -o Zend/zend_strtod.lo 
Zend/zend_gc.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_gc.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_gc.c -o Zend/zend_gc.lo 
Zend/zend_closures.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_closures.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_closures.c -o Zend/zend_closures.lo 
Zend/zend_float.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_float.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_float.c -o Zend/zend_float.lo 
Zend/zend_string.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_string.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_string.c -o Zend/zend_string.lo 
Zend/zend_signal.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_signal.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_signal.c -o Zend/zend_signal.lo 
Zend/zend_generators.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_generators.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_generators.c -o Zend/zend_generators.lo 
Zend/zend_virtual_cwd.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_virtual_cwd.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_virtual_cwd.c -o Zend/zend_virtual_cwd.lo 
Zend/zend_ast.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_ast.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_ast.c -o Zend/zend_ast.lo 
Zend/zend_objects.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_objects.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_objects.c -o Zend/zend_objects.lo 
Zend/zend_object_handlers.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_object_handlers.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_object_handlers.c -o Zend/zend_object_handlers.lo 
Zend/zend_objects_API.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_objects_API.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_objects_API.c -o Zend/zend_objects_API.lo 
Zend/zend_default_classes.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_default_classes.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_default_classes.c -o Zend/zend_default_classes.lo 
Zend/zend_inheritance.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_inheritance.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_inheritance.c -o Zend/zend_inheritance.lo 
Zend/zend_smart_str.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_smart_str.c
	$(LIBTOOL) --mode=compile $(CC) 	-DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_smart_str.c -o Zend/zend_smart_str.lo 
Zend/zend_execute.lo: /Users/momo/helloworld/php-source-code-reading/Zend/zend_execute.c
	$(LIBTOOL) --mode=compile $(CC) -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -IZend/ -I/Users/momo/helloworld/php-source-code-reading/Zend/ $(COMMON_FLAGS) $(CFLAGS_CLEAN) $(EXTRA_CFLAGS) -c /Users/momo/helloworld/php-source-code-reading/Zend/zend_execute.c -o Zend/zend_execute.lo 
