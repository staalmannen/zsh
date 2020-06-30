</$objtype/mkfile
#use APE make

BIN=/$objtype/bin/ape


default:V:
	@{ cd Src;
	ape/psh -c make }


install:V:
	@{ cd Src;
	ape/psh -c ape/make }
	cp Src/zsh $BIN/zsh


install-sh:V:
	@{ cd Src;
	ape/psh -c make }
	cp Src/zsh $BIN/zsh
	cp Src/zsh $BIN/sh


clean:V:
	@{ cd Src;
	ape/psh -c 'make clean' }


nuke:V:
	rm -f $BIN/zsh


