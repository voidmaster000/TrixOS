$EXEICON:'trixos.ico'
DECLARE SUB millos ()
DECLARE SUB calculator ()
DECLARE SUB con ()
DECLARE SUB table ()
DECLARE SUB arper ()
DECLARE SUB tex ()
DECLARE SUB mus ()
DECLARE SUB load ()
DECLARE SUB desktop ()

CHDIR "."
SCREEN 9
COLOR 15, 1
_TITLE "TrixOS 2.0"
PRINT "SELECT SCREEN MODE :-"
PRINT "1) WINDOWED"
PRINT "2) FULLSCREEN"
INPUT "Enter your choice (1 or 2): ", zcv
SELECT CASE zcv
    CASE 1
        ' windowed (default)
    CASE 2
        _FULLSCREEN
END SELECT
CALL load
CLS
CLS
DIM theme AS INTEGER
INPUT "Select Theme (1-Dark, 2-Light): ", theme
SELECT CASE theme
    CASE 1
        COLOR 8, 0
    CASE 2
        COLOR 15, 1
END SELECT
DIM SHARED owner AS STRING
DIM SHARED comq AS STRING
DIM SHARED comcount AS INTEGER
CLS
PRINT "Welcome to TrixOS Version 2.0!"
PRINT "Made By - Arpan Chatterjee"
PRINT "Please read the 'README FIRST.TXT' file to know password and other things...."
PRINT "Note - If you want to return to Windows then click ALT + ENTER 4 times."
passq$ = "1647"
PRINT
LOCATE 8, 15: PRINT "ษอออออออออออออออออออออออออออออออออออออออออออออป"
LOCATE 9, 15: PRINT "บ LOGIN TO TrixOS :-                          บ"
LOCATE 10, 15: PRINT "บ                                             บ"
LOCATE 11, 15: PRINT "บ Password  -                                 บ"
LOCATE 12, 15: PRINT "ศอออออออออออออออออออออออออออออออออออออออออออออผ"
LOCATE 10, 17: INPUT "Your name - ", owner
LOCATE 11, 17: INPUT "Password  - ", passq$
OPEN "run.trx" FOR OUTPUT AS #10
PRINT #10, "Last Run Time: " + DATE$ + " " + TIME$
PRINT #10, "Last User: " + owner
CLOSE #10
IF passq$ = "1647" THEN
    DO
        CALL millos
        INPUT "Do you want to try again? y or n - ", reply$
    LOOP UNTIL reply$ = "n"
    LOCATE 12, 21: PRINT "Shutting down TrixOS. Please wait..."
    SLEEP 2
    SYSTEM
ELSE
    PLAY "c c c c"
    LOCATE 13, 38: PRINT "Wrong Password. Calling Shutdown #ERR CODE - 127A"
    SLEEP 2
    SYSTEM
END IF

SUB millos
    PLAY "f36 c45 e12"
    DO
        CLS
        CALL desktop
        comcount = comcount + 1
        SELECT CASE comq$
            CASE "applist"
                LOCATE 6, 3: PRINT "Apps available = calculator, converter, tables, arper,"
                LOCATE 7, 3: PRINT "text editor, music player"
                LOCATE 9, 3: INPUT "Press any key", az$
            CASE "dir"
                LOCATE 5, 4: PRINT "  ษอออออออออออออออออออออออออออออออป"
                LOCATE 6, 4: PRINT "  บ Disk C: label = TrixOS vDISK  บ"
                LOCATE 7, 4: PRINT "  บ Disk C: size = 50 MB          บ"
                LOCATE 8, 4: PRINT "  บ Space left = 30 MB            บ"
                LOCATE 9, 4: PRINT "  บ Number of files = 7           บ"
                LOCATE 10, 4: PRINT "  บ                               บ"
                LOCATE 11, 4: PRINT "  บ Files of C: :-                บ"
                LOCATE 12, 4: PRINT "  ฬอออออออออออออออออออออออออออออออน"
                LOCATE 13, 4: PRINT "  บ 1) calculator.sim      2 MB   บ"
                LOCATE 14, 4: PRINT "  บ 2) converter.sim       3 MB   บ"
                LOCATE 15, 4: PRINT "  บ 3) arper.sim           3 MB   บ"
                LOCATE 16, 4: PRINT "  บ 4) music player.sim    2 MB   บ"
                LOCATE 17, 4: PRINT "  บ 5) text editor.sim     2 MB   บ"
                LOCATE 18, 4: PRINT "  บ 6) passinfo.sys        1 MB   บ"
                LOCATE 19, 4: PRINT "  บ 7) KERNEL1             7 MB   บ"
                LOCATE 20, 4: PRINT "  ศอออออออออออออออออออออออออออออออผ"
                LOCATE 21, 4: INPUT "Press any key", az$
            CASE "calculator"
                CALL calculator
            CASE "converter"
                CALL con
            CASE "tables"
                CALL table
            CASE "arper"
                CALL arper
            CASE "text editor"
                CALL tex
            CASE "music player"
                CALL mus
            CASE "cls"
                CLS
            CASE "exit"
                LOCATE 5, 3: PRINT "Please wait..."
                SLEEP 2
                CLS
                PLAY "a12 c34 d45 e10"
                PRINT "ACKNOWLEDGEMENT (Please read it!) -> Thanks for using our OS. If you see any bug"
                PRINT "then please mail us at - arpanchatterjee1647@gmail.com. The maker of this"
                PRINT "operating system is Arpan Chatterjee."
                PRINT "Our Website - https://unqiueapps.godaddysites.com/"
                INPUT "Press any key", az
            CASE ELSE
                BEEP
                LOCATE 5, 3: PRINT "Wrong input.Please try again."
                comcount = comcount - 1
                SLEEP 1
        END SELECT
    LOOP UNTIL comq$ = "exit"
END SUB

SUB calculator
    DO
        CLS
        PLAY "a12 c16 v56 c47"
        PRINT "Calculator [V 5.2]"
        PRINT "note - operation codes ---> + , - , * , /, %"
        DIM a AS INTEGER
        DIM b AS INTEGER
        INPUT "number 1 = ", a
        INPUT "number 2 = ", b
        INPUT "operation = ", c$
        SELECT CASE c$
            CASE "+"
                PLAY "a12 c16 v56 c47 a12"
                PRINT a; "+"; b; "="; a + b
            CASE "-"
                PLAY "a12 c16 v56 c47 a12"
                PRINT a; "-"; b; "="; a - b
            CASE "*"
                PLAY "a12 c16 v56 c47 a12"
                PRINT a; "*"; b; "="; a * b
            CASE "/"
                PLAY "a12 c16 v56 c47 a12"
                PRINT a; "/"; b; "="; a / b
            CASE "%"
                PLAY "a12 c16 v56 c47 a12"
                PRINT a; "/"; b; "* 100 ="; a / b * 100; "%"
            CASE ELSE
                PLAY "a,a,a"
                PRINT "Wrong input!"
                PRINT "Please input + , - , * , / or %"
        END SELECT
        INPUT "Repeat ? (y or n) --->", z$
    LOOP UNTIL z$ = "n"
    CLS
    PRINT "Thanks for using calculator!"
END SUB

