-- Gods of Enigma, a level for Enigma
-- Copyright (C) 2005 Moonpearl 
-- Licensed under GPL v2.0 or above
-- Reordering of the Landscapes and Improvement by Raoul in 2006

Require("levels/lib/ant.lua")

function file_oxyd(x,y,f)
    oxyd_default_flavor=f
    oxyd(x,y)
end

enigma.FlatForce=30
enigma.SlopeForce=30
enigma.ElectricForce=30

cells={}
cells[" "]=cell{}

stones={}
stones[" "]=cell{}

items={}
items[" "]=cell{}

--------------------------------------------------------------------------------------------------------------------
--FLOOR
cells[" "]=cell{floor="fl-abyss"}
cells["#"]=cell{floor="fl-normal"}
cells["$"]=cell{floor="fl-rough-blue"}
cells["%"]=cell{floor="fl-wood"}
cells["&"]=cell{floor="fl-ice_001"}
cells["'"]=cell{floor="fl-leaves"}
cells["("]=cell{floor="fl-brick"}
cells[")"]=cell{floor="fl-stwood"}
cells["*"]=cell{floor="fl-leavesc1"}
cells["+"]=cell{floor="fl-leavesc2"}
cells[","]=cell{floor="fl-leavesd1"}
cells["-"]=cell{floor="fl-leavesb"}
cells["."]=cell{floor="fl-leavesc3"}
cells["/"]=cell{floor="fl-leavesc4"}
cells["0"]=cell{floor="fl-leavesd3"}
cells["1"]=cell{floor="fl-leavesd2"}

--      0    5    0    5    0    5    0    5    0    5    0    5    0    5    0    5    0    5    0    5
level={"                                      ((((((((((((((((((((                  '#''''''''''''''''#'",--0
       "                                      ((((((((((((((((((((                  '*''.-----'-*'''.-''",
       "                                      ((((((((((((((((((((                  '''''--'''.-'''''1-'",
       "       #######                        ((((((((((((((((((((                  ''''''-'''/-+'''''.'",
       "       #$$$$$#                        ((((((((((((((((((((                  '+''/'-'''-'.0''''''",
       "       #$$$$$#########################(((((((((   ((((((((##################''''---+'/-+'-''''''",--5
       "       #$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$(((((((((   (((((((($$$$$$$$$$$$$$$$$$''''''--------''''''",
       "       #$$$$$#########################(((((((((   ((((((((##################''''''-*'.-*'-+'''/'",
       "       #$$$$$#                        ((((((((((((((((((((                  '''''/-+''-'''----''",
       "       #######                        ((((((((((((((((((((                  ',---------'''-'''-'",
       "                                      ((((((((((((((((((((                  '-'*.'-'''*'''''.--'",--10
       "                                      ((((((((((((((((((((                  '-'+/-----+'''''/'-'",
       "                                      ((((((((((((((((((((                  ''''''''''''''''''''",
       "                                                                            #$#                 ",
       "                                                                            #$#                 ",
       "                                                                            #$#                 ",--15
       "                                                                            #$#                 ",
       "                                                                            #$#                 ",
       "                                                                            #$#                 ",
       "                                                                            #$#                 ",
       "                                                                            #$#                 ",--20
       "                                                                            #$#                 ",
       "                                                                            #$#                 ",
       "                                                                            #$#                 ",
       "                                      ####################                  ####################",
       " ##### ##### #####                    #&&&&&&&&&&&&&&&&&&#                  ### # #  # #  # ####",--25
       " #$$$# #%%%# #'''#                    #&&&&&&&&&&&&&&&&&&#                  ### ###  ###  ### ##",
       " #$$$# #%%%# #'''#                    #&&&&&&&&&&&&&&&&&&#                  ###               ##",
       " #$$$# #%%%# #'''#                    #&&&&&&&#####&&&&&&#                  ### ###  ###  ###  #",
       " ##### ##### #####                    #&&&&&&&#$$$#&&&&&&#                  #   ###  ###  ###  #",
       "                                      #&&&&&&&#$$$#&&&&&&#                  #   ###  ###  ### ##",--30
       " ##### ##### #####                    #&&&&&&&#$$$#&&&&&&#                  ##                ##",
       " #$$$# #&&&# #   #                    #&&&&&&&#####&&&&&&#                  ##                ##",
       " #$$$# #&&&# #   #                    #&&&&&&&&&&&&&&&&&&#                  ####  ####  #### ###",
       " #$$$# #&&&# #   #                    #&&&&&&&&&&&&&&&&&&####################                ###",
       " ##### ##### #####                    #&&&&&&&&&&&&&&&&&&&$$$$$$$$$$$$$$$$$$####  ####  #### ###",--35
       "                                      ##########################################################"}--36
