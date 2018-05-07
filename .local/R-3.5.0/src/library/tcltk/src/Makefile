#
# ${R_HOME}/src/library/tcltk/src/Makefile

pkg = tcltk


srcdir = .
top_srcdir = ../../../..

top_builddir = ../../../..
subdir = src/library/$(pkg)/src
R_HOME = $(top_builddir)
R_SHARE_DIR = $(R_HOME)/share
R_INCLUDE_DIR = $(R_HOME)/include

SOURCES_C = init.c tcltk.c tcltk_unix.c
SOURCES_F =
DEPENDS = $(SOURCES_C:.c=.d)
OBJECTS = $(SOURCES_C:.c=.o) $(SOURCES_F:.f=.o)

SHLIB = $(pkg).so

## -I../../../include is for config.h.
## Circumvent conflicts by having external paths last, as we
## need them only for tcl.h, tk.h.
PKG_CPPFLAGS = \
  -I../../../include -I$(top_srcdir)/src/include -DHAVE_CONFIG_H \
  -I/usr/include -I/usr/include 
PKG_CFLAGS = $(C_VISIBILITY)
PKG_LIBS = -L/usr/lib -ltcl8.6 -L/usr/lib -ltk8.6 -lX11 -lXss -lXext -lm

all: Makedeps
	@$(MAKE) shlib

Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	@cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@

Makedeps: Makefile $(DEPENDS)
	@cat $(DEPENDS) >> Makefile
	@touch $@

shlib: $(SHLIB)
	@$(MKINSTALLDIRS) \
	  $(top_builddir)/library/$(pkg)/libs
	@$(SHELL) $(top_srcdir)/tools/copy-if-change $(SHLIB) \
	  $(top_builddir)/library/$(pkg)/libs/$(SHLIB)

include $(R_HOME)/etc${R_ARCH}/Makeconf
include $(top_srcdir)/share/make/shlib.mk
LTO = 

mostlyclean: clean
clean:
	@-rm -Rf .libs _libs
	@-rm -f Makedeps *.d *.o *$(SHLIB_EXT)
distclean: clean
	@-rm -f Makefile
maintainer-clean: distclean

## Automagically generated dependencies:
init.o: init.c ../../../../include/R.h ../../../../include/Rconfig.h \
 ../../../../include/R_ext/Arith.h ../../../../include/R_ext/libextern.h \
 ../../../../include/R_ext/Boolean.h ../../../../include/R_ext/Complex.h \
 ../../../../include/R_ext/Constants.h ../../../../include/R_ext/Error.h \
 ../../../../include/R_ext/Memory.h ../../../../include/R_ext/Print.h \
 ../../../../include/R_ext/Random.h ../../../../include/R_ext/Utils.h \
 ../../../../include/R_ext/RS.h ../../../../include/Rinternals.h \
 ../../../../include/R_ext/Rdynload.h tcltk.h \
 ../../../../include/R_ext/Parse.h ../../../../include/R_ext/Visibility.h
tcltk.o: tcltk.c ../../../include/config.h ../../../include/Defn.h \
 ../../../../include/R_ext/Complex.h ../../../../include/Rinternals.h \
 ../../../../include/R_ext/Arith.h ../../../../include/R_ext/libextern.h \
 ../../../../include/R_ext/Boolean.h ../../../../include/R_ext/Error.h \
 ../../../../include/R_ext/Memory.h ../../../../include/R_ext/Utils.h \
 ../../../../include/R_ext/Print.h ../../../../include/R_ext/Rdynload.h \
 ../../../include/Rinlinedfuns.h ../../../include/Errormsg.h tcltk.h \
 ../../../../include/R_ext/Parse.h
tcltk_unix.o: tcltk_unix.c ../../../include/config.h \
 ../../../include/Defn.h ../../../../include/R_ext/Complex.h \
 ../../../../include/Rinternals.h ../../../../include/R_ext/Arith.h \
 ../../../../include/R_ext/libextern.h \
 ../../../../include/R_ext/Boolean.h ../../../../include/R_ext/Error.h \
 ../../../../include/R_ext/Memory.h ../../../../include/R_ext/Utils.h \
 ../../../../include/R_ext/Print.h ../../../../include/R_ext/Rdynload.h \
 ../../../include/Rinlinedfuns.h ../../../include/Errormsg.h tcltk.h \
 ../../../../include/R_ext/Parse.h ../../../../include/R_ext/eventloop.h \
 ../../../../include/Rinterface.h ../../../../include/R_ext/RStartup.h