SUB con
    DO
        CLS
        PRINT "Conver on [v2.8]"
        PRINT "What do you want to convert? 1 - Distance, 2 - Mass, 3 - Quantity or 4 - Time?"
        INPUT ">>> ", a
        SELECT CASE a
            CASE 1
                PRINT "Which unit you want to convert to:-"
                PRINT "1) km to m"
                PRINT "2) km to cm"
                PRINT "3) km to mm"
                PRINT "4) m to km"
                PRINT "5) m to cm"
                PRINT "6) m to mm"
                PRINT "7) cm to km"
                PRINT "8) cm to m"
                PRINT "9) cm to mm"
                PRINT "10) mm to km"
                PRINT "11) mm to m"
                PRINT "12) mm to cm"
                PRINT
                INPUT "Input the option number - ", b
                SELECT CASE b
                    CASE 1
                        INPUT "km - ", km
                        PRINT km; "km ="; km * 1000; "m"
                    CASE 2
                        INPUT "km - ", km
                        PRINT km; "km ="; km * 100000; "cm"
                    CASE 3
                        INPUT "km - ", km
                        PRINT km; "km ="; km * 1000000; "mm"
                    CASE 4
                        INPUT "m - ", m
                        PRINT m; "m ="; m / 1000; "km"
                    CASE 5
                        INPUT "m - ", m
                        PRINT m; "m ="; m * 100; "cm"
                    CASE 6
                        INPUT "m - ", m
                        PRINT m; "m ="; m * 1000; "mm"
                    CASE 7
                        INPUT "cm - ", cm
                        PRINT cm; "cm ="; cm / 100000; "km"
                    CASE 8
                        INPUT "cm - ", cm
                        PRINT cm; "cm ="; cm / 100; "m"
                    CASE 9
                        INPUT "cm - ", cm
                        PRINT cm; "cm ="; cm * 10; "mm"
                    CASE 10
                        INPUT "mm - ", mm
                        PRINT mm; "mm ="; mm / 1000000; "km"
                    CASE 11
                        INPUT "mm - ", mm
                        PRINT mm; "mm ="; mm / 1000; "m"
                    CASE 12
                        INPUT "mm - ", mm
                        PRINT mm; "mm ="; mm / 10; "cm"
                END SELECT
            CASE 2
                PRINT "Which unit you want to convert to:-"
                PRINT "1) kg to g"
                PRINT "2) kg to mg"
                PRINT "3) g to kg"
                PRINT "4) g to mg"
                PRINT "5) mg to kg"
                PRINT "6) mg to g"
                PRINT
                INPUT "Input the option number - ", b
                SELECT CASE b
                    CASE 1
                        INPUT "kg - ", kg
                        PRINT kg; "kg ="; kg * 1000; "g"
                    CASE 2
                        INPUT "kg - ", kg
                        PRINT kg; "kg ="; kg * 1000000; "mg"
                    CASE 3
                        INPUT "g - ", g
                        PRINT g; "g ="; g / 1000; "kg"
                    CASE 4
                        INPUT "g - ", g
                        PRINT g; "g ="; g * 1000; "mg"
                    CASE 5
                        INPUT "mg - ", mg
                        PRINT mg; "mg ="; mg / 1000000; "kg"
                    CASE 6
                        INPUT "mg - ", mg
                        PRINT mg; "mg ="; mg / 1000; "g"
                END SELECT
            CASE 3
                PRINT "Which unit you want to convert to:-"
                PRINT "1) kl to l"
                PRINT "2) kl to mg"
                PRINT "3) l to kl"
                PRINT "4) l to ml"
                PRINT "5) ml to kl"
                PRINT "6) ml to l"
                PRINT
                INPUT "Input the option number - ", b
                SELECT CASE b
                    CASE 1
                        INPUT "kl - ", kl
                        PRINT kl; "kl ="; kl * 1000; "l"
                    CASE 2
                        INPUT "kl - ", kl
                        PRINT kl; "kl ="; kl * 1000000; "ml"
                    CASE 3
                        INPUT "l - ", l
                        PRINT l; "l ="; l / 1000; "kl"
                    CASE 4
                        INPUT "l - ", l
                        PRINT l; "l ="; l * 1000; "ml"
                    CASE 5
                        INPUT "ml - ", ml
                        PRINT ml; "ml ="; ml / 1000000; "kl"
                    CASE 6
                        INPUT "ml - ", ml
                        PRINT ml; "ml ="; ml / 1000; "l"
                END SELECT
            CASE 4
                PRINT "Which unit you want to convert to:-"
                PRINT "1) second to minute"
                PRINT "2) second to hour"
                PRINT "3) minute to second"
                PRINT "4) minute to hour"
                PRINT "5) hour to second"
                PRINT "6) hour to minute"
                INPUT "Input the option number - ", b
                SELECT CASE b
                    CASE 1
                        INPUT "second(s) - ", sec
                        PRINT sec; "second(s) ="; sec / 60; "minute(s)"
                    CASE 2
                        INPUT "second(s) - ", sec
                        PRINT sec; "second(s) ="; sec / 3600; "hour(s)"
                    CASE 3
                        INPUT "minute(s) - ", min
                        PRINT min; "minute(s) ="; min * 60; "second(s)"
                    CASE 4
                        INPUT "minute(s) - ", min
                        PRINT min; "minute(s) ="; min / 60; "hour(s)"
                    CASE 5
                        INPUT "hour(s) - ", hou
                        PRINT hou; "hour(s) ="; hou * 3600; "second(s)"
                    CASE 6
                        INPUT "hour(s) - ", hou
                        PRINT hou; "hour(s) ="; hou * 60; "minute(s)"
                END SELECT
        END SELECT
        INPUT "Do you want to repeat? (Y / N) - ", k$
    LOOP UNTIL UCASE$(k$) = "N"
    CLS
    PRINT "Thanks for using conver on!"
END SUB

SUB table
    DO
        CLS
        INPUT "Table of=", a
        PRINT a; "x 1 ="; a * 1
        PRINT a; "x 2 ="; a * 2
        PRINT a; "x 3 ="; a * 3
        PRINT a; "x 4 ="; a * 4
        PRINT a; "x 5 ="; a * 5
        PRINT a; "x 6 ="; a * 6
        PRINT a; "x 7 ="; a * 7
        PRINT a; "x 8 ="; a * 8
        PRINT a; "x 9 ="; a * 9
        PRINT a; "x 10 ="; a * 10
        INPUT "Do you want to end? (y or n)", x$
    LOOP UNTIL x$ = "y"
