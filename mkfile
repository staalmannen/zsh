APE=/sys/src/ape
<$APE/config

#depends
#PDCurses + pdterm
#pcre


TARG=zsh

LIB=\
	/$objtype/lib/ape/libcurses.a\
	/$objtype/lib/ape/libterm.a\
	/$objtype/lib/ape/libpcre.a


OFILES=\
#Src\
	main.$O builtin.$O compat.$O cond.$O context.$O exec.$O glob.$O hashtable.$O hashnameddir.$O hist.$O init.$O input.$O jobs.$O lex.$O linklist.$O loop.$O math.$O mem.$O module.$O options.$O params.$O parse.$O pattern.$O prompt.$O signals.$O signames.$O sort.$O string.$O subst.$O text.$O utils.$O watch.$O openssh_bsd_setres_id.$O modentry.$O\
#Src/Builtins\
	rlimits.$O sched.$O\
#Src/Modules\
	datetime.$O langinfo.$O parameter.$O termcap.$O zutil.$O\
#Src/Zle\
	compctl.$O complete.$O compcore.$O compmatch.$O compresult.$O complist.$O computil.$O zle_bindings.$O zle_hist.$O zle_keymap.$O zle_main.$O zle_misc.$O zle_move.$O zle_params.$O zle_refresh.$O zle_thingy.$O zle_tricky.$O zle_utils.$O zle_vi.$O zle_word.$O textobjects.$O zleparameter.$O


HFILES=\
	config.h\




BIN=/$objtype/bin


</sys/src/cmd/mkone


CC=pcc
LD=pcc
CFLAGS=-I. -I./Src -I./Src/Builtins -I./Src/Modules -I./Src/Zle -D_POSIX_SOURCE -D_SUSV2_SOURCE -D_BSD_EXTENSION -DPCRE_STATIC -DHAVE_CONFIG_H


%.$O : Src/%.c
	$CC $CFLAGS Src/$stem.c


%.$O : Src/Builtins/%.c
	$CC $CFLAGS Src/Builtins/$stem.c

%.$O : Src/Modules/%.c
	$CC $CFLAGS Src/Modules/$stem.c

%.$O : Src/Zle/%.c
	$CC $CFLAGS Src/Zle/$stem.c


#optional install of zsh as APE sh
install-sh:V:
	cp zsh /$objtype/bin/ape/sh