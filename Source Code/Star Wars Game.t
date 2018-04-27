% Summative Omar Garcia

var game := Window.Open ("graphics: 900,900")
var h, v, x, y, z, dest1, dest2, bas1, bas2, stie1, stie2, ltie1, ltie2, droid1, droid2 : int := 0
var font : int := Font.New ("Century:40")
var fonts : int := Font.New ("Century:25")
var fontl : int := Font.New ("Century:50")
var star1, star2 : int := 600
var score, music, execute, execute2, execute3 : boolean := false
var b1x, b5x : int := 810
var b2x, b6x : int := 830
var b3x : int := 850
var b4x : int := 870
var b1y, b2y, b3y, b4y : int := 10
var b5y, b6y : int := 40
var startTime, finalTime : real := 0
var ch : array char of boolean
var xright : int := Pic.FileNew ("xright.bmp")
var xup : int := Pic.FileNew ("xup.bmp")
var xleft : int := Pic.FileNew ("xleft.bmp")
var xdown : int := Pic.FileNew ("xdown.bmp")
Pic.SetTransparentColor (xup, black)
Pic.SetTransparentColor (xright, black)
Pic.SetTransparentColor (xleft, black)
Pic.SetTransparentColor (xdown, black)
var Xright : int := Sprite.New (xright)
var Xup : int := Sprite.New (xup)
var Xleft : int := Sprite.New (xleft)
var Xdown : int := Sprite.New (xdown)
var firstb : int := Pic.FileNew ("firstb.bmp")
var secondb : int := Pic.FileNew ("secondb.bmp")
var thirdb : int := Pic.FileNew ("thirdb.bmp")
var fourthb : int := Pic.FileNew ("fourthb.bmp")
var fifthb : int := Pic.FileNew ("fifthb.bmp")
var sixthb : int := Pic.FileNew ("sixthb.bmp")
var Firstb : int := Sprite.New (firstb)
var Secondb : int := Sprite.New (secondb)
var Thirdb : int := Sprite.New (thirdb)
var Fourthb : int := Sprite.New (fourthb)
var Fifthb : int := Sprite.New (fifthb)
var Sixthb : int := Sprite.New (sixthb)
var deathstar2 : int := Pic.FileNew ("deathstar2.bmp")
var deathstar3 : int := Pic.FileNew ("deathstar3.bmp")
var deathstar4 : int := Pic.FileNew ("deathstar4.bmp")
var deathstar5 : int := Pic.FileNew ("deathstar5.bmp")
var deathstar6 : int := Pic.FileNew ("deathstar6.bmp")
var Deathstar2 : int := Sprite.New (deathstar2)
var Deathstar3 : int := Sprite.New (deathstar3)
var Deathstar4 : int := Sprite.New (deathstar4)
var Deathstar5 : int := Sprite.New (deathstar5)
var Deathstar6 : int := Sprite.New (deathstar6)

% Title Music

process titlemusic
    loop
	Music.PlayFile ("StarWars.mp3")
	exit when music = true
    end loop
end titlemusic

% Game Music

process gamemusic
    loop
	Music.PlayFile ("DueloftheFates2.mp3")
	exit when music = true
    end loop
end gamemusic

%Star Shooting

process starshoot

    finalTime := 0

    loop

	finalTime := (Time.Elapsed - startTime) div 1000

	if finalTime = 3 then
	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar5)
	    Sprite.Hide (Deathstar4)
	    Sprite.Hide (Deathstar3)

	    Sprite.Show (Deathstar2)

	    Sprite.SetPosition (Deathstar2, star1, star2, false)
	end if

	if finalTime = 6 then
	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar5)
	    Sprite.Hide (Deathstar4)
	    Sprite.Hide (Deathstar2)

	    Sprite.Show (Deathstar3)

	    Sprite.SetPosition (Deathstar3, star1, star2, false)
	end if

	if finalTime = 9 then
	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar5)
	    Sprite.Hide (Deathstar2)
	    Sprite.Hide (Deathstar3)

	    Sprite.Show (Deathstar4)

	    Sprite.SetPosition (Deathstar4, star1, star2, false)
	end if

	if finalTime = 12 then
	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar2)
	    Sprite.Hide (Deathstar4)
	    Sprite.Hide (Deathstar3)

	    Sprite.Show (Deathstar5)

	    Sprite.SetPosition (Deathstar5, star1, star2, false)
	end if

	if finalTime = 15 then

	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar5)
	    Sprite.Hide (Deathstar4)
	    Sprite.Hide (Deathstar3)
	    Sprite.Hide (Deathstar2)
	    Sprite.Hide (Xright)
	    Sprite.Hide (Xleft)
	    Sprite.Hide (Xdown)
	    Sprite.Hide (Xup)
	    Pic.ScreenLoad ("deathstar6.bmp", star1, star2, picCopy)
	    Draw.ThickLine (star1 + 146, star2 + 210, h + 30, v + 30, 8, 45)
	    Pic.ScreenLoad ("ex1.bmp", h - 10, v - 10, picMerge)
	    delay (150)
	    Pic.ScreenLoad ("ex2.bmp", h - 10, v - 10, picMerge)
	    delay (150)
	    Pic.ScreenLoad ("ex3.bmp", h - 10, v - 10, picMerge)
	    delay (150)
	    Pic.ScreenLoad ("ex4.bmp", h - 10, v - 10, picMerge)
	    delay (150)

	end if

	exit when

	    h > 900
	    or v > 900
	    or h < -40
	    or v < -40
	    or finalTime = 15
	    or score = true

    end loop