END SUB

SUB arper
    DO
        CLS
        PLAY "e24 a19 b33 d10"
        PRINT "WELCOME TO Arper (AREA and PERIMETER finder)! (V1.0.0.0)"
        PRINT "Note - no units supported. Use only numbers."
        INPUT "Input option (1 - area or 2 - perimeter)? ", subq
        IF subq = 1 THEN
            DO
                INPUT "Which shape? Enter number (1 - rectangle, 2 - square, 3 - right triangle) - ", shape
                SELECT CASE shape
                    CASE 1
                        INPUT "Length - ", length
                        INPUT "Breadth - ", breadth
                        PRINT "Rectangle area ="; length * breadth
                    CASE 2
                        INPUT "Side size - ", side
                        PRINT "Square area ="; side + side
                    CASE 3
                        INPUT "Base = ", bas
                        INPUT "Height = ", height
                        PRINT "Triangle area ="; 1 / 2 * bas * height
                    CASE ELSE
                        PRINT "Shape not supported! Try another shape."
                END SELECT
                INPUT "Do you want to try again? y or n - ", ans$
            LOOP UNTIL ans$ = "n"
        ELSEIF subq = 2 THEN
            DO
                INPUT "Which shape? Enter number (1 - rectangle, 2 - square, 3 - triangle, 4 - regular polygon) - ", shape
                SELECT CASE shape
                    CASE 1
                        INPUT "Length - ", length
                        INPUT "Breadth - ", breadth
                        PRINT "Perimeter of rectangle ="; 2 * (length + breadth)
                    CASE 2
                        INPUT "Side size - ", side
                        PRINT "Square perimeter ="; 4 * side
                    CASE 3
                        INPUT "Side size - ", side
                        PRINT "Triangle perimeter ="; 3 * side
                    CASE 4
                        INPUT "No. of sides - ", no
                        INPUT "Side size - ", side
                        PRINT "Polygon perimeter ="; no * side
                    CASE ELSE
                        PRINT "Shape not supported! Try another shape."
                END SELECT
                INPUT "Do you want to try again? y or n - ", ans$
            LOOP UNTIL ans$ = "n"
        END IF
        INPUT "Do you want to repeat? y or n - ", end$
    LOOP UNTIL end$ = "n"
END SUB

SUB tex
    DO
        CLS
        _TITLE "Text editor"
        INPUT "Enter directory - ", di$
        CHDIR di$
        INPUT "Enter new or existing filename (With extension - .txt) - ", na$
        OPEN na$ FOR OUTPUT AS #1
        INPUT "Edit text here (Maximum 255 characters) - ", te$
        PRINT #1, te$
        PRINT "Your file has been edited!"
        PRINT "Find your file at - "; di$
        INPUT "Do you want to try again? y or n - ", kl$
    LOOP UNTIL kl$ = "n"
END SUB

SUB mus
    CLS
    _TITLE "Music player"
    PRINT "Welcome to Music player! [V 1.0.0.0]"
    INPUT "Enter directory - ", dires$
    CHDIR dires$
    INPUT "Please enter name of song (with extension (.wav, .ogg or .mp3 files only)) (in the entered directory only) - ", a$
    h& = _SNDOPEN(a$)
    INPUT "Enter volume (integer from 0 to 10) - ", v
    SELECT CASE v
        CASE 0
            _SNDVOL h&, 0
        CASE 1
            _SNDVOL h&, 0.1
        CASE 2
            _SNDVOL h&, 0.2
        CASE 3
            _SNDVOL h&, 0.3
        CASE 4
            _SNDVOL h&, 0.4
        CASE 5
            _SNDVOL h&, 0.5
        CASE 6
            _SNDVOL h&, 0.6
        CASE 7
            _SNDVOL h&, 0.7
        CASE 8
            _SNDVOL h&, 0.8
        CASE 9
            _SNDVOL h&, 0.9
        CASE 10
            _SNDVOL h&, 1
        CASE ELSE
            PRINT "You should enter an integer from 1 to 10. Exiting..."
            SLEEP 2
            CALL millos
    END SELECT
    INPUT "Are you ready to play? press s to stop , p to pause , e to exit and r to resume - y or n? = ", opi$
    IF h& = 0 THEN
        PRINT "Not a valid sound file. Exiting..."
        SLEEP 2
        CALL millos
    END IF
    _SNDPLAY h&
    DO
        s$ = INKEY$
        SELECT CASE s$
            CASE "s"
                _SNDSTOP h&
            CASE "p"
                _SNDPAUSE h&
            CASE "r"
                _SNDPLAY h&
            CASE "e"
                CLS
                EXIT DO
        END SELECT
    LOOP
