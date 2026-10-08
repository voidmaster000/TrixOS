DECLARE SUB plotter ()
DECLARE SUB converter ()
DECLARE SUB con ()
DECLARE SUB calculator ()
DECLARE SUB millos ()
DECLARE SUB boot ()
DECLARE SUB desktop ()
DECLARE SUB table ()
DECLARE SUB finder ()
DECLARE SUB clock ()
DECLARE SUB pic ()
DECLARE SUB tex ()
DECLARE SUB mus ()
DECLARE SUB delay (seconds!)
DECLARE SUB diresw ()
CLS
_TITLE "Arpan OS [V 1.0.5.0]"
COLOR 12&: PRINT "SELECT ArpanOS SCREEN SETTINGS :-"
PRINT
COLOR 8&: PRINT "1) DISABLE WINDOWS AND FULLSCREEN MODE"
COLOR 7&: PRINT "2) Windowed"
COLOR 15&: PRINT "3) EXIT"
PRINT
COLOR 10&: PRINT "NOTE - Option 1 only disables your windows for our OS but DOES NOT DELETE IT! If you want to return to windows then click ALT + ENTER 4 times"
PRINT
COLOR 5&: PRINT "This OS is totally safe!"

COLOR 15&: INPUT "Your choice? - ", zcv
SELECT CASE zcv
    CASE 1
        $RESIZE:ON
        _FULLSCREEN
        _MOUSEHIDE
    CASE 2
        $RESIZE:ON
        _MOUSESHOW
    CASE 3
        END
END SELECT

SCREEN 9
CLS
COLOR 10&, 8&
_FONT _LOADFONT("C:\windows\fonts\verdana.ttf", 13)
PRINT "Welcome to ARPAN OS Version 1.0.5.0!"
PRINT "(Made on QB64) --> By - Arpan Chatterjee @2020"
PRINT "Please read the <README FIRST!> file to know password and other things...."
passq$ = "1647"
INPUT "Enter password - ", passq$
SELECT CASE passq$
    CASE IS = "1647"
        DO
            DIM SHARED owner AS STRING
            INPUT "Please enter your name - ", owner
            INPUT "Select operating system boot option --> safe,normal or shut down - ", OS$
            IF OS$ = "safe" THEN
                CLS
                CALL boot
            ELSEIF OS$ = "normal" THEN
                CLS
                CALL load
                CALL boot
            ELSEIF OS$ = "shut down" THEN
                END
            ELSE PRINT "Not correct! Try again."
            END IF
            INPUT "Do you want to try again? y or n - ", reply$
        LOOP UNTIL reply$ = "n"
    CASE ELSE
        PLAY "a a a a"
        PRINT "Wrong Password. Calling Shutdown #ERR CODE - 127A"
END SELECT
END

SUB boot ()
    PRINT "Processing commands ..."
    SLEEP 3
    INPUT "press any key", az
    CLS
    PRINT "                       Starting OS...                                   "
    PRINT
    PRINT "                    ArpanOS v 1.0.5.0                                   "
    PRINT "                    Or Arpstar CenturonOS                               "
    PRINT "                    ----------------------                              "
    PRINT
    INPUT "100% loaded.Press any key", az
    CALL desktop
END SUB

SUB calculator ()
    DO
        REM Calculator
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