--------------------------------------------------------------------------------------------------------------
--STONES
stones["!"]=cell{parent={{file_oxyd,"d"}}}
stones["#"]=cell{stone="st-invisible"}
stones["$"]=cell{stone="st-brownie"}
stones["%"]=cell{stone="st-brick"}
stones["&"]=cell{stone="st-likeoxydd"}
stones["'"]=cell{stone="st-switch"}
stones["("]=cell{stone="st-grate1"}
stones["*"]=cell{stone="st-rock1"}
stones[","]=cell{stone="st-rock2"}
stones["-"]=cell{stone="st-shogun-s"}
stones["."]=cell{stone="st-rock1_move"}
stones["/"]=cell{stone="st-stoneimpulse"}
stones["s"]=cell{stone="st-black4"}

--      0    5    0    5    0    5    0    5    0    5    0    5    0    5    0    5    0    5    0    5
stmap={"                                      %%%%%%%%%%%%%%%%%%%%                  ********************",--0
       "                                      %                  %                  *      (  *  ***  **",
       "                                      %                  %                  * *    *         - *",
       "                                      %                  %                  * ** * *+*   *(*** /",
       "                                      %       (((((      %                  *  - * *!* *       /",
       "                                      %%%%    (   (   %%!%s                 ****    *   *   ** *",--5
       "                                              (   (       s                      *         *   *",
       "                                      %%%%    (   (   %%!%s                 ****(*  *   .  *   *",
       "                                      %       (((((      %                  *        * *!* (  **",
       "                                      %                  %                  * **-*   ( *** **- *",
       "                                      %                  %                  * *  *(***       ( *",--10
       "                                      %                  %                  * *              * *",
       "                                      %%%%%%%%%%%%%%%%%%%%                  * **************///*",
       "                                                                                                ",
       "                                                                                                ",
       "                                                                                                ",--15
       "                                                                                                ",
       "                                                                                                ",
       "                                                                                                ",
       "                                                                                                ",
       "                                                                                                ",--20
       "                                                                                                ",
       "                                                                                                ",
       "                                                                                                ",
       "                                      &&&&&&&&&&&&&&&&&&&&                  , ,,,,,,,,,,,,,,,,,,",
       "                                      &&       #        !&                  , ,  '    '    '   ,",--25
       "                                      &### # # # ### ####&                  , ,                ,",
       "!                                     &  # # # # #   #   &                  , ,                ,",
       "                                      && # ### # # # # #&&                  , , !              ,",
       "             $$$$$                    &#       # # # # # &                  ,                  ,",
       " ############                         &# ##### # # ### # &                  ,               !  ,",--30
       "        #                             &# #   # ###     # &                  , ,                ,",
       "        ###                           && # # #      ####&&                  , ,,               ,",
       "!       #                             &  # # #      #    &                  ,                  ,",
       "        # #                           &### # ###### # ###&                  ,,,,  ,,,,  ,,,,   ,",
       "          #                           &!                                                       ,",--35
       "                                      &&&&&&&&&&&&&&&&&&&&                  ,,,,,,,,,,,,,,,,,,',"}--36
--------------------------------------------------------------------------------------------------------------
--ITEMS
items["!"]=cell{item="it-document"}
items["#"]=cell{item="it-magnet-on"}
items["$"]=cell{item="it-extralife"}
items["%"]=cell{item="it-vstrip"}
items["&"]=cell{item="it-wormhole"}
items["'"]=cell{item="it-pin"}
items["("]=cell{item="it-spring1"}
items["*"]=cell{item="it-flagblack"}
items["+"]=cell{item="it-shogun-s"}

--      0     5    0    5    0    5    0    5    0    5    0    5    0    5    0    5    0    5    0    5
itmap={"                                                                                                ",--0
       "                                                                                                ",
       "                                                                                                ",
       "                                                                                                ",
       "                                                                                                ",
       "                                                                                     + +        ",--5
       "          !     $                        !                !                    !*               ",
       "                                                                                     + +        ",
       "                                                                                                ",
       "                                                                                                ",
       "                                                                                                ",--10
       "                                                                                                ",
       "                                                                                                ",
       "                                                                             !                  ",
       "                                                                                                ",
       "                                                                                                ",--15
       "                                                                                                ",
       "                                                                                                ",
       "                                                                                                ",
       "                                                                                                ",
       "                                                                                                ",--20
       "                                                                                                ",
       "                                                                                                ",
       "                                                                                                ",
       "                                                                                                ",
       "                                                                                                ",--25
       "                                                                                                ",
       "         #     $                                                             !                  ",
       "   !                                                                         (                  ",
       "                                                                                      $         ",
       "                                                                                                ",--30
       "                                                                                                ",
       "               %                                '                                               ",
       "   !     $     %                                                                                ",
       "               %                                                                                ",
       "                                                      !                    !                    ",--35
       "                                                                                                "}--36
--------------------------------------------------------------------------------------------------------------

function file_oxyd(x,y,f)
    oxyd_default_flavor=f
    oxyd(x,y)
end

--CREATE WORLD
create_world_by_map(level)
draw_map(0,0,stmap,stones)
draw_map(0,0,itmap,items)

--ACTORS
set_actor("ac-blackball", 9.5,6.5, {player=0})
set_actor("ac-rotor",48.5,6.5,{range=7,force=20,gohome=true})

--MAGNET
SetAttrib(enigma.GetItem(9,27),"force",10)

--TEXTE
SetAttrib(enigma.GetItem(10,6),"text","Beware, stranger ! The ancient gods of Enigma have set many traps to protect their holy Oxyds ! You will have to get through the Four Tests to prove your worth !")

SetAttrib(enigma.GetItem(41,6),"text","Prove your speed in the Test of Fire !")

SetAttrib(enigma.GetItem(58,6),"text","You have proven your worth ! The ancients grant you a FLAG !")
SetAttrib(enigma.GetItem(79,6),"text","Prove your intelligence in the Test of Earth !")

SetAttrib(enigma.GetItem(77,13),"text","You have proven your worth ! The ancients grant you a SPRING !")
SetAttrib(enigma.GetItem(77,27),"text","Prove your dexterity in the Test of Air !")

SetAttrib(enigma.GetItem(75,35),"text","You have proven your worth ! The ancients grant you a NAIL !")
SetAttrib(enigma.GetItem(54,35),"text","Prove your patience in the Test of Water !")

SetAttrib(enigma.GetItem(3,28),"text","This can't be ! No mortal can reach our Holy Oxyds ! Prove yourself once more ! Fwahahaha !")
SetAttrib(enigma.GetItem(3,33),"text","All right, we'll call it a draw... ;-)")

--SOME DOORS
--into the rooms:
doorv(38, 6, {name="doortofire"})
doorv(76, 6, {name="doortoearth"})
doorh(77, 24, {name="doortoair"})
doorv(57, 35, {name="doortowater"})

--out of the rooms:
doorv(54,6, {name="doorfire1"})
doorv(55,6, {name="doorfire2"})
doorv(56,6, {name="doorfire3"})
doorv(57,6, {name="doorfire4"})

doorh(77,9, {name="doorearth1"})
doorh(77,10, {name="doorearth2"})
doorh(77,11, {name="doorearth3"})
doorh(77,12, {name="doorearth4"})

doorv(79,35, {name="doorair1"})
doorv(78,35, {name="doorair2"})
doorv(77,35, {name="doorair3"})
doorv(76,35, {name="doorair4"})

--FIRE------
set_stone("st-coinslot", 39, 1, {action="openclose", target="door1"})
set_stone("st-coinslot", 39, 11, {action="openclose", target="door2"})
set_stone("st-coinslot", 56, 1, {action="openclose", target="door3"})
set_stone("st-coinslot", 56, 11, {action="openclose", target="door4"})

set_item("it-coin2", 44, 3)
set_item("it-coin2", 51, 4)
set_item("it-coin2", 48, 8)
set_item("it-coin2", 53, 7)

Signal ("st(39 1)","st(54 6)")
Signal ("st(39 11)","st(55 6)")
Signal ("st(56 1)","st(56 6)")
Signal ("st(56 11)","st(57 6)")

--EARTH------
Signal ("it(85 5)","st(77 9)")
Signal ("it(85 7)","st(77 12)")
Signal ("it(87 5)","st(77 10)")
Signal ("it(87 7)","st(77 11)")

doorh(84,3, {name="special"})
set_item("it-trigger", 79, 11, {action="openclose", target="special"})

--AIR-------
Signal ("st(81 25)","st(79 35)")
Signal ("st(86 25)","st(78 35)")
Signal ("st(91 25)","st(77 35)")
Signal ("st(94 36)","st(76 35)")

--VORTEX
set_item("it-vortex-open", 48, 30, {targetx = 3.5, targety =  27.5, name="vortex0"})
set_item("it-vortex-closed", 3, 27, {targetx = 48.5, targety =  30.5, name="vortex1"})

--SOME TRIGGERS
set_item("it-trigger", 37, 6, {action="open", target="doortofire"})
set_item("it-trigger", 40, 6, {action="close", target="doortofire"})
set_item("it-trigger", 75, 6, {action="open", target="doortoearth"})
set_item("it-trigger", 78, 6, {action="close", target="doortoearth"})
set_item("it-trigger", 77,23 , {action="open", target="doortoair"})
set_item("it-trigger", 77, 26, {action="close", target="doortoair"})
set_item("it-trigger", 58, 35, {action="open", target="doortowater"})
set_item("it-trigger", 55, 35, {action="close", target="doortowater"})

--THE OXYDS
SetAttrib(enigma.GetStone(39,35),"color","0")
SetAttrib(enigma.GetStone(56,25),"color","0")
SetAttrib(enigma.GetStone(56,5),"color","1")
SetAttrib(enigma.GetStone(56,7),"color","1")
SetAttrib(enigma.GetStone(84,4),"color","2")
SetAttrib(enigma.GetStone(88,8),"color","2")
SetAttrib(enigma.GetStone(80,28),"color","3")
SetAttrib(enigma.GetStone(92,30),"color","3")
SetAttrib(enigma.GetStone(0,27),"color","6")
SetAttrib(enigma.GetStone(0,33),"color","6")