@ECHO OFF
REM ************************************
REM *	     �ﱹ��2 INSTALLER	       *
REM *	      KOEI  1993-12-7	       *
REM ************************************
IF "%1" == "" GOTO DEFAULT
ECHO �ﱹ������ %1�� ��ġ�մϴ�.
PAUSE
MD %1\SAM2
COPY *.* %1\SAM2
%1
CD \SAM2
GOTO END

:DEFAULT
ECHO �ﱹ������ C:\SAM2\�� ��ġ�մϴ�. ENTER�� ġ����
:ERR1
PAUSE>NUL
IF EXIST DISK01 GOTO DK01
   ECHO ���� 1���� Ȯ���ϼ���.
   GOTO ERR1
:DK01
MD C:\SAM2
COPY *.* C:\SAM2
DEL C:\SAM2\DISK01
DEL C:\SAM2\INSTALL.BAT
ECHO ���� 2���� �ְ� ENTER�� ġ����.
:ERR2
PAUSE>NUL
IF EXIST DISK02 GOTO DK02
   ECHO ���� 2���� Ȯ���ϼ���.
   GOTO ERR2
:DK02
COPY *.* C:\SAM2
DEL C:\SAM2\DISK02
DEL C:\SAM2\INSTALL.BAT
C:\
CD SAM2
ECHO INSTALL�� �Ϸ�Ǿ����ϴ�.
ECHO ���� 1���� �ְ� KOEI�� ġ����.
:END