end starshoot

%Star Shooting level 2

process starshoot2

    finalTime := 0

    loop

	finalTime := (Time.Elapsed - startTime) div 1000

	if finalTime = 5 then
	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar5)
	    Sprite.Hide (Deathstar4)
	    Sprite.Hide (Deathstar3)

	    Sprite.Show (Deathstar2)

	    Sprite.SetPosition (Deathstar2, star1, star2, false)
	end if

	if finalTime = 10 then
	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar5)
	    Sprite.Hide (Deathstar4)
	    Sprite.Hide (Deathstar2)

	    Sprite.Show (Deathstar3)

	    Sprite.SetPosition (Deathstar3, star1, star2, false)
	end if

	if finalTime = 15 then
	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar5)
	    Sprite.Hide (Deathstar2)
	    Sprite.Hide (Deathstar3)

	    Sprite.Show (Deathstar4)

	    Sprite.SetPosition (Deathstar4, star1, star2, false)
	end if

	if finalTime = 20 then
	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar2)
	    Sprite.Hide (Deathstar4)
	    Sprite.Hide (Deathstar3)

	    Sprite.Show (Deathstar5)

	    Sprite.SetPosition (Deathstar5, star1, star2, false)
	end if

	if finalTime = 25 then

	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar5)
	    Sprite.Hide (Deathstar4)
	    Sprite.Hide (Deathstar3)
	    Sprite.Hide (Deathstar2)
	    Sprite.Hide (Xright)
	    Sprite.Hide (Xleft)
	    Sprite.Hide (Xdown)
	    Sprite.Hide (Xup)
	    Pic.ScreenLoad ("deathstar6.bmp", star1, star2, picCopy)
	    Draw.ThickLine (star1 + 146, star2 + 210, h + 30, v + 30, 8, 45)
	    Pic.ScreenLoad ("ex1.bmp", h - 10, v - 10, picMerge)
	    delay (150)
	    Pic.ScreenLoad ("ex2.bmp", h - 10, v - 10, picMerge)
	    delay (150)
	    Pic.ScreenLoad ("ex3.bmp", h - 10, v - 10, picMerge)
	    delay (150)
	    Pic.ScreenLoad ("ex4.bmp", h - 10, v - 10, picMerge)
	    delay (150)

	end if

	exit when

	    h > 900
	    or v > 900
	    or h < -40
	    or v < -40
	    or finalTime = 25
	    or score = true

    end loop

end starshoot2

%Titles & Instructions

drawfillbox (0, 0, 900, 900, black)

Pic.ScreenLoad ("quote.bmp", 20, 200, picMerge)

fork titlemusic

delay (3000)

Pic.ScreenLoad ("space.bmp", 0, 0, picCopy)
Pic.ScreenLoad ("title.bmp", 80, 300, picCopy)
Font.Draw ("Return of the Jedi", 210, 350, font, 30)
Font.Draw ("Episode VI", 210, 300, fonts, 30)
Font.Draw ("Arcade Videogame", 210, 250, fonts, 30)
Font.Draw ("Level 1", 140, 130, fonts, 43)
Font.Draw ("Level 2", 140, 80, fonts, 43)
Font.Draw ("Level 3", 140, 30, fonts, 43)
Font.Draw ("Instructions", 600, 130, fonts, 43)

loop
    buttonwait ("down", x, y, z, z)
    exit when
	x > 560 and x < 820 and y > 80 and y < 200
	or x > 720 and x < 840 and y > 10 and y < 90
	or x > 125 and x < 265 and y > 120 and y < 165
	or x > 125 and x < 265 and y > 70 and y < 115
	or x > 125 and x < 265 and y > 20 and y < 65
end loop

if x > 560 and x < 820 and y > 80 and y < 200 then
    Pic.ScreenLoad ("space.bmp", 0, 0, picCopy)
    Font.Draw ("Pick up the bombs like this one in the right bottom corner.", 10, 840, fonts, 54)
    Pic.ScreenLoad ("firstb.bmp", 480, 805, picCopy)
    Font.Draw ("Then Drop them close to the empire ships.", 10, 780, fonts, 54)
    Font.Draw ("You'll have 15 seconds to drop the three bombs.", 10, 720, fonts, 54)
    Font.Draw ("If you don't drop the bombs on time,", 10, 660, fonts, 54)
    Font.Draw ("The Death Star will destroy you.", 10, 600, fonts, 54)
    Font.Draw ("You must not go out of the screen.", 10, 540, fonts, 54)
    Pic.ScreenLoad ("destroy.bmp", 500, 150, picCopy)
    Pic.ScreenLoad ("directions.bmp", 180, 200, picMerge)
    Font.Draw ("play", 750, 40, fonts, 43)

    loop
	buttonwait ("down", x, y, z, z)
	exit when
	    x > 720 and x < 840 and y > 10 and y < 90
    end loop

    if x > 720 and x < 840 and y > 10 and y < 90 then

	execute := true

    end if

end if

%Level 1 start

if x > 125 and x < 265 and y > 120 and y < 165 then

    execute := true

    %Level 2 start
elsif x > 125 and x < 265 and y > 70 and y < 115 then

    execute2 := true

    %Level 3 start
elsif x > 125 and x < 265 and y > 20 and y < 65 then

    execute3 := true

end if


