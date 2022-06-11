/* -*- Mode: C; tab-width: 8; indent-tabs-mode: nil; c-basic-offset: 4 -*-
 * vim: set ts=8 sw=4 et tw=78:
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

#ifndef js_config_h
#define js_config_h

/* Definitions set at build time that affect SpiderMonkey's public API.
   This header file is generated by the SpiderMonkey configure script,
   and installed along with jsapi.h.  */

/* Define to 1 if SpiderMonkey is in debug mode. */
#define JS_DEBUG 1

/*
 * NB: We have a special case for rust-bindgen, which wants to be able to
 * generate both debug and release bindings on a single objdir.
 */
#ifdef JS_DEBUG
#if !defined(DEBUG) && !defined(RUST_BINDGEN)
#  error "SpiderMonkey was configured with --enable-debug, so DEBUG must be defined when including this header"
# endif
#else
# if defined(DEBUG) && !defined(RUST_BINDGEN)
#  error "SpiderMonkey was configured with --disable-debug, so DEBUG must be not defined when including this header"
# endif
#endif

/* Define to 1 if SpiderMonkey should include ctypes support.  */
/* #undef JS_HAS_CTYPES */

/* Define to 1 if SpiderMonkey should include trace logging support. */
/* #undef JS_TRACE_LOGGING */

/* Define to 1 if SpiderMonkey should include typed objects support. */
/* #undef JS_HAS_TYPED_OBJECTS */

/* Define to 1 if SpiderMonkey should include support for the Intl API. */
/* #undef JS_HAS_INTL_API */

/* Define to 1 if SpiderMonkey should include a breakpoint function for
 * artificial OOMs. */
/* #undef JS_OOM_BREAKPOINT */

/* Define to 1 if SpiderMonkey should support the ability to perform
   entirely too much GC.  */
#define JS_GC_ZEAL 1

/* Define to 1 if SpiderMonkey should use small chunks. */
/* #undef JS_GC_SMALL_CHUNK_SIZE */

/* Define to 1 to perform extra assertions and heap poisoning. */
/* #undef JS_CRASH_DIAGNOSTICS */

/* Define to 1 if SpiderMonkey is in NUNBOX32 mode. */
#define JS_NUNBOX32 1

/* Define to 1 if SpiderMonkey is in PUNBOX64 mode. */
/* #undef JS_PUNBOX64 */

/* MOZILLA JSAPI version number components */
#define MOZJS_MAJOR_VERSION 78
#define MOZJS_MINOR_VERSION 6

#endif /* js_config_h */
