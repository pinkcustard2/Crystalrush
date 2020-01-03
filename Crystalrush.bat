
@echo off
title Crystalrush
color 0a
cd saveData
REM ctrl f and TBD for things not done
REM current things not done:
REM enemie list help (don't have enemies)
REM buildings list
REM crafting list
echo.
echo				Crystalrush
pause
:start
cls
echo 1. Start game
echo 2. Load game
echo 3. How to Play
echo 4. Exit
set /p choice= Please enter here: 
if %choice%==1 goto startPage	
if %choice%==2 goto load
if %choice%==3 goto howToPlay
if %choice%==4 exit
echo verb not known
pause
goto start

:howToPlay
cls
echo How to play
echo When you start, you will start with your hero. With this hero you can walk around the small town you start in. When you start, you will want to complete the first few quests. After you complete the first few quests, you will be asked to pick a weapon to be proficient in and then a skill to be proficient in. To be proficient in a skill or a weapon, means that you will be better at using that skill/weapon and you will deal more damage or use that skill quicker or better. After you have done that, you will be left on your own to explore the world. When you are exploring the world, you will find resource deposits, enemies and a building zones.
echo You can get more proficiencies by paying money to the proficiency master.
pause 
echo 1. Resources
echo 2. Enemies
echo 3. Building zones
echo 4. Back
set /p choice= Please enter here:
if %choice%==1 goto resourceHelp	
if %choice%==2 goto enemieHelp
if %choice%==3 goto buildingZoneHelp
if %choice%==4 goto start
echo verb not known
pause
goto howToPlay

:resourceHelp
cls
echo Resource Help
echo Resource deposits can be found throughout the world. The types of deposits are wood deposits (Normally found in overground.). An example of a wood deposit would be rough wood(the basic wood). They can be obtained through axes), ground deposits (Found everywhere. An example would be dirt or stone. They can be obtained through shovels or pickaxes.) and mineral deposits (Found in mines. An example would be copper. They can be optained through pickaxes).
echo Raw resources (resources from deposits) can be refined into refined resources. 
echo Resources can also be bought from a marketplace (can be build or found in town).
pause
echo 1. Refined resources
echo 2. Resource List
echo 3. Money
echo 4. Back
set /p choice= Please enter here:
if %choice%==1 goto refinedResourceHelp	
if %choice%==2 goto resourceListHelp
if %choice%==3 goto moneyHelp
if %choice%==4 goto howToPlay
echo verb not known
pause
goto resourceHelp

:refinedResourceHelp
cls
echo Refined Resource Help
echo Refined resources can be made in the furnace (made in building zones(100 stone for the basic furnace)). Furnaces can also be found in certain cities and villages, however it will cost gold to use it. Refined resources can be used to build more things in the building zones and it can be used in quests. 
echo Refined wood is made in the sawmill instead of a furnace (exept charcoal).
pause
echo 1. Back
set /p choice= Please enter here:
if %choice%==1 goto resourceHelp
echo verb not known
pause
goto refinedResourceHelp

:resourceListHelp
cls
echo 	Raw Wood
echo 1)Rough wood
echo 	Raw Minerals
echo 2)Copper
echo 3)Tin
echo 4)Iron
echo 5)Coal
echo 	Ground
echo 6)Dirt
echo 7)Stone
echo 	Refined Wood
echo 8)Basic planks
echo 9)Charcoal
echo 	Refined Minerals
echo 10)Copper bar
echo 11)Tin bar
echo 12)Bronze bar
echo 13)Iron bar
echo 14)Othil bar
pause
echo 0. Back
echo Type the number of the mineral for more information about it (e.g. resources to make)
set /p choice= Please enter here:
if %choice%==0 goto resourceHelp
if %choice%==1 goto roughWoodHelp
if %choice%==2 goto copperHelp
if %choice%==3 goto tinHelp
if %choice%==4 goto ironHelp
if %choice%==5 goto coalHelp
if %choice%==6 goto dirtHelp
if %choice%==7 goto stoneHelp
if %choice%==8 goto basicPlanksHelp
if %choice%==9 goto charcoalHelp
if %choice%==10 goto copperBarHelp
if %choice%==11 goto tinBarHelp
if %choice%==12 goto bronzeBarHelp
if %choice%==13 goto ironBarHelp
if %choice%==14 goto othilBarHelp
echo verb not known
pause
goto resourceListHelp

:roughWoodHelp
cls
echo Rough Wood 
echo Cost to buy: 2C
echo Selling price: 1C
echo How to get: Chop down weak trees (100%)
echo Chopping proficiency level: 1
echo Axe power level: 1
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto resourceListHelp
echo verb not known
pause
goto roughWoodHelp

:copperHelp
cls
echo Copper 
echo Cost to buy: 5C
echo Selling price: 2C
echo How to get: Mine copper ore deposits (75%)
echo Mining proficiency level: 1
echo Pickaxe power level: 1
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto resourceListHelp
echo verb not known
pause
goto copperHelp

:tinHelp
cls
echo Tin 
echo Cost to buy: 5C
echo Selling price: 2C
echo How to get: Mine tin ore deposits (75%) or mine copper deposits (10%)
echo Mining proficiency level: 2 (tin deposits) / 1 (copper deposits)
echo Pickaxe power level: 1
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto resourceListHelp
echo verb not known
pause
goto tinHelp

:ironHelp
cls
echo Iron
echo Cost to buy: 1S
echo Selling price: 3C
echo How to get: Mine iron deposits (50%)
echo Mining proficiency level: 5
echo Pickaxe power level: 2 
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto resourceListHelp
echo verb not known
pause
goto ironHelp

:coalHelp
cls
echo Coal
echo Cost to buy: 5C
echo Selling price: 2C
echo How to get: Mine coal deposits (50%)
echo Mining proficiency level: 3
echo Pickaxe power level: 1
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto resourceListHelp
echo verb not known
pause
goto coalHelp

:dirtHelp
cls
echo Dirt
echo Cost to buy: 1C
echo Selling price: Can't be sold
echo How to get: Mine grass (99%) / mine dirt (100%)
echo Digging proficiency level: 1
echo Shovel power level: 1
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto resourceListHelp
echo verb not known
pause
goto dirtHelp

:stoneHelp
cls
echo Stone
echo Cost to buy: 3C
echo Selling price: 1C
echo How to get: Mining stone (75%) / any ore deposit (100%-ore chance) 
echo Mining proficiency level: level of or deposit
echo Digging proficiency level: 3
echo Shovel power level: 1
echo Pickaxe power level: same as ore deposit
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto resourceListHelp
echo verb not known
pause
goto stoneHelp

:basicPlanksHelp
cls
echo Basic Planks
echo Cost to buy: 1S
echo Selling price: 3C
echo How to get: Saw rough wood in a sawmill
echo Sawmill proficiency level: 1
echo Sawmill power level: 1
echo Cost to use town sawmill: 1C/10 (min 1C)
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto resourceListHelp
echo verb not known
pause
goto basicPlanksHelp

:charcoalHelp
cls
echo Charcoal
echo Cost to buy: 5C
echo Selling price: 2C
echo How to get: Put wood in a furnace (input not fuel)
echo Furnace proficiency level: 2
echo Furnace power level: 1
echo Cost to use town furnace: 1C/5 (min 1C)
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto resourceListHelp
echo verb not known
pause
goto charcoalHelp

:copperBarHelp
cls
echo Copper Bar
echo Cost to buy: 1S
echo Selling price: 3C
echo How to get: Put copper in a furnace 
echo Furnace proficiency level: 1
echo Furnace power level: 1
echo Cost to use town furnace: 1C/10 (min 1C)
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto resourceListHelp
echo verb not known
pause
goto copperBarHelp

:tinBarHelp
cls
echo Tin Bar
echo Cost to buy: 1S
echo Selling price: 3C
echo How to get: Put tin in a furnace 
echo Furnace proficiency level: 1
echo Furnace power level: 1
echo Cost to use town furnace: 1C/10 (min 1C)
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto resourceListHelp
echo verb not known
pause
goto tinBarHelp