if execute = true then

    loop

	h := 0
	v := 0

	Sprite.Show (Xright)
	Sprite.SetPosition (Xright, h, v, false)

	%Titles

	Pic.ScreenLoad ("space.bmp", 0, 0, picCopy)

	%Game

	startTime := Time.Elapsed

	fork gamemusic

	fork starshoot

	%Other Ships

	loop

	    randint (dest1, 0, 400)
	    randint (dest2, 0, 740)

	    randint (bas1, 0, 700)
	    randint (bas2, 50, 520)

	    exit when

		Math.Distance (dest1, dest2, bas1, bas2) > 200

	end loop

	Pic.ScreenLoad ("deathstar.bmp", star1, star2, picCopy)
	Pic.ScreenLoad ("base.bmp", bas1, bas2, picCopy)
	Pic.ScreenLoad ("destroyer.bmp", dest1, dest2, picCopy)

	%Bombs

	Sprite.Show (Firstb)
	Sprite.SetPosition (Firstb, b1x, b1y, false)
	Sprite.Show (Secondb)
	Sprite.SetPosition (Secondb, b2x, b2y, false)
	Sprite.Show (Thirdb)
	Sprite.SetPosition (Thirdb, b3x, b3y, false)

	%X-Wing ship

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)
	    if hasch then
	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)
		Sprite.Show (Xleft)

		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, b1x, b1y) < 50
		or finalTime = 15

	end loop

	%Bomb 1

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)
		Sprite.SetPosition (Firstb, h + 23, v + 10, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)
		Sprite.SetPosition (Firstb, h + 11, v + 22, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)
		Sprite.SetPosition (Firstb, h + 23, v + 32, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)
		Sprite.SetPosition (Firstb, h + 32, v + 22, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, dest1 + 50, dest2 + 50) < 80
		or Math.Distance (h, v, bas1 + 50, bas2 + 50) < 80
		or Math.Distance (h, v, star1 + 140, star2 + 140) < 200
		or finalTime = 15

	end loop

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)
	    if hasch then
	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, b2x, b2y) < 50
		or finalTime = 15

	end loop

	%Bomb 2

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)
	    if hasch then
	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)
		Sprite.SetPosition (Secondb, h + 23, v + 10, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)
		Sprite.SetPosition (Secondb, h + 11, v + 22, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)
		Sprite.SetPosition (Secondb, h + 23, v + 32, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)
		Sprite.SetPosition (Secondb, h + 32, v + 22, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, dest1 + 50, dest2 + 50) < 80
		or Math.Distance (h, v, bas1 + 50, bas2 + 50) < 80
		or Math.Distance (h, v, star1 + 140, star2 + 140) < 200
		or finalTime = 15

	end loop

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)
	    if hasch then
	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)

		h += 5
		Sprite.SetPosition (Xright, h, v, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)

		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)

		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)

	    end if


	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, b3x, b3y) < 50
		or finalTime = 15

	end loop

	%Bomb 3

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)
	    if hasch then
	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)
		Sprite.SetPosition (Thirdb, h + 23, v + 10, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)
		Sprite.SetPosition (Thirdb, h + 11, v + 22, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)
		Sprite.SetPosition (Thirdb, h + 23, v + 32, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)
		Sprite.SetPosition (Thirdb, h + 32, v + 22, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, dest1 + 50, dest2 + 50) < 80
		or Math.Distance (h, v, bas1 + 50, bas2 + 50) < 80
		or Math.Distance (h, v, star1 + 140, star2 + 140) < 200
		or finalTime = 15

	end loop

	%End

	score := true

	if h > 900 or v > 900 or h < -40 or v < -40 then
	    score := false

	elsif finalTime = 15 then
	    score := false

	elsif score = true then

	    Pic.ScreenLoad ("ex1.bmp", dest1 + 50, dest2 - 20, picMerge)
	    Pic.ScreenLoad ("ex1.bmp", star1 + 70, star2 + 70, picMerge)
	    Pic.ScreenLoad ("ex1.bmp", bas1 + 30, bas2 - 5, picMerge)

	    delay (200)

	    Pic.ScreenLoad ("ex2.bmp", dest1 + 50, dest2 - 20, picMerge)
	    Pic.ScreenLoad ("ex2.bmp", star1 + 70, star2 + 70, picMerge)
	    Pic.ScreenLoad ("ex2.bmp", bas1 + 30, bas2 - 5, picMerge)

	    delay (200)

	    Pic.ScreenLoad ("ex3.bmp", dest1 + 50, dest2 - 20, picMerge)
	    Pic.ScreenLoad ("ex3.bmp", star1 + 70, star2 + 70, picMerge)
	    Pic.ScreenLoad ("ex3.bmp", bas1 + 30, bas2 - 5, picMerge)

	    delay (200)

	    Pic.ScreenLoad ("ex4.bmp", dest1 + 50, dest2 - 20, picMerge)
	    Pic.ScreenLoad ("ex4.bmp", star1 + 70, star2 + 70, picMerge)
	    Pic.ScreenLoad ("ex4.bmp", bas1 + 30, bas2 - 5, picMerge)

	    delay (200)

	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar5)
	    Sprite.Hide (Deathstar4)
	    Sprite.Hide (Deathstar3)
	    Sprite.Hide (Deathstar2)
	    Sprite.Hide (Firstb)
	    Sprite.Hide (Secondb)
	    Sprite.Hide (Thirdb)
	    Sprite.Hide (Fourthb)
	    Pic.ScreenLoad ("space.bmp", 0, 0, picCopy)

	    delay (100)

	    Font.Draw ("You Win !!", 320, 420, fontl, 43)

	end if

	if score = false then
	    music := true
	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar5)
	    Sprite.Hide (Deathstar4)
	    Sprite.Hide (Deathstar3)
	    Sprite.Hide (Deathstar2)
	    Sprite.Hide (Xright)
	    Sprite.Hide (Xleft)
	    Sprite.Hide (Xdown)
	    Sprite.Hide (Xup)
	    Sprite.Hide (Firstb)
	    Sprite.Hide (Secondb)
	    Sprite.Hide (Thirdb)
	    Sprite.Hide (Fourthb)
	    Font.Draw ("You Lose", 340, 420, fontl, 43)
	end if

	Font.Draw ("Click anywhere to try again", 100, 40, font, 43)
	Font.Draw ("Exit", 20, 840, font, 43)

	buttonwait ("down", x, y, z, z)

	exit when

	    x > 0 and x < 150 and y > 820 and y < 900

    end loop

    %Level 2                                                                                          %Level 2  %Level 2  %Level 2  %Level 2
elsif execute2 = true then

    loop

	h := 0
	v := 0

	Sprite.Show (Xright)
	Sprite.SetPosition (Xright, h, v, false)

	%Titles

	Pic.ScreenLoad ("space.bmp", 0, 0, picCopy)

	%Game

	startTime := Time.Elapsed

	fork gamemusic

	fork starshoot2

	%Other Ships

	loop

	    randint (dest1, 0, 400)
	    randint (dest2, 0, 740)

	    randint (bas1, 0, 700)
	    randint (bas2, 50, 520)

	    randint (stie1, 0, 400)
	    randint (stie2, 0, 740)

	    randint (ltie1, 0, 700)
	    randint (ltie2, 50, 520)

	    exit when

		Math.Distance (dest1, dest2, bas1, bas2) > 160
		and Math.Distance (dest1, dest2, stie1, stie2) > 160
		and Math.Distance (dest1, dest2, ltie1, ltie2) > 160

		and Math.Distance (bas1, bas2, dest1, dest2) > 160
		and Math.Distance (bas1, bas2, stie1, stie2) > 160
		and Math.Distance (bas1, bas2, ltie1, ltie2) > 160

		and Math.Distance (stie1, stie2, bas1, bas2) > 160
		and Math.Distance (stie1, stie2, dest1, dest2) > 160
		and Math.Distance (stie1, stie2, ltie1, ltie2) > 160

		and Math.Distance (ltie1, ltie2, bas1, bas2) > 160
		and Math.Distance (ltie1, ltie2, stie1, stie2) > 160
		and Math.Distance (ltie1, ltie2, dest1, dest2) > 160

	end loop

	Pic.ScreenLoad ("deathstar.bmp", star1, star2, picCopy)
	Pic.ScreenLoad ("base.bmp", bas1, bas2, picCopy)
	Pic.ScreenLoad ("destroyer.bmp", dest1, dest2, picCopy)
	Pic.ScreenLoad ("tie1.bmp", stie1, stie2, picCopy)
	Pic.ScreenLoad ("tie2.bmp", ltie1, ltie2, picCopy)

	%Bombs

	Sprite.Show (Firstb)
	Sprite.SetPosition (Firstb, b1x, b1y, false)
	Sprite.Show (Secondb)
	Sprite.SetPosition (Secondb, b2x, b2y, false)
	Sprite.Show (Thirdb)
	Sprite.SetPosition (Thirdb, b3x, b3y, false)
	Sprite.Show (Fourthb)
	Sprite.SetPosition (Fourthb, b4x, b4y, false)
	Sprite.Show (Fifthb)
	Sprite.SetPosition (Fifthb, b5x, b5y, false)

	%X-Wing ship

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)

		h += 5
		Sprite.SetPosition (Xright, h, v, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)

		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)

		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, b1x, b1y) < 50
		or finalTime = 25

	end loop

	%Bomb 1

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)
		Sprite.SetPosition (Firstb, h + 23, v + 10, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)
		Sprite.SetPosition (Firstb, h + 11, v + 22, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)
		Sprite.SetPosition (Firstb, h + 23, v + 32, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)
		Sprite.SetPosition (Firstb, h + 32, v + 22, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, dest1 + 50, dest2 + 50) < 80
		or Math.Distance (h, v, bas1 + 50, bas2 + 50) < 80
		or Math.Distance (h, v, star1 + 140, star2 + 140) < 200
		or Math.Distance (h, v, stie1 + 10, stie2 + 15) < 40
		or Math.Distance (h, v, ltie1 + 25, ltie2 + 15) < 40
		or finalTime = 25

	end loop

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, b2x, b2y) < 50
		or finalTime = 25

	end loop

	%Bomb 2

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)
		Sprite.SetPosition (Secondb, h + 23, v + 10, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)
		Sprite.SetPosition (Secondb, h + 11, v + 22, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)
		Sprite.SetPosition (Secondb, h + 23, v + 32, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)
		Sprite.SetPosition (Secondb, h + 32, v + 22, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, dest1 + 50, dest2 + 50) < 80
		or Math.Distance (h, v, bas1 + 50, bas2 + 50) < 80
		or Math.Distance (h, v, star1 + 140, star2 + 140) < 200
		or Math.Distance (h, v, stie1 + 10, stie2 + 15) < 40
		or Math.Distance (h, v, ltie1 + 25, ltie2 + 15) < 40
		or finalTime = 25

	end loop

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)

		h += 5
		Sprite.SetPosition (Xright, h, v, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)

		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)

		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)

	    end if


	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, b3x, b3y) < 50
		or finalTime = 25

	end loop

	%Bomb 3

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)
		Sprite.SetPosition (Thirdb, h + 23, v + 10, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)
		Sprite.SetPosition (Thirdb, h + 11, v + 22, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)
		Sprite.SetPosition (Thirdb, h + 23, v + 32, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)
		Sprite.SetPosition (Thirdb, h + 32, v + 22, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, dest1 + 50, dest2 + 50) < 80
		or Math.Distance (h, v, bas1 + 50, bas2 + 50) < 80
		or Math.Distance (h, v, star1 + 140, star2 + 140) < 200
		or Math.Distance (h, v, stie1 + 10, stie2 + 15) < 40
		or Math.Distance (h, v, ltie1 + 25, ltie2 + 15) < 40
		or finalTime = 25

	end loop

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)

		h += 5
		Sprite.SetPosition (Xright, h, v, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)

		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)

		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)

	    end if


	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, b4x, b4y) < 50
		or finalTime = 25

	end loop

	%Bomb 4

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)
		Sprite.SetPosition (Fourthb, h + 23, v + 10, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)
		Sprite.SetPosition (Fourthb, h + 11, v + 22, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)
		Sprite.SetPosition (Fourthb, h + 23, v + 32, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)
		Sprite.SetPosition (Fourthb, h + 32, v + 22, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, dest1 + 50, dest2 + 50) < 80
		or Math.Distance (h, v, bas1 + 50, bas2 + 50) < 80
		or Math.Distance (h, v, star1 + 140, star2 + 140) < 200
		or Math.Distance (h, v, stie1 + 10, stie2 + 15) < 40
		or Math.Distance (h, v, ltie1 + 25, ltie2 + 15) < 40
		or finalTime = 25

	end loop

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)

		h += 5
		Sprite.SetPosition (Xright, h, v, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)

		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)

		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)

	    end if


	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, b5x, b5y) < 50
		or finalTime = 25

	end loop

	%Bomb 5

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)
		Sprite.SetPosition (Fifthb, h + 23, v + 10, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)
		Sprite.SetPosition (Fifthb, h + 11, v + 22, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)
		Sprite.SetPosition (Fifthb, h + 23, v + 32, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)
		Sprite.SetPosition (Fifthb, h + 32, v + 22, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, dest1 + 50, dest2 + 50) < 80
		or Math.Distance (h, v, bas1 + 50, bas2 + 50) < 80
		or Math.Distance (h, v, star1 + 140, star2 + 140) < 200
		or Math.Distance (h, v, stie1 + 10, stie2 + 15) < 40
		or Math.Distance (h, v, ltie1 + 25, ltie2 + 15) < 40
		or finalTime = 25

	end loop

	%End

	score := true

	if h > 900 or v > 900 or h < -40 or v < -40 then
	    score := false

	elsif finalTime = 25 then
	    score := false

	elsif score = true then

	    Pic.ScreenLoad ("ex1.bmp", dest1 + 50, dest2 - 20, picMerge)
	    Pic.ScreenLoad ("ex1.bmp", star1 + 70, star2 + 70, picMerge)
	    Pic.ScreenLoad ("ex1.bmp", bas1 + 30, bas2 - 5, picMerge)
	    Pic.ScreenLoad ("ex1.bmp", stie1 - 20, stie2 - 10, picMerge)
	    Pic.ScreenLoad ("ex1.bmp", ltie1, ltie2, picMerge)

	    delay (200)

	    Pic.ScreenLoad ("ex2.bmp", dest1 + 50, dest2 - 20, picMerge)
	    Pic.ScreenLoad ("ex2.bmp", star1 + 70, star2 + 70, picMerge)
	    Pic.ScreenLoad ("ex2.bmp", bas1 + 30, bas2 - 5, picMerge)
	    Pic.ScreenLoad ("ex2.bmp", stie1 - 20, stie2 - 10, picMerge)
	    Pic.ScreenLoad ("ex2.bmp", ltie1, ltie2, picMerge)

	    delay (200)

	    Pic.ScreenLoad ("ex3.bmp", dest1 + 50, dest2 - 20, picMerge)
	    Pic.ScreenLoad ("ex3.bmp", star1 + 70, star2 + 70, picMerge)
	    Pic.ScreenLoad ("ex3.bmp", bas1 + 30, bas2 - 5, picMerge)
	    Pic.ScreenLoad ("ex3.bmp", stie1 - 20, stie2 - 10, picMerge)
	    Pic.ScreenLoad ("ex3.bmp", ltie1, ltie2, picMerge)

	    delay (200)

	    Pic.ScreenLoad ("ex4.bmp", dest1 + 50, dest2 - 20, picMerge)
	    Pic.ScreenLoad ("ex4.bmp", star1 + 70, star2 + 70, picMerge)
	    Pic.ScreenLoad ("ex4.bmp", bas1 + 30, bas2 - 5, picMerge)
	    Pic.ScreenLoad ("ex4.bmp", stie1 - 20, stie2 - 10, picMerge)
	    Pic.ScreenLoad ("ex4.bmp", ltie1, ltie2, picMerge)

	    delay (200)

	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar5)
	    Sprite.Hide (Deathstar4)
	    Sprite.Hide (Deathstar3)
	    Sprite.Hide (Deathstar2)
	    Sprite.Hide (Firstb)
	    Sprite.Hide (Secondb)
	    Sprite.Hide (Thirdb)
	    Sprite.Hide (Fourthb)
	    Sprite.Hide (Fifthb)
	    Pic.ScreenLoad ("space.bmp", 0, 0, picCopy)

	    delay (100)

	    Font.Draw ("You Win !!", 320, 420, fontl, 43)

	end if

	if score = false then
	    music := true
	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar5)
	    Sprite.Hide (Deathstar4)
	    Sprite.Hide (Deathstar3)
	    Sprite.Hide (Deathstar2)
	    Sprite.Hide (Xright)
	    Sprite.Hide (Xleft)
	    Sprite.Hide (Xdown)
	    Sprite.Hide (Xup)
	    Sprite.Hide (Firstb)
	    Sprite.Hide (Secondb)
	    Sprite.Hide (Thirdb)
	    Sprite.Hide (Fourthb)
	    Sprite.Hide (Fifthb)
	    Font.Draw ("You Lose", 340, 420, fontl, 43)
	end if

	Font.Draw ("Click anywhere to try again", 100, 40, font, 43)
	Font.Draw ("Exit", 20, 840, font, 43)

	buttonwait ("down", x, y, z, z)

	exit when

	    x > 0 and x < 150 and y > 820 and y < 900

    end loop

    %Level 3                                                                                           %Level 3  %Level 3  %Level 3  %Level 3
