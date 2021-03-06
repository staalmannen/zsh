#
# Basic Makefile definitions
#
# Copyright (c) 1995-1997 Richard Coleman
# All rights reserved.
#
# Permission is hereby granted, without written agreement and without
# license or royalty fees, to use, copy, modify, and distribute this
# software and to distribute modified versions of this software for any
# purpose, provided that the above copyright notice and the following
# two paragraphs appear in all copies of this software.
#
# In no event shall Richard Coleman or the Zsh Development Group be liable
# to any party for direct, indirect, special, incidental, or consequential
# damages arising out of the use of this software and its documentation,
# even if Richard Coleman and the Zsh Development Group have been advised of
# the possibility of such damage.
#
# Richard Coleman and the Zsh Development Group specifically disclaim any
# warranties, including, but not limited to, the implied warranties of
# merchantability and fitness for a particular purpose.  The software
# provided hereunder is on an "as is" basis, and Richard Coleman and the
# Zsh Development Group have no obligation to provide maintenance,
# support, updates, enhancements, or modifications.
#

# fundamentals
SHELL = /bin/sh

EXEEXT = 

# headers
ZSH_CURSES_H = curses.h
ZSH_TERM_H = term.h

# install basename
tzsh            = zsh

# installation directories
prefix          = /sys
exec_prefix     = /386
bindir          = ${exec_prefix}/bin
libdir          = /386/lib/ape
MODDIR          = $(libdir)/$(tzsh)/$(VERSION)
infodir         = ${datarootdir}/info
mandir          = ${datarootdir}/man
datarootdir     = ${prefix}/share
datadir         = /sys
fndir           = /sys/zsh/${VERSION}/functions
fixed_sitefndir = /usr/local/share/zsh/site-functions
sitefndir       = /sys/zsh/site-functions
scriptdir       = /sys/zsh/${VERSION}/scripts
sitescriptdir   = /sys/zsh/scripts
htmldir         = $(datadir)/$(tzsh)/htmldoc
runhelpdir      = /sys/zsh/${VERSION}/help
runhelp         = runhelp

# compilation
CC              = cc
CPP             = cc -E
CPPFLAGS        =  -I/sys/include/ape -DPCRE_STATIC
DEFS            = -DHAVE_CONFIG_H
CFLAGS          = -D_POSIX_SOURCE -D_SUSV2_SOURCE -D_RESEARCH_SOURCE -D_REENTRANT_SOURCE -D_BSD_EXTENSION -D_NET_EXTENSION -D_LIMITS_EXTENSION -D_C99_SNPRINTF_EXTENSION -D_REGEXP_EXTENSION -DHAVE_SOCK_OPTS
LDFLAGS         = 
EXTRA_LDFLAGS   = 
DLCFLAGS        = 
DLLDFLAGS       = 
LIBLDFLAGS      =  -s
EXELDFLAGS      =  -s
LIBS            = -L/386/lib/ape -lpcre -lsocket -lcurses true -lm  -lc
DL_EXT          = 
DLLD            = 
EXPOPT          = 
IMPOPT          = 

# utilities
AWK             = awk
ANSI2KNR        = : ansi2knr
YODL            = : yodl 
YODL2TXT        = : yodl2txt
YODL2HTML       = : yodl2html

# install utility
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA    = ${INSTALL} -m 644

# variables used in determining what to install
FUNCTIONS_SUBDIRS = no

# Additional fpath entries (eg. for vendor specific directories).
additionalfpath = 

# flags passed to recursive makes in subdirectories
MAKEDEFS = \
prefix='$(prefix)' exec_prefix='$(exec_prefix)' bindir='$(bindir)' \
libdir='$(libdir)' MODDIR='$(MODDIR)' infodir='$(infodir)' mandir='$(mandir)' \
datadir='$(datadir)' fndir='$(fndir)' htmldir='$(htmldir)' runhelpdir='$(runhelpdir)' \
CC='$(CC)' CPPFLAGS='$(CPPFLAGS)' DEFS='$(DEFS)' CFLAGS='$(CFLAGS)' \
LDFLAGS='$(LDFLAGS)' EXTRA_LDFLAGS='$(EXTRA_LDFLAGS)' \
DLCFLAGS='$(DLCFLAGS)' DLLDFLAGS='$(DLLDFLAGS)' \
LIBLDFLAGS='$(LIBLDFLAGS)' EXELDFLAGS='$(EXELDFLAGS)' \
LIBS='$(LIBS)' DL_EXT='$(DL_EXT)' DLLD='$(DLLD)' \
AWK='$(AWK)' ANSI2KNR='$(ANSI2KNR)' \
YODL='$(YODL)' YODL2TXT='$(YODL2TXT)' YODL2HTML='$(YODL2HTML)' \
FUNCTIONS_INSTALL='$(FUNCTIONS_INSTALL)' tzsh='$(tzsh)'

# override built-in suffix list
.SUFFIXES:

# parallel build is not supported (pmake, gmake)
.NOTPARALLEL:

# parallel build is not supported (dmake)
.NO_PARALLEL:
