SCREEN 12
COLOR 14
LOCATE 15, 23: PRINT "Loading data"
SLEEP 2
LOCATE 15, 35: PRINT "."
SLEEP 1
LOCATE 15, 36: PRINT "."
SLEEP 1
LOCATE 15, 37: PRINT "."
SLEEP 1
LOCATE 15, 39: PRINT ":library1 0%"
SLEEP 1
LOCATE 16, 39: PRINT ":library2 0%"
SLEEP 1
LOCATE 17, 39: PRINT ":library3 0%"
SLEEP 1
LOCATE 15, 49: PRINT "25%"
SLEEP 1
LOCATE 16, 49: PRINT "25%"
SLEEP 1
LOCATE 17, 49: PRINT "25%"
LOCATE 15, 49: PRINT "50%"
LOCATE 16, 49: PRINT "42%"
LOCATE 17, 49: PRINT "47%"
SLEEP 1
LOCATE 15, 49: PRINT "68%"
LOCATE 16, 49: PRINT "72%"
LOCATE 17, 49: PRINT "87%"
SLEEP 1
LOCATE 15, 49: PRINT "100%"
LOCATE 16, 49: PRINT "100%"
LOCATE 17, 49: PRINT "100%"
SLEEP 1
LOCATE 15, 55: PRINT "Loaded!"
SLEEP 1
LOCATE 16, 55: PRINT "Loaded!"
SLEEP 1
LOCATE 17, 55: PRINT "Loaded!"
SLEEP 1
LOCATE 23, 34: PRINT "System starting..."
SLEEP 1
CLS
a: SCREEN 12
COLOR 14
LINE (310, 5)-(310, 469)
LINE (650, 5)-(0, 5)
LINE (650, 32)-(0, 32)
LINE (650, 450)-(0, 450)
LINE (0, 5)-(0, 469)
LINE (639, 5)-(639, 469)
LINE (0, 470)-(640, 470)
LOCATE 2, 2: PRINT "mortal commnader"
LOCATE 2, 64: PRINT "mortal commander"
LOCATE 2, 30: PRINT "Sector 1"
LOCATE 2, 42: PRINT "Sector 2"
LOCATE 2, 20: PRINT "Help F1"
LOCATE 2, 55: PRINT "Help F1"
LOCATE 4, 2: INPUT "Enter command:", a$
IF a$ = "exit" THEN GOTO b
IF a$ = "clear" THEN GOTO C
IF a$ = "quit" THEN GOTO b
IF a$ = "help" THEN GOTO d
IF a$ = "restart" THEN GOTO aaa
IF a$ = "help\sector2" THEN GOTO i
IF a$ = "help/sector2" THEN GOTO i
IF a$ = "mkdir floppy" THEN GOTO j
IF a$ = "MKDIR FLOPPY" THEN GOTO j
IF a$ = "MKDIR" THEN GOTO s
IF a$ = "mkdir" THEN GOTO s
IF a$ = "cd floppy" THEN GOTO k
IF a$ = "CD FLOPPY" THEN GOTO k
IF a$ = "pico" THEN GOTO L
IF a$ = "PICO" THEN GOTO L
IF a$ = "RM" THEN GOTO m
IF a$ = "rm" THEN GOTO m
IF a$ = "rmdir" THEN GOTO t
IF a$ = "RMDIR" THEN GOTO t
IF a$ = "mk" THEN GOTO o
IF a$ = "MK" THEN GOTO o
IF a$ = "pwd" THEN GOTO p
IF a$ = "PWD" THEN GOTO p
IF a$ = "rmdir floppy" THEN GOTO r
IF a$ = "RMDIR FLOPPY" THEN GOTO r
IF a$ = "ls" THEN GOTO u
IF a$ = "LS" THEN GOTO u
IF a$ = "cat" THEN GOTO aa
IF a$ = "CAT" THEN GOTO aa
IF a$ = "cat -e" THEN GOTO aaf
IF a$ = "cd" THEN GOTO ab
IF a$ = "CD" THEN GOTO ab
IF a$ = "back" THEN GOTO ac
IF a$ = "BACK" THEN GOTO ac
IF a$ = "mv" THEN GOTO ad
IF a$ = "MV" THEN GOTO ad
IF a$ = "time" THEN GOTO af
IF a$ = "TIME" THEN GOTO af
IF a$ = "run" THEN GOTO ak
IF a$ = "RUN" THEN GOTO ak
IF a$ = "frun on" THEN GOTO av
IF a$ = "FRUN ON" THEN GOTO av
IF a$ = "vim" THEN GOTO aab
IF a$ = "VIM" THEN GOTO aab
IF a$ = "u floppy" THEN GOTO aac
IF a$ = "U FLOPPY" THEN GOTO aac
IF a$ = "pack" THEN GOTO aad
IF a$ = "PACK" THEN GOTO aad
IF a$ = "unpack" THEN GOTO aad
IF a$ = "UNPACK" THEN GOTO aad
IF a$ = "vc" THEN GOTO aae
IF s$ = "VC" THEN GOTO aae
x: BEEP
LOCATE 5, 2: PRINT "unknow command"
SLEEP 1
CLS
GOTO a
b: CLS
LOCATE 16, 30: PRINT "System exit"
SLEEP 2
LOCATE 16, 41: PRINT "."
SLEEP 1
LOCATE 16, 42: PRINT "."
LOCATE 16, 43: PRINT "."
SLEEP 1
CLS
LOCATE 16, 25: PRINT "...created by "
SLEEP 2
LOCATE 16, 40: PRINT "c"
SLEEP 1
LOCATE 16, 41: PRINT "h"
SLEEP 1
LOCATE 16, 42: PRINT "a"
SLEEP 1
LOCATE 16, 43: PRINT "r"
SLEEP 1
LOCATE 16, 44: PRINT "0"
SLEEP 1
LOCATE 16, 45: PRINT "n"
SLEEP 1
LOCATE 19, 26: PRINT "Special thanks to kubo!"
SLEEP 1
CLS
END
C: CLS
GOTO a
END
d: CLS
COLOR 7
LOCATE 2, 15: PRINT "1 - index"
LOCATE 2, 35: PRINT "2 - help"
LOCATE 2, 55: PRINT "3 - exit"
LOCATE 4, 15: PRINT "4 - index2"
COLOR 14
LOCATE 6, 1: INPUT "Vyber dynamicku kniznicu:", i%
IF i% = 1 THEN GOTO e
IF i% = 2 THEN GOTO g
IF i% = 3 THEN GOTO f
IF i% = 4 THEN GOTO aag
yyyyy: BEEP
PRINT
PRINT
PRINT "Read from menu"
SLEEP 2
CLS
GOTO d
END
e:
DO
LOOP WHILE UCASE$(r$) = "Y"
CLOSE #1
OPEN "c:\morcom\tools\Redo1.dll" FOR INPUT AS #1
CLS
PRINT "Read from file:": PRINT
DO WHILE NOT EOF(1)
    LINE INPUT #1, rec$
    PRINT rec$
LOOP
CLOSE #1
PRINT
PRINT
PRINT "Press Esc to exit..."
DO
LOOP UNTIL INKEY$ = CHR$(27)
GOTO d
END
f: CLS
GOTO a
END
g:
DO
LOOP WHILE UCASE$(r$) = "Y"
CLOSE #1
OPEN "c:\morcom\tools\Redo2.dll" FOR INPUT AS #1
CLS
PRINT "Read from file:": PRINT
DO WHILE NOT EOF(1)
    LINE INPUT #1, rec$
    PRINT rec$
LOOP
CLOSE #1
PRINT
PRINT
PRINT "Press Esc to exit..."
DO
LOOP UNTIL INKEY$ = CHR$(27)
GOTO d
END
i: CLS
LINE (310, 5)-(310, 469)
LINE (650, 5)-(0, 5)
LINE (650, 32)-(0, 32)
LINE (650, 450)-(0, 450)
LINE (0, 5)-(0, 469)
LINE (639, 5)-(639, 469)
LINE (0, 470)-(640, 470)
LOCATE 2, 2: PRINT "mortal commnader"
LOCATE 2, 64: PRINT "mortal commander"
LOCATE 2, 30: PRINT "Sector 1"
LOCATE 2, 42: PRINT "Sector 2"
LOCATE 2, 20: PRINT "Help F1"
LOCATE 2, 55: PRINT "Help F1"
LOCATE 4, 41: PRINT "clear - clear all the system"
LOCATE 5, 41: PRINT "exit - exit system"
LOCATE 6, 41: PRINT "quit - exit system"
LOCATE 7, 41: PRINT "restart - restart system"
LOCATE 8, 41: PRINT "help - show help"
LOCATE 9, 41: PRINT "mkdir - create a new directory"
LOCATE 10, 41: PRINT "cd - enter the directory"
LOCATE 11, 41: PRINT "mkdir floppy - create diskette drive a:"
LOCATE 12, 41: PRINT "cd floppy - enter diskette drive"
LOCATE 13, 41: PRINT "rmdir floppy - delete diskette drive"
LOCATE 14, 41: PRINT "cd pico - text editor"
LOCATE 15, 41: PRINT "rm - delete file"
LOCATE 16, 41: PRINT "rmdir - delete direcory"
LOCATE 17, 41: PRINT "mk - create file"
LOCATE 18, 41: PRINT "pwd - locate your position"
LOCATE 19, 41: PRINT "ls - show contains of directory"
LOCATE 20, 41: PRINT "cat - view source"
LOCATE 21, 41: PRINT "back  - bo back to Bacom"
LOCATE 22, 41: PRINT "mv - rename file"
LOCATE 23, 41: PRINT "time -show date and time"
LOCATE 24, 41: PRINT "run - program run"
LOCATE 25, 41: PRINT "frun on - fast run mode"
LOCATE 26, 41: PRINT "vim - the best text editor"
LOCATE 27, 41: PRINT "u floppy - disconnect distete drive a:\"
LOCATE 28, 41: PRINT "pack;unpack - pack and unpack files"
LOCATE 4, 2: INPUT "Enter command:", a$
IF a$ = "exit" THEN GOTO b
IF a$ = "clear" THEN GOTO C
IF a$ = "quit" THEN GOTO b
IF a$ = "help" THEN GOTO d
IF a$ = "restart" THEN GOTO aaa
IF a$ = "help\sector2" THEN GOTO i
IF a$ = "help/sector2" THEN GOTO i
IF a$ = "mkdir floppy" THEN GOTO j
IF a$ = "MKDIR FLOPPY" THEN GOTO j
IF a$ = "MKDIR" THEN GOTO s
IF a$ = "mkdir" THEN GOTO s
IF a$ = "cd floppy" THEN GOTO k
IF a$ = "CD FLOPPY" THEN GOTO k
IF a$ = "pico" THEN GOTO L
IF a$ = "PICO" THEN GOTO L
IF a$ = "RM" THEN GOTO m
IF a$ = "rm" THEN GOTO m
IF a$ = "rmdir" THEN GOTO t
IF a$ = "RMDIR" THEN GOTO t
IF a$ = "mk" THEN GOTO o
IF a$ = "MK" THEN GOTO o
IF a$ = "pwd" THEN GOTO p
IF a$ = "PWD" THEN GOTO p
IF a$ = "rmdir floppy" THEN GOTO r
IF a$ = "RMDIR FLOPPY" THEN GOTO r
IF a$ = "ls" THEN GOTO u
IF a$ = "LS" THEN GOTO u
IF a$ = "cat" THEN GOTO aa
IF a$ = "CAT" THEN GOTO aa
IF a$ = "cat -e" THEN GOTO aaf
IF a$ = "cd" THEN GOTO ab
IF a$ = "CD" THEN GOTO ab
IF a$ = "back" THEN GOTO ac
IF a$ = "BACK" THEN GOTO ac
IF a$ = "mv" THEN GOTO ad
IF a$ = "MV" THEN GOTO ad
IF a$ = "time" THEN GOTO af
IF a$ = "TIME" THEN GOTO af
IF a$ = "run" THEN GOTO ak
IF a$ = "RUN" THEN GOTO ak
IF a$ = "frun on" THEN GOTO av
IF a$ = "FRUN ON" THEN GOTO av
IF a$ = "vim" THEN GOTO aab
IF a$ = "VIM" THEN GOTO aab
IF a$ = "u floppy" THEN GOTO aac
IF a$ = "U FLOPPY" THEN GOTO aac
IF a$ = "pack" THEN GOTO aad
IF a$ = "PACK" THEN GOTO aad
IF a$ = "UNPACK" THEN GOTO aad
IF a$ = "unpack" THEN GOTO aad
y: BEEP
LOCATE 5, 2: PRINT "unknow command"
SLEEP 1
CLS
GOTO i
END
j:
LOCATE 5, 2: INPUT "Enter parametres:"; f$
CHDIR f$
MKDIR "Floppy"
LOCATE 6, 2: PRINT "File creating..."
SLEEP 2
CLS
FILES
PRINT
PRINT
PRINT "Press Esc to exit..."
DO
LOOP UNTIL INKEY$ = CHR$(27)
CLS
GOTO a
END
k: CLS
OPEN "LPT1:" FOR OUTPUT AS #1
WIDTH #1, 132
PRINT LTP1
CHDIR "A:\"
FILES "A:\"
CLOSE
PRINT
PRINT
PRINT "Press Esc to exit..."
DO
LOOP UNTIL INKEY$ = CHR$(27)
CLS
GOTO a
END
L: CLS
LINE (310, 5)-(310, 469)
LINE (650, 5)-(0, 5)
LINE (650, 32)-(0, 32)
LINE (650, 450)-(0, 450)
LINE (0, 5)-(0, 469)
LINE (639, 5)-(639, 469)
LINE (0, 470)-(640, 470)
LOCATE 2, 2: PRINT "mortal commnader"
LOCATE 2, 64: PRINT "mortal commander"
LOCATE 2, 30: PRINT "Sector 1"
LOCATE 2, 42: PRINT "Sector 2"
LOCATE 2, 20: PRINT "Help F1"
LOCATE 2, 55: PRINT "Help F1"
LOCATE 4, 2: PRINT "Enter command:pico"
LOCATE 5, 2: INPUT "Enter parametres:"; f$
CHDIR f$
LOCATE 6, 2: INPUT "Enter Filename: "; n$
OPEN n$ FOR OUTPUT AS #1
LOCATE 7, 2: INPUT "Enter text:"; n$
PRINT #1, n$
CLOSE
PRINT
LOCATE 14, 2: PRINT "File creating..."
SLEEP 1
LOCATE 15, 2: PRINT "Text saving..."
SLEEP 2
CLS
GOTO a
END
m:
LOCATE 5, 2: INPUT "Enter parametres:"; f$
CHDIR f$
LOCATE 6, 2: INPUT "Enter filename:"; f$
KILL f$
LOCATE 7, 2: PRINT "File delete..."
SLEEP 2
CLS
GOTO a
END
n:
CHDIR "C:\NFS"
o:
LOCATE 5, 2: INPUT "Enter parametres:"; f$
CHDIR f$
LOCATE 6, 2: INPUT "Enter Filename: "; n$
OPEN n$ FOR OUTPUT AS #1
CLOSE
LOCATE 7, 2: PRINT "File creating..."
SLEEP 2
CLS
GOTO a
END
p: CLS
FILES
PRINT
PRINT
PRINT "Press Esc to exit..."
DO
LOOP UNTIL INKEY$ = CHR$(27)
CLS
GOTO a
END
r:
LOCATE 5, 2: INPUT "Enter parametres:"; f$
CHDIR f$
RMDIR "FLOPPY"
LOCATE 6, 2: PRINT "File delete..."
SLEEP 2
CLS
GOTO a
END
s:
LOCATE 5, 2: INPUT "Enter parametres:"; f$
CHDIR f$
LOCATE 6, 2: INPUT "Enter filename:"; f$
MKDIR f$
LOCATE 7, 2: PRINT "File creating..."
SLEEP 2
CLS
GOTO a
END
t:
LOCATE 5, 2: INPUT "Enter parametres:"; f$
CHDIR f$
LOCATE 6, 2: INPUT "Enter filename:"; f$
RMDIR f$
LOCATE 7, 2: PRINT "File delete..."
SLEEP 2
CLS
GOTO a
END
u:
LOCATE 5, 2: INPUT "Enter parametres:"; f$
CLS
CHDIR f$
FILES
PRINT
PRINT
PRINT "Press Esc to exit..."
DO
LOOP UNTIL INKEY$ = CHR$(27)
CLS
GOTO a
END
aa:
LOCATE 5, 2: INPUT "Enter parametres:"; f$
CHDIR f$
LOCATE 6, 2: INPUT "See contain of <DIR>(y/n):", a$
IF a$ = "y" THEN GOTO ag
IF a$ = "n" THEN GOTO ah
xxx: BEEP
LOCATE 7, 2: PRINT "Reed from menu"
SLEEP 2
CLS
GOTO aj
END
ab:
LOCATE 5, 2: INPUT "Enter parametres:"; f$
CHDIR f$
CLS
FILES
PRINT
PRINT
PRINT "Press esc to exit..."
DO
LOOP UNTIL INKEY$ = CHR$(27)
CLS
GOTO a
END
ac:

CHDIR "c:\morcom"

LOCATE 5, 2: PRINT "Locating path..."
SLEEP 2
LOCATE 6, 2: PRINT "Path located."
SLEEP 2
CLS
GOTO a
END
ad:
LOCATE 5, 2: INPUT "Enter parametres:"; f$
CHDIR f$
LOCATE 6, 2: INPUT "Parametre 1:"; oldFN$
LOCATE 7, 2: INPUT "Parametre 2:"; newFN$
NAME oldFN$ AS newFN$
LOCATE 8, 2: PRINT "File renaming..."
SLEEP 2
CLS
GOTO a
END
af:
LOCATE 5, 2: PRINT DATE$
LOCATE 6, 2: PRINT TIME$
SLEEP 5
CLS
GOTO a
END
ag: CLS
FILES
PRINT
PRINT
PRINT "Press Esc to exit..."
DO
LOOP UNTIL INKEY$ = CHR$(27)
CLS
GOTO ai
ah:
LOCATE 7, 2: INPUT "Enter filename:"; f$
DO
LOOP WHILE UCASE$(r$) = "Y"
CLOSE #1
OPEN f$ FOR INPUT AS #1
CLS
PRINT "Read from file:": PRINT
DO WHILE NOT EOF(1)
    LINE INPUT #1, rec$
    PRINT rec$