elsif execute3 = true then

    loop

	h := 0
	v := 0

	Sprite.Show (Xright)
	Sprite.SetPosition (Xright, h, v, false)

	%Titles

	Pic.ScreenLoad ("space.bmp", 0, 0, picCopy)

	%Game

	startTime := Time.Elapsed

	fork gamemusic

	fork starshoot2

	%Other Ships

	loop

	    randint (dest1, 0, 400)
	    randint (dest2, 0, 740)

	    randint (bas1, 0, 700)
	    randint (bas2, 50, 520)

	    randint (stie1, 0, 400)
	    randint (stie2, 0, 740)

	    randint (ltie1, 0, 700)
	    randint (ltie2, 50, 520)

	    randint (droid1, 0, 400)
	    randint (droid2, 0, 740)

	    exit when

		Math.Distance (dest1, dest2, bas1, bas2) > 160
		and Math.Distance (dest1, dest2, stie1, stie2) > 160
		and Math.Distance (dest1, dest2, ltie1, ltie2) > 160
		and Math.Distance (dest1, dest2, droid1, droid2) > 160

		and Math.Distance (bas1, bas2, dest1, dest2) > 160
		and Math.Distance (bas1, bas2, stie1, stie2) > 160
		and Math.Distance (bas1, bas2, ltie1, ltie2) > 160
		and Math.Distance (bas1, bas2, droid1, droid2) > 160

		and Math.Distance (stie1, stie2, bas1, bas2) > 160
		and Math.Distance (stie1, stie2, dest1, dest2) > 160
		and Math.Distance (stie1, stie2, ltie1, ltie2) > 160
		and Math.Distance (stie1, stie2, droid1, droid2) > 160

		and Math.Distance (ltie1, ltie2, bas1, bas2) > 160
		and Math.Distance (ltie1, ltie2, stie1, stie2) > 160
		and Math.Distance (ltie1, ltie2, dest1, dest2) > 160
		and Math.Distance (ltie1, ltie2, droid1, droid2) > 160

		and Math.Distance (droid1, droid2, bas1, bas2) > 160
		and Math.Distance (droid1, droid2, stie1, stie2) > 160
		and Math.Distance (droid1, droid2, dest1, dest2) > 160
		and Math.Distance (droid1, droid2, ltie1, ltie2) > 160

	end loop

	Pic.ScreenLoad ("deathstar.bmp", star1, star2, picCopy)
	Pic.ScreenLoad ("base.bmp", bas1, bas2, picCopy)
	Pic.ScreenLoad ("destroyer.bmp", dest1, dest2, picCopy)
	Pic.ScreenLoad ("tie1.bmp", stie1, stie2, picCopy)
	Pic.ScreenLoad ("tie2.bmp", ltie1, ltie2, picCopy)
	Pic.ScreenLoad ("droidship.bmp", droid1, droid2, picCopy)

	%Bombs

	Sprite.Show (Firstb)
	Sprite.SetPosition (Firstb, b1x, b1y, false)
	Sprite.Show (Secondb)
	Sprite.SetPosition (Secondb, b2x, b2y, false)
	Sprite.Show (Thirdb)
	Sprite.SetPosition (Thirdb, b3x, b3y, false)
	Sprite.Show (Fourthb)
	Sprite.SetPosition (Fourthb, b4x, b4y, false)
	Sprite.Show (Fifthb)
	Sprite.SetPosition (Fifthb, b5x, b5y, false)
	Sprite.Show (Sixthb)
	Sprite.SetPosition (Sixthb, b6x, b6y, false)

	%X-Wing ship

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)

		h += 5
		Sprite.SetPosition (Xright, h, v, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)

		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)

		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, b1x, b1y) < 50
		or finalTime = 25

	end loop

	%Bomb 1

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)
		Sprite.SetPosition (Firstb, h + 23, v + 10, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)
		Sprite.SetPosition (Firstb, h + 11, v + 22, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)
		Sprite.SetPosition (Firstb, h + 23, v + 32, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)
		Sprite.SetPosition (Firstb, h + 32, v + 22, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, dest1 + 50, dest2 + 50) < 80
		or Math.Distance (h, v, bas1 + 50, bas2 + 50) < 80
		or Math.Distance (h, v, star1 + 140, star2 + 140) < 200
		or Math.Distance (h, v, stie1 + 10, stie2 + 15) < 40
		or Math.Distance (h, v, ltie1 + 25, ltie2 + 15) < 40
		or Math.Distance (h, v, droid1 + 20, droid2 + 10) < 40
		or finalTime = 25

	end loop

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, b2x, b2y) < 50
		or finalTime = 25

	end loop

	%Bomb 2

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)
		Sprite.SetPosition (Secondb, h + 23, v + 10, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)
		Sprite.SetPosition (Secondb, h + 11, v + 22, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)
		Sprite.SetPosition (Secondb, h + 23, v + 32, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)
		Sprite.SetPosition (Secondb, h + 32, v + 22, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, dest1 + 50, dest2 + 50) < 80
		or Math.Distance (h, v, bas1 + 50, bas2 + 50) < 80
		or Math.Distance (h, v, star1 + 140, star2 + 140) < 200
		or Math.Distance (h, v, stie1 + 10, stie2 + 15) < 40
		or Math.Distance (h, v, ltie1 + 25, ltie2 + 15) < 40
		or Math.Distance (h, v, droid1 + 20, droid2 + 10) < 40
		or finalTime = 25

	end loop

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)

		h += 5
		Sprite.SetPosition (Xright, h, v, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)

		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)

		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)

	    end if


	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, b3x, b3y) < 50
		or finalTime = 25

	end loop

	%Bomb 3

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)
		Sprite.SetPosition (Thirdb, h + 23, v + 10, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)
		Sprite.SetPosition (Thirdb, h + 11, v + 22, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)
		Sprite.SetPosition (Thirdb, h + 23, v + 32, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)
		Sprite.SetPosition (Thirdb, h + 32, v + 22, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, dest1 + 50, dest2 + 50) < 80
		or Math.Distance (h, v, bas1 + 50, bas2 + 50) < 80
		or Math.Distance (h, v, star1 + 140, star2 + 140) < 200
		or Math.Distance (h, v, stie1 + 10, stie2 + 15) < 40
		or Math.Distance (h, v, ltie1 + 25, ltie2 + 15) < 40
		or Math.Distance (h, v, droid1 + 20, droid2 + 10) < 40
		or finalTime = 25

	end loop

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)

		h += 5
		Sprite.SetPosition (Xright, h, v, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)

		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)

		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)

	    end if


	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, b4x, b4y) < 50
		or finalTime = 25

	end loop

	%Bomb 4

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)
		Sprite.SetPosition (Fourthb, h + 23, v + 10, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)
		Sprite.SetPosition (Fourthb, h + 11, v + 22, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)
		Sprite.SetPosition (Fourthb, h + 23, v + 32, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)
		Sprite.SetPosition (Fourthb, h + 32, v + 22, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, dest1 + 50, dest2 + 50) < 80
		or Math.Distance (h, v, bas1 + 50, bas2 + 50) < 80
		or Math.Distance (h, v, star1 + 140, star2 + 140) < 200
		or Math.Distance (h, v, stie1 + 10, stie2 + 15) < 40
		or Math.Distance (h, v, ltie1 + 25, ltie2 + 15) < 40
		or Math.Distance (h, v, droid1 + 20, droid2 + 10) < 40
		or finalTime = 25

	end loop

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)

		h += 5
		Sprite.SetPosition (Xright, h, v, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)

		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)

		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)

	    end if


	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, b5x, b5y) < 50
		or finalTime = 25

	end loop

	%Bomb 5

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)
		Sprite.SetPosition (Fifthb, h + 23, v + 10, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)
		Sprite.SetPosition (Fifthb, h + 11, v + 22, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)
		Sprite.SetPosition (Fifthb, h + 23, v + 32, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)
		Sprite.SetPosition (Fifthb, h + 32, v + 22, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, dest1 + 50, dest2 + 50) < 80
		or Math.Distance (h, v, bas1 + 50, bas2 + 50) < 80
		or Math.Distance (h, v, star1 + 140, star2 + 140) < 200
		or Math.Distance (h, v, stie1 + 10, stie2 + 15) < 40
		or Math.Distance (h, v, ltie1 + 25, ltie2 + 15) < 40
		or Math.Distance (h, v, droid1 + 20, droid2 + 10) < 40
		or finalTime = 25

	end loop

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)

		h += 5
		Sprite.SetPosition (Xright, h, v, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)

		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)

		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)

	    end if


	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, b6x, b6y) < 50
		or finalTime = 25

	end loop

	%Bomb 6

	loop

	    %Sprite.SetPosition(Xright,x,y,false)

	    Input.KeyDown (ch)

	    if hasch then

	    elsif ch ('w') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xup)
		Sprite.Show (Firstb)
		v += 5
		Sprite.SetPosition (Xup, h, v, false)
		Sprite.SetPosition (Sixthb, h + 23, v + 10, false)

	    elsif ch ('d') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xdown)

		Sprite.Show (Xright)
		Sprite.Show (Firstb)
		h += 5
		Sprite.SetPosition (Xright, h, v, false)
		Sprite.SetPosition (Sixthb, h + 11, v + 22, false)

	    elsif ch ('s') then

		Sprite.Hide (Xright)
		Sprite.Hide (Xleft)
		Sprite.Hide (Xup)

		Sprite.Show (Xdown)
		Sprite.Show (Firstb)
		v -= 5
		Sprite.SetPosition (Xdown, h, v, false)
		Sprite.SetPosition (Sixthb, h + 23, v + 32, false)

	    elsif ch ('a') then

		Sprite.Hide (Xup)
		Sprite.Hide (Xright)
		Sprite.Hide (Xdown)

		Sprite.Show (Xleft)
		Sprite.Show (Firstb)
		h -= 5
		Sprite.SetPosition (Xleft, h, v, false)
		Sprite.SetPosition (Sixthb, h + 32, v + 22, false)

	    end if

	    delay (10)

	    exit when

		h > 900
		or v > 900
		or h < -40
		or v < -40
		or Math.Distance (h, v, dest1 + 50, dest2 + 50) < 80
		or Math.Distance (h, v, bas1 + 50, bas2 + 50) < 80
		or Math.Distance (h, v, star1 + 140, star2 + 140) < 200
		or Math.Distance (h, v, stie1 + 10, stie2 + 15) < 40
		or Math.Distance (h, v, ltie1 + 25, ltie2 + 15) < 40
		or Math.Distance (h, v, droid1 + 20, droid2 + 10) < 40
		or finalTime = 25

	end loop

	%End

	score := true

	if h > 900 or v > 900 or h < -40 or v < -40 then
	    score := false

	elsif finalTime = 25 then
	    score := false

	elsif score = true then

	    Pic.ScreenLoad ("ex1.bmp", dest1 + 50, dest2 - 20, picMerge)
	    Pic.ScreenLoad ("ex1.bmp", star1 + 70, star2 + 70, picMerge)
	    Pic.ScreenLoad ("ex1.bmp", bas1 + 30, bas2 - 5, picMerge)
	    Pic.ScreenLoad ("ex1.bmp", stie1 - 20, stie2 - 10, picMerge)
	    Pic.ScreenLoad ("ex1.bmp", ltie1, ltie2, picMerge)
	    Pic.ScreenLoad ("ex1.bmp", droid1, droid2, picMerge)

	    delay (200)

	    Pic.ScreenLoad ("ex2.bmp", dest1 + 50, dest2 - 20, picMerge)
	    Pic.ScreenLoad ("ex2.bmp", star1 + 70, star2 + 70, picMerge)
	    Pic.ScreenLoad ("ex2.bmp", bas1 + 30, bas2 - 5, picMerge)
	    Pic.ScreenLoad ("ex2.bmp", stie1 - 20, stie2 - 10, picMerge)
	    Pic.ScreenLoad ("ex2.bmp", ltie1, ltie2, picMerge)
	    Pic.ScreenLoad ("ex2.bmp", droid1, droid2, picMerge)

	    delay (200)

	    Pic.ScreenLoad ("ex3.bmp", dest1 + 50, dest2 - 20, picMerge)
	    Pic.ScreenLoad ("ex3.bmp", star1 + 70, star2 + 70, picMerge)
	    Pic.ScreenLoad ("ex3.bmp", bas1 + 30, bas2 - 5, picMerge)
	    Pic.ScreenLoad ("ex3.bmp", stie1 - 20, stie2 - 10, picMerge)
	    Pic.ScreenLoad ("ex3.bmp", ltie1, ltie2, picMerge)
	    Pic.ScreenLoad ("ex3.bmp", droid1, droid2, picMerge)

	    delay (200)

	    Pic.ScreenLoad ("ex4.bmp", dest1 + 50, dest2 - 20, picMerge)
	    Pic.ScreenLoad ("ex4.bmp", star1 + 70, star2 + 70, picMerge)
	    Pic.ScreenLoad ("ex4.bmp", bas1 + 30, bas2 - 5, picMerge)
	    Pic.ScreenLoad ("ex4.bmp", stie1 - 20, stie2 - 10, picMerge)
	    Pic.ScreenLoad ("ex4.bmp", ltie1, ltie2, picMerge)
	    Pic.ScreenLoad ("ex4.bmp", droid1, droid2, picMerge)

	    delay (200)

	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar5)
	    Sprite.Hide (Deathstar4)
	    Sprite.Hide (Deathstar3)
	    Sprite.Hide (Deathstar2)
	    Sprite.Hide (Firstb)
	    Sprite.Hide (Secondb)
	    Sprite.Hide (Thirdb)
	    Sprite.Hide (Fourthb)
	    Sprite.Hide (Fifthb)
	    Sprite.Hide (Sixthb)
	    Pic.ScreenLoad ("space.bmp", 0, 0, picCopy)

	    delay (100)

	    Font.Draw ("You Win !!", 320, 420, fontl, 43)

	end if

	if score = false then
	    music := true
	    Sprite.Hide (Deathstar6)
	    Sprite.Hide (Deathstar5)
	    Sprite.Hide (Deathstar4)
	    Sprite.Hide (Deathstar3)
	    Sprite.Hide (Deathstar2)
	    Sprite.Hide (Xright)
	    Sprite.Hide (Xleft)
	    Sprite.Hide (Xdown)
	    Sprite.Hide (Xup)
	    Sprite.Hide (Firstb)
	    Sprite.Hide (Secondb)
	    Sprite.Hide (Thirdb)
	    Sprite.Hide (Fourthb)
	    Sprite.Hide (Fifthb)
	    Sprite.Hide (Sixthb)
	    Font.Draw ("You Lose", 340, 420, fontl, 43)
	end if

	Font.Draw ("Click anywhere to try again", 100, 40, font, 43)
	Font.Draw ("Exit", 20, 840, font, 43)

	buttonwait ("down", x, y, z, z)

	exit when

	    x > 0 and x < 150 and y > 820 and y < 900

    end loop

end if

music := true

Window.Close (game)

