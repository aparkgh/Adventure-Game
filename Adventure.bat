@echo off
color 0A
title Choose your adventure
cls

:start
cls
echo        	  	  	\------____--+-----------------------------------+--____------/
echo      	  	   	 \-----____--! - - CHOOSE - YOUR - ADVENTURE - - !--____-----/
echo 	  	    	  \----____--!- - - - - - - - - - - - - - - - - -!--____----/
echo            	     	   \---____--!- [P] Play -[H] Help  -[E] Exit - -!--____---/
echo             	      	    \---___--+-----------------------------------+--___---/
echo            	               	     !                                   !
echo            	               	     !       A Batch Project by:         !          
echo            	               	     !          Andrew Park              ! 
echo             	               	     !                                   ! 
echo             	               	     !   Hope you enjoy the project :)   ! 
echo             	               	     +-----------------------------------+
echo.    
echo.
set /p start=
if %start%== P goto play
if %start%== p goto play
if %start%== H goto help
if %start%== h goto help
if %start%== E goto exit
if %start%== e goto exit
if %start%== secret goto secretcode
cls

:fail1
cls
echo Being the curious Wizard you are, you apporach the door. You open
echo the door, and a blast of hot air hits you. It's so hot! You
echo cannot do anything but watch your body burn to death.
echo THE END. Select another character? or Exit?
echo [S] Select another character [E] Exit
echo.
set /p start=
if %start%== S goto play
if %start%== s goto play
if %start%== E goto exit
if %start%== e goto exit
cls

:secretcode
cls
echo You have unlocked a secret!
echo Go to the menu, go on the character page, and when you do,
echo type in this special code: 'ninja' ! You will unlock a 
echo Ninja! Good luck, and bye bye!
echo Press any key to go back to the menu!
pause>nul
goto start
cls

:help
cls
echo Welcome to the control page! Here you will see the controls
echo and tips!
echo.
echo [H] Help        [M] Menu
echo.
set /p start=
if %start%== H goto helptrue
if %start%== h goto helptrue
if %start%== M goto start
if %start%== m goto start
cls

:helptrue
cls
echo Controls: Choose your best pick!
echo Attack: Only available if you have a weapon.
echo (Tip: Use 'Scavenge' to find hidden items, often
echo potions and sometimes weapons like swords!)
echo Oh, and there are secrets within the game other
echo than secret items collected by Scavenge.
echo Scavenge is available when you level up to level 5
echo in 'Hunter' Hero.
echo Clue: Scavenge works best in open forests and in houses!
echo.
echo Go to Page 2? [Y] Yes [N] No, back to the menu!
echo.
echo                [PAGE 1 OF 2]
echo.
if %start%== Y goto helptrue2
if %start%== y goto helptrue2
if %start%== N goto start
if %start%== n goto start
cls

:helptrue2
cls
echo On the Wizard hero,
echo On the Priest hero, you are able to call Angels
echo to aid you on boss fights. Go on Attack and type
echo 'callangels' to call angels.
echo potions and sometimes weapons like swords!)
echo Oh and one more thing- do something special in the menu
echo to get the hidden character!
echo.
echo Go to Page 1? [1] Page 1 [N] No, back to the menu!
echo.
echo                [PAGE 2 OF 2]
echo.
set /p start=
if %start%== 1 goto helptrue
if %start%== N goto start
if %start%== n goto start
cls

:play
cls
echo Select your character!
echo.
echo     /-\          /+\         [***]
echo    (o.o)        (o.o)      o\\O.O//o
echo    /. .\       \!___!/       !_=_!
echo   /_-_-_\       /   \       //   \\
echo.
echo [W] Wizard   [P] Priest   [H] Hunter
echo.
set /p start=Class:
if %start%== W goto wizard
if %start%== w goto wizard
if %start%== P goto priest
if %start%== p goto priest
if %start%== H goto hunter
if %start%== h goto hunter
if %start%== ninja goto ninja
cls

:wizard
cls
echo Are you sure you want to pick the [Wizard]?
echo.
echo [Y] Yes, I am sure  [N] No, maybe another one
set /p start=
if %start%== Y goto wizardyes
if %start%== y goto wizardyes
if %start%== N goto play
if %start%== n goto play
cls

:priest
cls
echo Are you sure you want to pick the [Priest]?
echo.
echo [Y] Yes, I am sure  [N] No, maybe another one
set /p start=
if %start%== Y goto priestyes
if %start%== y goto priestyes
if %start%== N goto play
if %start%== n goto play
cls

:hunter
cls
echo Are you sure you want to pick the [Hunter]?
echo.
echo [Y] Yes, I am sure  [N] No, maybe another one
set /p start=
if %start%== Y goto hunteryes
if %start%== y goto hunteryes
if %start%== N goto play
if %start%== n goto play
cls

:ninja
cls
echo Are you sure you want to pick the secret character [Ninja]?
echo.
echo [Y] Yes, I am sure  [N] No, maybe another one
set /p start=
if %start%== Y goto ninjayes
if %start%== y goto ninjayes
if %start%== N goto play
if %start%== n goto play
cls

:wizardyes
cls
echo Fantastic choice! Wizards are agile, and can trick their
echo opponents with magical traps and attacks.
echo.
echo Your journey unfolds here!
echo Press any key to continue!
pause>nul
goto wizardname
cls

:wizardname
cls
echo Before you begin your journey, what is your name?
echo.
set /p name=
cls

:wizardname2
cls
echo Do you want to name your Wizard "%name%"?
echo [Y] Yes              [N] No
set /p start=
if %start%== Y goto wizardjor
if %start%== y goto wizardjor
if %start%== N goto wizardname
if %start%== n goto wizardname
cls

:priestyes
cls
echo Fantastic choice! Priests are holy, hitting their enemies
echo with the power of angles by their side.
echo.
echo Your journey unfolds here!
echo Press any key to continue!
pause>nul
goto priestname
cls

:priestname
cls
echo Before you begin your journey, what is your name?
echo.
set /p name=
cls

:priestname2
cls
echo Do you want to name your Priest "%name%"?
echo [Y] Yes              [N] No
set /p start=
if %start%== Y goto priestjor
if %start%== y goto priestjor
if %start%== N goto priestname
if %start%== n goto priestname
cls

:hunteryes
cls
echo Fantastic choice! Hunters are sneaky, and have fast and powerful
echo attacks. They have excellent eyesight.
echo.
echo Your journey unfolds here!
echo Press any key to continue!
pause>nul
goto huntername
cls

:huntername
cls
echo Before you begin your journey, what is your name?
echo.
set /p name=
cls

:huntername2
cls
echo Do you want to name your Hunter "%name%"?
echo [Y] Yes              [N] No
set /p start=
if %start%== Y goto hunterjor
if %start%== y goto hunterjor
if %start%== N goto huntername
if %start%== n goto huntername
cls

:ninjayes
cls
echo Fantastic choice! Ninjas are extremely agile and sneaky.
echo Excellent eyesight and fighting ability makes Ninja
echo the best character in the game.
echo.
echo Your journey unfolds here!
echo Press any key to continue!
pause>nul
goto ninjaname
cls

:ninjaname
cls
echo Before you begin your journey, what is your name?
echo.
set /p name=
cls

:ninjaname2
cls
echo Do you want to name your Ninja "%name%"?
echo [Y] Yes              [N] No
set /p start=
if %start%== Y goto ninjajor
if %start%== y goto ninjajor
if %start%== N goto ninjaname
if %start%== n goto ninjaname
cls

:wizardjor
cls
echo.
echo The first thing you remember is you being flying through
echo space and time, you see galaxies, you see time, you see
echo planets you have never seen before!
echo Then you blacked out.
echo Now, you are in a room with a table. On the table, there is a
echo Jar. There is another door on the left. Do you pick up the jar,
echo or walk in the other door?
echo [1] Pick up the jar
echo [2] Walk in other door
set /p start=
if %start%==1 goto wizardd
if %start%==2 goto fail1
cls




:priestjor
cls
echo.
echo The first thing you remember is you being flying through
echo space and time, you see galaxies, you see time, you see
echo planets you have never seen before!
echo Then you blacked out.
echo Now, you are in a room with a table. On the table, there is a
echo Jar. There is another door on the left. Do you pick up the jar,
echo or walk in the other door?
echo [1] Pick up the jar
echo [2] Walk in other door
set /p start=
if %start%==1 goto priestt
if %start%==2 goto fail2
cls




:hunterjor
cls
echo.
echo The first thing you remember is you being flying through
echo space and time, you see galaxies, you see time, you see
echo planets you have never seen before!
echo Then you blacked out.
echo Now, you are in a room with a table. On the table, there is a
echo Jar. There is another door on the left. Do you pick up the jar,
echo or walk in the other door?
echo [1] Pick up the jar
echo [2] Walk in other door
set /p start=
if %start%==1 goto hunterr
if %start%==2 goto fail3
cls




:ninjajor
cls
echo.
echo The first thing you remember is you being flying through
echo space and time, you see galaxies, you see time, you see
echo planets you have never seen before!
echo Then you blacked out.
echo Now, you are in a room with a table. On the table, there is a
echo Jar. There is another door on the left. Do you pick up the jar,
echo or walk in the other door?
echo [1] Pick up the jar
echo [2] Walk in other door
set /p start=
if %start%==1 goto ninjaa
if %start%==2 goto fail4
cls





:exit
cls
echo Are you sure you want to leave?
echo    [Y] Yes         [N] No
set /p start=
if %start%== Y goto exitreal
if %start%== y goto exitreal
if %start%== N goto start
if %start%== n goto start
cls

:exitreal
exit