SUB con ()
    DO
        CLS
        PLAY "aacaa ac"
        PRINT "Conver on [v1.1]"
        INPUT "distance,speed or time?-", a$
        SELECT CASE a$
            CASE IS = "distance"
                INPUT "input distance in m-", b
                PRINT b; "m ="; b / 10; "dam"
                PRINT b; "m ="; b / 100; "hm"
                PRINT b; "m ="; b / 1000; "km"
                INPUT "press a key", az
                CLS
                INPUT "input distance in mm", c
                PRINT c; "mm ="; c / 10; "cm"
                PRINT c; "mm ="; c / 100; "dm"
                PRINT c; "mm ="; c / 1000; "m"
            CASE IS = "speed"
                INPUT "km/hr-", d
                PRINT d; "km/hr ="; d * 1000 / 60; "m/min"
                PRINT d; "km/hr ="; d * 1000 / 3600; "m/s"
                INPUT "m/s or m/min?-", e$
                IF e$ = "m/s" THEN
                    INPUT "m/s-", e
                    PRINT e; "m/s ="; e / 1000 / 1 / 3600; "km/hr"
                    PRINT e; "m/s ="; e / 1 / 60; "m/min"
                ELSEIF e$ = "m/min" THEN
                    INPUT "m/min-", f
                    PRINT f; "m/min ="; f / 1000 / 1 / 3600; "km/hr"
                    PRINT f; "m/min ="; f / 60; "m/s"
                END IF
            CASE IS = "time"
                INPUT "hours-", g
                PRINT g; "hours ="; g * 60; "min"
                PRINT g; "hours ="; g * 3600; "sec"
                INPUT "press a key", az
                CLS
                INPUT "sec or min?", g$
                IF g$ = "sec" THEN
                    INPUT "sec-", h
                    PRINT h; "sec ="; h / 60; "min"
                    PRINT h; "sec ="; h / 3600; "hours"
                ELSEIF g$ = "min" THEN
                    INPUT "min-", i
                    PRINT i; "min ="; i / 60; "hours"
                    PRINT i; "min ="; i * 60; "sec"
                END IF
        END SELECT
        INPUT "Do you want to repeat? y or n", k$
    LOOP UNTIL k$ = "n"
    CLS
    PRINT "Thanks for using conver on!"
END SUB

SUB converter ()
    CLS
    PRINT "Conver on [v1.1]"
    INPUT "enter password-", q
    IF q = 1647 THEN
        CALL con
    ELSE PRINT "Wrong password!"
        PLAY "aaaa"
    END IF
END SUB

SUB desktop ()
    CLS
    CALL millos
END SUB

SUB millos ()
    PLAY "f36 c45 e12"
    PRINT "CUI screen"
    PRINT "COMMANDS - dir, cls, calculator, converter, plotter, tables, finder, clock, picviewer, text editor, stopwatch, music player, exit, comp info, dirchange"
    DO
        INPUT "COMMAND -> ", com$
        SELECT CASE com$
            CASE "dir"
                PRINT "COMP INFO,CALCULATOR,CONVERTER,FINDER,PLOTTER,STOPWATCH,TABLES,CLOCK,PICVIEWER,TEXT EDITOR,MUSIC PLAYER,DIRCHANGE"
            CASE "calculator"
                CALL calculator
            CASE "converter"
                CALL converter
            CASE "setting"
                CALL desktop
            CASE "comp info"
                DO
                    CLS
                    LOCATE 1, 80: COLOR 2&: PRINT "ArpanOS [V 1.0.5.0]"
                    PRINT
                    COLOR 6&: PRINT "This copy of ArpanOS (CENTURON OS) is registered to - "; owner
                    PRINT
                    PRINT "Thanks for installing ArpanOS (CENTURON OS)"
                    PRINT
                    PRINT "OS RUNNING SYSTEM TIME = "; TIME$
                    PRINT "OS SYSTEM DATE = "; DATE$
                    PRINT
                    PRINT "Press any key"
                    _DISPLAY
                    _LIMIT 1
                LOOP UNTIL INKEY$ <> ""
                PRINT
                COLOR 15&: INPUT "D you want to change any settings? - y or n = ", sett$
                IF sett$ = "y" THEN
                    CLS
                    PRINT "******************************"
                    PRINT
                    INPUT "Enter new username - ", owner
                    PRINT "OK. Username is changed!"
                    PRINT "New user name - "; owner
                    PRINT
                    PRINT "******************************"
                END IF
                PRINT "Now exiting comp info"
                INPUT "Press any key", zzzx$
                CLS
                COLOR 10&, 8&
            CASE "plotter"
                CALL plotter
            CASE "tables"
                CALL table
            CASE "finder"
                CALL finder
            CASE "clock"
                CALL clock
            CASE "picviewer"
                CALL pic
            CASE "text editor"
                CALL tex
            CASE "music player"
                CALL mus
            CASE "dirchange"
                CALL diresw
            CASE "stopwatch"
                CALL stpw
            CASE "cls"
                CLS
            CASE "exit"
                PRINT "Please wait..."
                SLEEP 2
                CLS
                PLAY "a12 c34 d45 e10"
                PRINT "ACKNOWLEDGEMENT (Please read it!) -> Thanks for using our OS.If you see any bug then please inform us at our website - www.aicpl.com OR mail at - arpanchatterjee1647@gmail.com. The maker of this operating system is Arpan Chatterjee."
                INPUT "Press any key", az
            CASE ELSE
                BEEP
                PRINT "Wrong input.Please try again."
        END SELECT
    LOOP UNTIL com$ = "exit"