:bronzeBarHelp
cls
echo Bronze Bar
echo Cost to buy: 3S
echo Selling price: 5C
echo How to get: Put copper and tin in a furnace 
echo Furnace proficiency level: 3
echo Furnace power level: 1
echo Cost to use town furnace: 1C/2 (min 1C)
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto resourceListHelp
echo verb not known
pause
goto bronzeBarHelp

:ironBarHelp
cls
echo Iron Bar
echo Cost to buy: 5S
echo Selling price: 1S
echo How to get: Put Iron in a furnace 
echo Furnace proficiency level: 5
echo Furnace power level: 2
echo Cost to use town furnace: 1S 
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto resourceListHelp
echo verb not known
pause
goto ironBarHelp

:othilBarHelp
cls
echo Othil Bar
echo Cost to buy: 1G
echo Selling price: 2S
echo How to get: Put a copper bar and iron ore in a furnace 
echo Furnace proficiency level: 7
echo Furnace power level: 2
echo Cost to use town furnace: 2S
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto resourceListHelp
echo verb not known
pause
goto othilBarHelp

:moneyHelp
cls
echo Money is what you can use to buy and sell items at the marketplace (found at towns and can be places in building zones). You can also hire workers with money.
echo Money has different values:
echo Copper (C) - 1C
echo Silver (S) - 10C
echo Gold (G) - 10S
echo Money can also be dropped by enemies that are killed.
echo To convert money, you have to go to the bank.
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto resourceHelp
echo verb not known
pause
goto moneyHelp

:enemieHelp
cls
echo Enemies
echo Enemies are found in many places around the map, mainly in camps. Enemies give can give you money. You use weapons to kill enemies. There are several different types of enemies ranging in difficulty. Enemies can also attack you in building zones, so you will have to build defences to stop them.
pause
echo 1. Enemie list
echo 2. How to fight
echo 3. Back
set /p choice= Please enter here:
if %choice%==1 goto enemieListHelp
if %choice%==2 goto howToFight
echo verb not known
pause
goto enemieHelp

:enemieListHelp
cls
echo TBD
echo 1. Back
pause
set /p choice= Please enter here:
if %choice%==1 goto enemieHelp
echo verb not known
pause
goto enemieListHelp

:howToFight
cls
echo How to fight
echo When you fight, you will use your weapon. You will deal the damage the weapon has, minus the defence of the enemie.
echo Once you do an attack, your opponent will get a chance to attack. When the opponent attacks, you will lose the opponent's damage minus the defence you your armour health. 
echo You will get rewards when you kill the enemie. If you die, you will get teleported back to your building zone and you will lose some of your money.
pause
echo 1. Back 
set /p choice= Please enter here:
if %choice%==1 goto enemieHelp
echo verb not known
pause
goto howToFight

:buildingZoneHelp
cls 
echo Building zones
echo Building zones are where you can build item and craft items. They are found all over the map, for easy access where ever you are.
pause
echo 1. Building
echo 2. Crafting
echo 3. Back
set /p choice= Please enter here:
if %choice%==1 goto buildingHelp
if %choice%==2 goto craftingHelp
if %choice%==3 goto howToPlay
echo verb not known
pause
goto enemieHelp

:buildingHelp
cls
echo Building
echo When you are in your building zone, you can choose to build something. Building requires resources to do. There are a variety of buildings to build from.
pause
echo 1. Building list
echo 2. Back
set /p choice= Please enter here:
if %choice%==1 goto buildingListHelp
if %choice%==2 goto buildingZoneHelp
echo verb not known
pause
goto enemieHelp

:buildingListHelp
cls 
echo Building List
echo TBD
pause
goto buildingHelp

:craftingHelp
cls
echo Crafting
echo To craft, you must have some kind of work station to do so. For example a furnace to smelt ores into other ores, or a forge to make weapons.
echo You can craft weapons, pixaxes, axes and shovels. There are several different types of weapons, that will be listed in the crafting list, as well as where you craft them in. 
pause
echo 1. Crafting list
echo 2. Back
set /p choice= Please enter here:
if %choice%==1 goto craftingListHelp
if %choice%==2 goto buildingZoneHelp
echo verb not known
pause
goto enemieHelp

:craftingListHelp
cls 
echo Building List
echo TBD
pause
goto craftingHelp