LOOP
CLOSE #1
PRINT
PRINT
PRINT "Press Ecs to exit..."
DO
LOOP UNTIL INKEY$ = CHR$(27)
CLS
GOTO a
END
ai: CLS
LINE (310, 5)-(310, 469)
LINE (650, 5)-(0, 5)
LINE (650, 32)-(0, 32)
LINE (650, 450)-(0, 450)
LINE (0, 5)-(0, 469)
LINE (639, 5)-(639, 469)
LINE (0, 470)-(640, 470)
LOCATE 2, 2: PRINT "Basic commnader"
LOCATE 2, 65: PRINT "Basic commander"
LOCATE 2, 30: PRINT "Sector 1"
LOCATE 2, 42: PRINT "Sector 2"
LOCATE 2, 20: PRINT "Help F1"
LOCATE 2, 55: PRINT "Help F1"
LOCATE 4, 2: PRINT "Enter command:cat"
LOCATE 5, 2: PRINT "Path located."
LOCATE 6, 2: PRINT "See contain of <DIR>(y/n): y"
LOCATE 7, 2: INPUT "Enter filename:"; f$
DO
LOOP WHILE UCASE$(r$) = "Y"
CLOSE #1
OPEN f$ FOR INPUT AS #1
CLS
PRINT "Read from file:": PRINT
DO WHILE NOT EOF(1)
    LINE INPUT #1, rec$
    PRINT rec$
