all:
	ghc -O2 -fllvm partition.hs

clean:
	rm -f partition partition.hi partition.o
