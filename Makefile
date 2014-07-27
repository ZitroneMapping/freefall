BinaryDir = bin/
LibraryDir = lib/
WadDir = wad/
WadUrl = http://goldsrc.org/files/wads/

all: hlfix zhlt

get-deps:
	git clone git://github.com/kriswema/GoldsrcEditingTools.git $(LibraryDir)
	cd $(LibraryDir);\
	make all

install-deps: get-deps
	cd $(LibraryDir);\
	make install

hlfix:
	hlfix zt_ff.rmf -w wad.txt

get-wads:
	wget -nc -P $(WadDir) $(WadUrl)halflife.wad $(WadUrl)zhlt.wad $(WadUrl)cstrike.wad $(WadUrl)tfc.wad $(WadUrl)tfc2.wad

zhlt: get-wads
	hlcsg -nowadtextures -wadautodetect -cliptype Precise -chart -dev 2 zt_ff
	hlbsp -chart -dev 2 zt_ff
	hlvis -chart -dev 2 zt_ff