END SUB

SUB plotter ()
    ' Values for keys on the numeric keypad and the spacebar:
    CONST UP = 72, DOWN = 80, LFT = 75, RGHT = 77
    CONST UPLFT = 71, UPRGHT = 73, DOWNLFT = 79, DOWNRGHT = 81
    CONST SPACEBAR = " "

    ' Null$ is the first character of the two-character INKEY$
    ' value returned for direction keys such as UP and DOWN:
    Null$ = CHR$(0)
    ' Plot$ = "" means draw lines; Plot$ = "B" means
    ' move graphics cursor, but don't draw lines:
    Plot$ = ""
    CLS
    PRINT "Welcome to centuron plotter draw!"
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT "Use the cursor movement keys to draw lines."
    PRINT "Press spacebar to toggle line drawing on and off."
    PRINT "Press <ENTER> to begin. Press q to end the program."
    DO: LOOP WHILE INKEY$ = ""

    SCREEN 1

    DO
        SELECT CASE KeyVal$
            CASE Null$ + CHR$(UP)
                DRAW Plot$ + "C1 U2"
            CASE Null$ + CHR$(DOWN)
                DRAW Plot$ + "C1 D2"
            CASE Null$ + CHR$(LFT)
                DRAW Plot$ + "C2 L2"
            CASE Null$ + CHR$(RGHT)
                DRAW Plot$ + "C2 R2"
            CASE Null$ + CHR$(UPLFT)
                DRAW Plot$ + "C3 H2"
            CASE Null$ + CHR$(UPRGHT)
                DRAW Plot$ + "C3 E2"
            CASE Null$ + CHR$(DOWNLFT)
                DRAW Plot$ + "C3 G2"
            CASE Null$ + CHR$(DOWNRGHT)
                DRAW Plot$ + "C3 F2"
            CASE SPACEBAR
                IF Plot$ = "" THEN Plot$ = "B " ELSE Plot$ = ""
            CASE ELSE
                ' The user pressed some key other than one of the
                ' direction keys, the spacebar, or "q," so
                ' don't do anything.
        END SELECT

        KeyVal$ = INKEY$

    LOOP UNTIL KeyVal$ = "q"

    SCREEN 9 ' Restore the screen to 80-column
    COLOR 10&, 8& ' text mode and end.
    _FONT _LOADFONT("C:\windows\fonts\verdana.ttf", 13)
    CLS
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