LOOP
CLOSE #1
PRINT
PRINT
PRINT "Press Esc to exit..."
DO
LOOP UNTIL INKEY$ = CHR$(27)
CLS
GOTO a
END
aj: CLS
LINE (310, 5)-(310, 469)
LINE (650, 5)-(0, 5)
LINE (650, 32)-(0, 32)
LINE (650, 450)-(0, 450)
LINE (0, 5)-(0, 469)
LINE (639, 5)-(639, 469)
LINE (0, 470)-(640, 470)
LOCATE 2, 2: PRINT "Basic commnader"
LOCATE 2, 65: PRINT "Basic commander"
LOCATE 2, 30: PRINT "Sector 1"
LOCATE 2, 42: PRINT "Sector 2"
LOCATE 2, 20: PRINT "Help F1"
LOCATE 2, 55: PRINT "Help F1"
LOCATE 4, 2: PRINT "Enter command:cat"
LOCATE 5, 2: PRINT "Paht located."
LOCATE 6, 2: INPUT "See contain of <DIR>(y/n):", a$
IF a$ = "y" THEN GOTO ag
IF a$ = "n" THEN GOTO ah
xxxx: BEEP
LOCATE 7, 2: PRINT "Read from menu"
SLEEP 2
CLS
GOTO aj
ak: CLS
LINE (310, 5)-(310, 469)
LINE (650, 5)-(0, 5)
LINE (650, 32)-(0, 32)
LINE (650, 450)-(0, 450)
LINE (0, 5)-(0, 469)
LINE (639, 5)-(639, 469)
LINE (0, 470)-(640, 470)
LOCATE 2, 2: PRINT "Basic commnader"
LOCATE 2, 65: PRINT "Basic commander"
LOCATE 2, 30: PRINT "Sector 1"
LOCATE 2, 42: PRINT "Sector 2"
LOCATE 2, 20: PRINT "Help F1"
LOCATE 2, 55: PRINT "Help F1"
LOCATE 4, 2: PRINT "Enter command:run"
LOCATE 5, 2: PRINT "Maybe,the computer will restart!"
LOCATE 6, 2: PRINT "Are you sure"
LOCATE 7, 2: INPUT "you want to continue?(y/n):", a$
IF a$ = "y" THEN GOTO al
IF a$ = "n" THEN GOTO am
xxxxx: BEEP
LOCATE 8, 2: PRINT "Read from menu"
SLEEP 2
CLS
GOTO ak
al:
LOCATE 8, 2: INPUT "Can you use command?(y/n):", a$
IF a$ = "y" THEN GOTO an
IF a$ = "n" THEN GOTO ao
xxxxxx: BEEP
LOCATE 9, 2: PRINT "Read from menu"
SLEEP 2
CLS
GOTO ap
END
am: CLS
GOTO a
END
an: CLS
SHELL
CLS
GOTO a
END
ao:
LOCATE 9, 2: INPUT "Enter parametres:"; f$
CHDIR f$
CLS
SHELL
CLS
GOTO a
END
ap: CLS
LINE (310, 5)-(310, 469)
LINE (650, 5)-(0, 5)
LINE (650, 32)-(0, 32)
LINE (650, 450)-(0, 450)
LINE (0, 5)-(0, 469)
LINE (639, 5)-(639, 469)
LINE (0, 470)-(640, 470)
LOCATE 2, 2: PRINT "Basic commnader"
LOCATE 2, 65: PRINT "Basic commander"
LOCATE 2, 30: PRINT "Sector 1"
LOCATE 2, 42: PRINT "Sector 2"
LOCATE 2, 20: PRINT "Help F1"
LOCATE 2, 55: PRINT "Help F1"
LOCATE 4, 2: PRINT "Enter command:run"
LOCATE 5, 2: PRINT "Maybe,the computer will restart!"
LOCATE 6, 2: PRINT "Are you sure"
LOCATE 7, 2: PRINT "you want to continue?(y/n):y"
LOCATE 8, 2: INPUT "Can you use command?(y/n):", a$
IF a$ = "y" THEN GOTO an
IF a$ = "n" THEN GOTO ao
xxxxxxx: BEEP
LOCATE 9, 2: PRINT "Read from menu"
SLEEP 2
CLS
GOTO ap
END
ar: CLS
LINE (310, 5)-(310, 469)
LINE (650, 5)-(0, 5)
LINE (650, 32)-(0, 32)
LINE (650, 450)-(0, 450)
LINE (0, 5)-(0, 469)
LINE (639, 5)-(639, 469)
LINE (0, 470)-(640, 470)
LOCATE 2, 2: PRINT "Basic commnader"
LOCATE 2, 65: PRINT "Basic commander"
LOCATE 2, 30: PRINT "Sector 1"
LOCATE 2, 42: PRINT "Sector 2"
LOCATE 2, 20: PRINT "Help F1"
LOCATE 2, 55: PRINT "Help F1"
LOCATE 4, 2: PRINT "Enter command:cat"
LOCATE 5, 2: PRINT "Are tou sure"
LOCATE 6, 2: PRINT "you want to continue?(y/n):y"
LOCATE 7, 2: INPUT "Can you use command?(y/n):", a$
IF a$ = "y" THEN GOTO an
IF a$ = "n" THEN GOTO ao
xxxxxxxx: BEEP
LOCATE 8, 2: PRINT "Read from start"
SLEEP 2
CLS
GOTO ar
END
at:
LOCATE 9, 2: INPUT "Enter filename:"; f$
KILL f$
LOCATE 10, 2: PRINT "File delete..."
SLEEP 2
LOCATE 11, 2: INPUT "Delete next file?"; a$
av:
LOCATE 5, 2: PRINT "Command in use..."
SLEEP 2
CLS
LINE (310, 5)-(310, 469)
LINE (650, 5)-(0, 5)
LINE (650, 32)-(0, 32)
LINE (650, 450)-(0, 450)
LINE (0, 5)-(0, 469)
LINE (639, 5)-(639, 469)
LINE (0, 470)-(640, 470)
LOCATE 2, 2: PRINT "Basic commnader"
LOCATE 2, 65: PRINT "Basic commander"
LOCATE 2, 30: PRINT "Sector 1"
LOCATE 2, 42: PRINT "Sector 2"
LOCATE 2, 20: PRINT "Help F1"
LOCATE 2, 55: PRINT "Help F1"
LOCATE 4, 2: INPUT "Enter command:", a$
IF a$ = "exit" THEN GOTO b
IF a$ = "clear" THEN GOTO C
IF a$ = "quit" THEN GOTO b
IF a$ = "help" THEN GOTO d
IF a$ = "restart" THEN GOTO aaa
IF a$ = "help\sector2" THEN GOTO i
IF a$ = "help/sector2" THEN GOTO i
IF a$ = "mkdir floppy" THEN GOTO j
IF a$ = "MKDIR FLOPPY" THEN GOTO j
IF a$ = "MKDIR" THEN GOTO s
IF a$ = "mkdir" THEN GOTO s
IF a$ = "cd floppy" THEN GOTO k
IF a$ = "CD FLOPPY" THEN GOTO k
IF a$ = "cd pico" THEN GOTO L
IF a$ = "CD PICO" THEN GOTO L
IF a$ = "RM" THEN GOTO m
IF a$ = "rm" THEN GOTO m
IF a$ = "rmdir" THEN GOTO t
IF a$ = "RMDIR" THEN GOTO t
IF a$ = "mk" THEN GOTO o
IF a$ = "MK" THEN GOTO o
IF a$ = "pwd" THEN GOTO p
IF a$ = "PWD" THEN GOTO p
IF a$ = "rmdir floppy" THEN GOTO r
IF a$ = "RMDIR FLOPPY" THEN GOTO r
IF a$ = "ls" THEN GOTO u
IF a$ = "LS" THEN GOTO u
IF a$ = "cat" THEN GOTO aa
IF a$ = "CAT" THEN GOTO aa
IF a$ = "cd" THEN GOTO ab
IF a$ = "CD" THEN GOTO ab
IF a$ = "back" THEN GOTO ac
IF a$ = "BACK" THEN GOTO ac
IF a$ = "mv" THEN GOTO ad
IF a$ = "MV" THEN GOTO ad
IF a$ = "time" THEN GOTO af
IF a$ = "TIME" THEN GOTO af
IF a$ = "run" THEN GOTO az
IF a$ = "RUN" THEN GOTO az
IF a$ = "pack" THEN GOTO aad
IF a$ = "PACK" THEN GOTO aad
IF a$ = "unpack" THEN GOTO aad
IF a$ = "UNPACK" THEN GOTO aad
xxxxxxxxxxx: BEEP
LOCATE 5, 2: PRINT "unknow command"
SLEEP 2
CLS
END
az: CLS
SHELL
CLS
GOTO a
END
aaa: CLS
COLOR 14
LOCATE 5, 26: PRINT "System restart..."
LOCATE 15, 23: PRINT "Loading data"
SLEEP 2
LOCATE 15, 35: PRINT "."
SLEEP 1
LOCATE 15, 36: PRINT "."
SLEEP 1
LOCATE 15, 37: PRINT "."
SLEEP 1
LOCATE 15, 39: PRINT ":library1 0%"
SLEEP 1
LOCATE 16, 39: PRINT ":library2 0%"
SLEEP 1
LOCATE 17, 39: PRINT ":library3 0%"
SLEEP 1
LOCATE 15, 49: PRINT "25%"
SLEEP 1
LOCATE 16, 49: PRINT "25%"
SLEEP 1
LOCATE 17, 49: PRINT "25%"
LOCATE 15, 49: PRINT "50%"
LOCATE 16, 49: PRINT "42%"
LOCATE 17, 49: PRINT "47%"
SLEEP 1
LOCATE 15, 49: PRINT "68%"
LOCATE 16, 49: PRINT "72%"
LOCATE 17, 49: PRINT "87%"
SLEEP 1
LOCATE 15, 49: PRINT "100%"
LOCATE 16, 49: PRINT "100%"
LOCATE 17, 49: PRINT "100%"
SLEEP 1
LOCATE 15, 55: PRINT "Loaded!"
SLEEP 1
LOCATE 16, 55: PRINT "Loaded!"
SLEEP 1
LOCATE 17, 55: PRINT "Loaded!"
SLEEP 1
LOCATE 23, 28: PRINT "System starting..."
SLEEP 1
CLS
GOTO a
END
aab: SCREEN 0
CLS
CHDIR "c:\morcom\tools\editors"
SHELL
CLS
GOTO a
END
aac:
LOCATE 5, 2: PRINT "Parting diskette"
SLEEP 1
LOCATE 5, 18: PRINT ".."
SLEEP 1
LOCATE 5, 20: PRINT "."
SLEEP 1
LOCATE 6, 2: PRINT "Diskette disconnect!"
SLEEP 3
CLS
GOTO a
END
aad:
SCREEN 0
CHDIR "c:\morcom\tools\package"
SHELL
CLS
GOTO a
END
aae:
SCREEN 0
CHDIR "c:\morcom\tools\vc"
SHELL
CLS
GOTO a
END
aaf:
LOCATE 5, 2: INPUT "Enter parametres:"; f$
CHDIR f$
CLS
SHELL
CLS
GOTO a
END
aag:
DO
LOOP WHILE UCASE$(r$) = "Y"
CLOSE #1
OPEN "c:\morcom\tools\Redo3.dll" FOR INPUT AS #1
CLS
PRINT "Read from file:": PRINT
DO WHILE NOT EOF(1)
    LINE INPUT #1, rec$
    PRINT rec$
LOOP
CLOSE #1
PRINT
PRINT
PRINT "Press Esc to exit..."
DO
LOOP UNTIL INKEY$ = CHR$(27)
GOTO d
END
