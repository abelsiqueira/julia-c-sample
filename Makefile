all:
	(cd csrc; make)
	LD_LIBRARY_PATH=csrc julia juliasrc/main.jl

clean purge:
	(cd csrc; make $@)