SUB finder
    DO
        CLS
        PLAY "e24 a19 b33 d10"
        PRINT "WELCOME TO FINDER (AREA and PERIMETER)! (V1.0.0.0)"
        PRINT "Note - no units supported.Use only numbers."
        INPUT "Area or perimeter? ", sub$
        SELECT CASE sub$
            CASE "area"
                DO
                    INPUT "Which shape? (rectangle, square, triangle) - ", shape$
                    IF shape$ = "rectangle" THEN
                        INPUT "Length - ", length
                        INPUT "Breadth - ", breadth
                        PRINT "Rectangle area ="; length * breadth
                    ELSEIF shape$ = "square" THEN
                        INPUT "Side size - ", side
                        PRINT "Square area ="; 2 * side
                    ELSEIF shape$ = "triangle" THEN
                        INPUT "Base = ", bas
                        INPUT "Height = ", height
                        PRINT "Triangle area ="; 1 / 2 * bas * height
                    ELSE PRINT "Shape not supported! Try another shape."
                    END IF
                    INPUT "Do you want to try again? y or n - ", ans$
                LOOP UNTIL ans$ = "n"
            CASE "perimeter"
                DO
                    INPUT "Which shape? (rectangle, square, triangle, regular polygon) - ", shape$
                    IF shape$ = "rectangle" THEN
                        INPUT "Length - ", length
                        INPUT "Breadth - ", breadth
                        PRINT "Perimeter of rectangle ="; 2 * (length + breadth)
                    ELSEIF shape$ = "square" THEN
                        INPUT "Side size - ", side
                        PRINT "Square perimeter ="; 4 * side
                    ELSEIF shape$ = "triangle" THEN
                        INPUT "Side size - ", side
                        PRINT "Triangle perimeter ="; 3 * side
                    ELSEIF shape$ = "regular polygon" THEN
                        INPUT "No. of sides - ", no
                        INPUT "Side size - ", side
                        PRINT "Polygon perimeter ="; no * side
                    ELSE PRINT "Shape not supported! Try another shape."
                    END IF
                    INPUT "Do you want to try again? y or n - ", ans$
                LOOP UNTIL ans$ = "n"
        END SELECT
        INPUT "Do you want to repeat? y or n - ", end$
    LOOP UNTIL end$ = "n"
END SUB

SUB clock
    DO
        CLS
        PRINT "CLOCK (24-HOUR FORMAT)"
        PRINT "TIME - "; TIME$
        PRINT "DATE - "; DATE$
        PRINT "Press esc to exit"
        _DISPLAY
        _LIMIT 1
    LOOP UNTIL INKEY$ = CHR$(27)

END SUB

SUB pic
    DO
        CLS
        _TITLE "Picviewer [V 1.5.0.0]"
        SCREEN _NEWIMAGE(1450, 550, 32)
        CLS , _RGB(0, 0, 0)
        INPUT "Enter directory - ", di$
        CHDIR di$
        INPUT "Enter name of picture (extension to be added) (.jpg, .bmp and .png files supported) - ", a$
        i = _LOADIMAGE(a$)
        _PUTIMAGE (0, 0), i
        INPUT "Do you want to repeat? y or n - ", rep$
    LOOP UNTIL rep$ = "n"
    SCREEN 9
    a& = _LOADFONT("C:\windows\fonts\verdana.ttf", 13)
    _FONT a&
    COLOR 10&, 8&
END SUB

SUB tex
    DO
        CLS
        _TITLE "Text editor"
        INPUT "Enter directory - ", di$
        CHDIR di$
        INPUT "Enter new or existing filename(With extension) - ", na$
        OPEN na$ FOR OUTPUT AS #1
        INPUT "Edit text here - ", te$
        PRINT #1, te$
        PRINT "Your file has been edited!"
        PRINT "Find your file at"; di$
        INPUT "Do you want to try again? y or n - ", kl$
    LOOP UNTIL kl$ = "n"
END SUB

SUB mus
    CLS
    _TITLE "Music player"
    PRINT "Welcome to Music player! [V 1.0.0.0]"
    INPUT "Enter directory - ", dires$
    CHDIR dires$
    INPUT "Please enter name of song (with extension) (in the current directory only) - ", a$
    h& = _SNDOPEN(a$)
    INPUT "Are you ready to play? press s to stop , p to pause , e to exit and r to resume - y or n? = ", opi$
    _SNDPLAY (h&)
    DO
        s$ = INKEY$
        SELECT CASE s$
            CASE "s"
                _SNDSTOP (h&)
            CASE "p"
                _SNDPAUSE (h&)
            CASE "r"
                _SNDPLAY (h&)
            CASE "e"
                CLS
                EXIT DO
        END SELECT
    LOOP
