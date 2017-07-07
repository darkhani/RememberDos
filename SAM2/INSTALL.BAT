@ECHO OFF
REM ************************************
REM *	     삼국지2 INSTALLER	       *
REM *	      KOEI  1993-12-7	       *
REM ************************************
IF "%1" == "" GOTO DEFAULT
ECHO 삼국지Ⅱ를 %1로 설치합니다.
PAUSE
MD %1\SAM2
COPY *.* %1\SAM2
%1
CD \SAM2
GOTO END

:DEFAULT
ECHO 삼국지Ⅱ를 C:\SAM2\로 설치합니다. ENTER를 치세요
:ERR1
PAUSE>NUL
IF EXIST DISK01 GOTO DK01
   ECHO 디스켓 1번을 확인하세요.
   GOTO ERR1
:DK01
MD C:\SAM2
COPY *.* C:\SAM2
DEL C:\SAM2\DISK01
DEL C:\SAM2\INSTALL.BAT
ECHO 디스켓 2번을 넣고 ENTER를 치세요.
:ERR2
PAUSE>NUL
IF EXIST DISK02 GOTO DK02
   ECHO 디스켓 2번을 확인하세요.
   GOTO ERR2
:DK02
COPY *.* C:\SAM2
DEL C:\SAM2\DISK02
DEL C:\SAM2\INSTALL.BAT
C:\
CD SAM2
ECHO INSTALL이 완료되었습니다.
ECHO 디스켓 1번을 넣고 KOEI를 치세요.
:END