END SUB

SUB load
    CLS
    SCREEN 12
    LINE (5, 6)-(634, 450), 12, B
    LOCATE 28, 60
    COLOR 8, 0
    PRINT "### Unique Apps ###"
    LOCATE 7, 2
    COLOR 3, 0
    PRINT "  _______    ________     _________    _     _       _________    _________"
    LOCATE 8, 2
    COLOR 3, 0
    PRINT " |_______|  |  ____  |   |_________|  | \   / |     |  _____  |  | ________|"
    LOCATE 9, 2
    COLOR 3, 0
    PRINT "    | |     | |____|_|       | |       \ \_/ /  __  | |     | |  | |_______"
    LOCATE 10, 2
    COLOR 3, 0
    PRINT "    | |     | _____ \        | |        | _ |  |__| | |     | |  |________ |"
    LOCATE 11, 2
    COLOR 3, 0
    PRINT "    | |     | |    \ \    ___|_|___    / / \ \      | |_____| |   _______| |"
    LOCATE 12, 2
    COLOR 3, 0
    PRINT "    |_|     |_|     |_|  |_________|  |_/   \_|     |_________|  |_________|"
    LOCATE 5, 32
    COLOR 8, 0
    PRINT "Starting TrixOS..."
    LOCATE 18, 34
    COLOR 8, 0
    PRINT "LOADING...."
    LINE (119, 303)-(521, 320), 15, B
    FOR loading = 1 TO 100
        IF loading MOD 2 = 0 THEN
            TEXT$ = TEXT$ + "Û"
        END IF
        LOCATE 20, 16
        COLOR 1, 0
        PRINT TEXT$
        s = s + 1
        LOCATE 22, 33
        COLOR 8, 0
        PRINT s; "% LOADED"
        _DELAY 0.1 * RND
    NEXT loading
    COLOR 15, 0
    SLEEP 2
    CLS
    SLEEP 1
    SCREEN 9
    COLOR 15, 1
    LOCATE 12, 38
    PRINT "Hi!"
    SLEEP 2
    LOCATE 12, 31
    PRINT "Welcome to TrixOS."
    SLEEP 2
END SUB

SUB desktop
    LOCATE 4, 24: PRINT "บ CUI Screen บ"
    LOCATE 5, 24: PRINT "ศออออออออออออผ"
    FOR i = 3 TO 24
        LOCATE i, 60: PRINT "บ"
    NEXT i
    FOR i = 2 TO 59
        LOCATE 2, i: PRINT "อ"
    NEXT i
    LOCATE 2, 60: PRINT "ห"
    FOR i = 61 TO 79
        LOCATE 2, i: PRINT "อ"
    NEXT i
    LOCATE 24, 60: PRINT "สอออออออออออออออออออ"
    LOCATE 23, 80: PRINT "ผ"
    FOR i = 1 TO 22
        LOCATE i, 80: PRINT "บ"
    NEXT i
    LOCATE 1, 80: PRINT "ป"
    FOR i = 2 TO 22
        LOCATE i, 1: PRINT "บ"
    NEXT i
    LOCATE 1, 1: PRINT "ษ"
    LOCATE 23, 1: PRINT "ศ"
    FOR i = 2 TO 59
        LOCATE 23, i: PRINT "อ"
    NEXT i
    LOCATE 1, 24: PRINT "หออออออออออออห"
    LOCATE 3, 62: PRINT "InfoBar"
    LOCATE 4, 60: PRINT "ฬอออออออออออออออออออน"
    LOCATE 5, 62: PRINT "Current User:"
    LOCATE 6, 62: PRINT owner
    LOCATE 8, 62: PRINT "Today's date:"
    LOCATE 9, 62: PRINT DATE$
    LOCATE 11, 62: PRINT "No. of commands"
    LOCATE 12, 62: PRINT "entered till now:"
    LOCATE 13, 62: PRINT comcount
    LOCATE 15, 62: PRINT "Supported"
    LOCATE 16, 62: PRINT "commands:-"
    LOCATE 17, 62: PRINT "dir, cls,"
    LOCATE 18, 62: PRINT "exit, applist"
    LOCATE 19, 60: PRINT "ฬอออออออออออออออออออน"
    LOCATE 21, 65: PRINT "TrixOS 2.0"
    LOCATE 4, 3: INPUT "COMMAND -> ", comq$
END SUB
