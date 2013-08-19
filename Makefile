all: zhlt

zhlt:
	hlcsg -nowadtextures -wadautodetect -cliptype Precise -chart -dev 2 zt_ff
	hlbsp -chart -dev 2 zt_ff
	hlvis -chart -dev 2 zt_ff
