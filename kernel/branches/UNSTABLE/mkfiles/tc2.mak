#
# TC2.MAK - kernel copiler options for Turbo C 2.01
#

BINPATH=$(BASE)

!include "..\mkfiles\turbocpp.mak"

TARGET=KTC

MATH_EXTRACT=*LDIV *LXMUL *LURSH *LLSH *LRSH
MATH_INSERT =+LDIV +LXMUL +LURSH +LLSH +LRSH

# TCC 2.0 doesn't support responce file

INITCFLAGS=-zCINIT_TEXT -zRID -zTID -zSI_GROUP -zDIB -zBIB -zGI_GROUP
