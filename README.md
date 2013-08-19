# Zitrone: Freefall #
A new look at the freefall series, that I adore so much. To be seen as an improved 2007 version, but started from scratch.

## Contribute ##
The common file format used is the .map format. The Valve Hammer Editor works better with its native .rmf format though, which is why you should follow these guidelines.

1. Open the .map file in Hammer
2. Save it as .rmf
3. Convert it to .map with [HLFix](http://extension.ws/hlfix/), NOT with Hammer

This way the file stays nice and clean.

## Compiling ##
### HLFix ###

### ZHLT-CSG: Constructive Solid Geometry ###
hlcsg -nowadtextures -wadautodetect -cliptype Precise -chart -estimate -dev 2 zt_ff

### ZHLT-BSP: Binary Space Partitioning ###
hlbsp -chart -estimate -dev 2 zt_ff

### ZHLT-VIS: Visible Information Set ###
hlvis -chart -estimate -dev 2 zt_ff

### ZHLT-RAD: Radiosity ###

### Optimize Entity Data ###
ripent -export zt_ff.bsp
opt_entdata
ripent -import zt_ff.bsp

## License ##
This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/).

## Version history ##
### 2007: v1.0 ###
The first version was made in 2007 and I quickly released the final version.
### 2009 ###
In 2009 I started and quickly abandoned recreating the first version.
### 2011: v1.1 ###
In 2011 I fixed some entity bugs that had been bothering me. I was only able to work on entities, since I lost the rmf in 2008.
### 2013: v2.0 ###
Work in progress.
