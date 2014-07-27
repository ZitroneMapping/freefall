BinaryDir = bin/
LibraryDir = lib/
WadDir = wad/
WadUrl = http://goldsrc.org/files/wads/

all: hlfix zhlt

hlfix:
	hlfix zt_ff.rmf -w wad.txt

zhlt:
	hlcsg -nowadtextures -wadautodetect -cliptype Precise -chart -dev 2 zt_ff
	hlbsp -chart -dev 2 zt_ff
	hlvis -chart -dev 2 zt_ff