END SUB

SUB delay
    DO WHILE azx = 0
        _DELAY 0.5
    LOOP
END SUB

SUB load
    LOCATE 1, 1
    PRINT "ArpanOS [V 1.0.5.0]"
    PRINT "Press Enter key"
    PRINT "After pressing the key, please wait for some time until the OS is loaded on memory.This WILL NOT ERASE your existing OS."
    DO WHILE INKEY$ = ""
    LOOP
    CLS
    SCREEN 12
    LOCATE 10, 33
    PRINT "LOADING...."
    LOCATE 11, 23: PRINT "ษออออออออออออออออออออออออออออออป"
    LOCATE 12, 23: PRINT "บ                              บ"
    LOCATE 13, 23: PRINT "ศออออออออออออออออออออออออออออออผ"
    FOR loading = 1 TO 30
        TEXT$ = TEXT$ + "ฑ"
        LOCATE 12, 24: PRINT TEXT$
        s = s + 3
        IF s = 90 THEN
            s = 100
        END IF
        LOCATE 14, 32: PRINT s; "% LOADED"
        _DELAY INT(RND * 3)
    NEXT loading
    LOCATE 2, 1
    PRINT "PROGRAM LOADED TO MEMORY = SUCCESS!"
    INPUT "Press any key", anykey$
    SCREEN 9
    COLOR 10&, 8&
    _FONT _LOADFONT("C:\windows\fonts\verdana.ttf", 13)
END SUB

SUB diresw
    INPUT "Enter directory - ", dirts$
    CHDIR dirts$
END SUB

SUB stpw
    REM A stopwatch with alarm
    CLS
    PRINT "STOPWATCH WITH ALARM"
    INPUT "Enter what do you want - 1 - Timer or 2 - Stopwatch = ", deco
    CLS
    IF deco = 1 THEN
        INPUT "Enter for how many seconds you want the timer = ", uset
        DO

            CLS
            LET sec = sec + 1
            PRINT "Watch ="; day; "Days"; hou; "Hours"; mins; "Minutes"; sec; "Seconds"
            PRINT "Or"
            PRINT "                                    TIMER"
            PRINT "                                 *********"
            PRINT USING "                                 | ##:##:## |"; hou; mins; sec
            PRINT "                                 *********"
            PRINT
            PRINT "System time = "; TIME$
            IF sec = 60 THEN
                mins = mins + 1
                sec = 0
            ELSEIF mins = 60 THEN
                hou = hou + 1
            ELSEIF hou = 24 THEN
                day = day + 1
            END IF
            _DELAY 1
        LOOP UNTIL sec = uset
        IF sec = uset THEN
            DO
                CLS
                PRINT sec; "seconds over!"
                PRINT "Press any key"
                BEEP
                _DISPLAY
                _LIMIT 1
            LOOP UNTIL INKEY$ <> ""
        END IF
        PRINT "FACTS - This timer is 0.001 millisecond accurate!"
        INPUT "Press any key", zzzx$
    ELSEIF deco = 2 THEN
        DO
            CLS
            LET milli = milli + 1
            PRINT USING "Stopwatch - ##:##:##:##"; hour; minutes; seconds; milli
            PRINT
            PRINT "Press any key"
            IF milli = 9 THEN
                seconds = seconds + 1
                milli = 1
            ELSEIF seconds = 59 THEN
                minutes = minutes + 1
                seconds = 0
            ELSEIF minutes = 60 THEN
                hour = hour + 1
            END IF
            _DELAY 0.1
        LOOP UNTIL INKEY$ <> ""
        CLS
        PRINT "The ending time was -"; hour; ":"; minutes; ":"; seconds; ":"; milli
    END IF
END SUB
