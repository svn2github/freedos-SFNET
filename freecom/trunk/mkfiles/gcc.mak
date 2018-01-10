# Linux only for now
DIRSEP = /
RMFILES = rm -f
RMFILES2 = rm -f
ECHOTO = echo >>
ECHOTO0 = echo >>
CP = cp
SHELL_MMODEL_COMP=cmodel=small
INCLUDEPATH=-I. -I../compat -I../suppl/compat

CC = ia16-elf-gcc -c
CL = ia16-elf-gcc -mcmodel=small
AR = ar crsv
LD = ia16-elf-gcc -o command.exe $(OBJ1) $(OBJ2) $(OBJ3) $(OBJ4) $(LIBS) -Wl,-Map,command.map $#
LIBLIST = >
ECHOLIB = echo >>

CFG = gcc.cfg
CFLAGS1 = -Os -Werror -Wno-pointer-to-int-cast -Wno-incompatible-pointer-types -Wno-int-to-pointer-cast -mrtd

#		*Implicit Rules*
.SUFFIXES:
.SUFFIXES: .c .asm .com .exe .obj
.c.exe:
	gcc -x c -D__GETOPT_H -I../suppl $< -o $@
.c.obj:
	$(CC) $< @$(CFG) -o $@
