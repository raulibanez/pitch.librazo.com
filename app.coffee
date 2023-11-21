# Defaults
Framer.Extras.Hints.disable()
Framer.Extras.Preloader.enable()
Framer.Extras.Preloader.setLogo("images/icon.png")
Framer.Defaults.Animation =
	time: 0.375
Framer.Device.background.backgroundColor = "#000"

Framer.Device.customize
	deviceType: Framer.Device.Type.Computer
	screenWidth: 1920
	screenHeight: 1080
	deviceImage: "images/device.png"
	deviceImageWidth: 1920
	deviceImageHeight: 1080
	devicePixelRatio: 1
	
Framer.Device.forceHideBezel()

# Framer.Device.screen.width = 1920
# Framer.Device.screen.height = 1080
# Framer.Device.contentScale = 1
# Framer.Device.fullScreen = true
# 
# Canvas.onResize ->
# 	Framer.Device.screen.width = 1920
# 	Framer.Device.screen.height = 1080
# 	Framer.Device.contentScale = 1
# 	Framer.Device.fullScreen = true

#Framer.Device.deviceType = "fullscreen"

# Variables
screen01.x=1
screen01.index=100
screen01.opacity=1
screen02.x=0
screen02.index=90
screen02.opacity=0
screen03.x=0
screen03.index=80
screen03.opacity=0
screen04.x=0
screen04.index=70
screen04.opacity=0
screen05.x=0
screen05.index=60
screen05.opacity=0
screen06.x=0
screen06.index=50
screen06.opacity=0
screen07.x=0
screen07.index=40
screen07.opacity=0
screen08.x=0
screen08.index=30
screen08.opacity=0
screen09.x=0
screen09.y=0
screen09.index=20
screen09.opacity=0
screen10.x=0
screen10.y=0
screen10.index=10
screen10.opacity=0
screen105.x=0
screen105.y=0
screen105.index=10
screen105.opacity=0
screen11.x=0
screen11.y=0
screen11.index=5
screen11.opacity=0
knock = new Audio("audio/knock.mp3")
laugh = new Audio("audio/laughing.mp3")
mainTheme = new Audio("audio/scary.mp3")
icons = [icon01, icon02, icon03, icon04, icon05, icon06, icon07, icon08,
		icon09, icon10, icon11, icon12, icon13, icon14, icon15, icon16,
		icon17, icon18, icon19, icon20, icon21, icon22, icon23, icon24,
		icon25, icon26, icon27, icon28, icon29, icon30, icon31, icon32,
		icon33, icon34, icon35, icon36, icon37, icon38, icon39, icon40,
		icon41, icon42, icon43, icon44, icon45, icon46, icon47, icon48,
		icon49, icon50, icon51, icon52, icon53, icon54, icon55, icon56]
for icon, index in icons
	do (icon) ->
		icon.opacity=0
		icon.srcX = icon.midX
		icon.srcY = icon.midY
		icon.scale=2
		icon.index=index
		icon.x= Utils.modulate(150, [1, 100], [Screen.midX, icon.midX])
		icon.y= Utils.modulate(150, [1, 100], [Screen.midY, icon.midY])
animateIcon = (icon) ->
	icon.animate
		midX: icon.srcX
		midY: icon.srcY
		opacity: 1
		scale: 1
		options:
			time: 0.375
			curve: Bezier.easeInOut
					
# screen01.opacity=0
# screen02.opacity=0
# screen03.opacity=1
# Utils.delay 1, =>
# 	for icon, index in icons
# 		do (icon) ->
# 			Utils.delay 0.3+(index*0.075), ->
# 				animateIcon(icon)

# Demo
# Defaults
page = 1
a3.backgroundColor = "black" 
door.scale = 1.1
door.y = -72
door.x = -626

# mainTheme.play()  
# moveUp
progress = Utils.throttle 1, ->
	if page == 1
		totoro.animate
			y: 0
		door.animate
			scale: 0.35
			y: -800
		list.animate
			y: -812	
		a1.animate
			backgroundColor: "black"
		page = 2
	else if page == 2
		Utils.delay .9, ->
			knock.play()
		Utils.delay 1.5, ->
			laugh.play()
# 		a3.animate
# 			backgroundColor: "#FBFBFB"
		totoro.animate
			y: totoro.y-totoro.height
		page = 3
		list.animate
			y: -812*2
	else if page == 3
		page = 4
		list.animate
			y: -812*3

currentScreen="slide01"

# Next
next = Utils.throttle 1, ->
	if currentScreen is "slide01"
			currentScreen="slide02"
			screen01.animate
				opacity:0
			screen02.animate
				opacity:1
			screen03.opacity=0.01
		else if currentScreen is "slide02"
			currentScreen="slide03"
			screen02.animate
				opacity:0
			screen03.animate
				opacity:1
			for icon, index in icons
				do (icon) ->
					Utils.delay (index*0.075), ->
						animateIcon(icon)
		else if currentScreen is "slide03"
			currentScreen="slide04"
			screen03.animate
				opacity:0
			screen04.animate
				opacity:1
		else if currentScreen is "slide04"
			currentScreen="slide05"
			screen04.animate
				opacity:0
			screen05.animate
				opacity:1
		else if currentScreen is "slide05"
			currentScreen="slide06" 
			mainTheme.play()
			fade.animate
				opacity:1
			Utils.delay 1,->
				firstPage.animate
					opacity: 0
			Utils.delay 1.375,->
				fade.animate
					opacity:0
		else if currentScreen is "slide06"
			currentScreen="slide07" 
			progress()
		else if currentScreen is "slide07"
			currentScreen="slide08" 
			progress()
		else if currentScreen is "slide08"
			currentScreen="slide09" 
			mainTheme.pause()
			knock.pause()
			laugh.pause()
			firstPage.animate
				opacity: 1
		else if currentScreen is "slide09"
			currentScreen="slide10" 
			screen05.animate
				opacity:0
			screen06.animate
				opacity:1
		else if currentScreen is "slide10"
			currentScreen="slide11" 
			screen06.animate
				opacity:0
			screen07.animate
				opacity:1
		else if currentScreen is "slide11"
			currentScreen="slide12" 
			screen07.animate
				opacity:0
			screen08.animate
				opacity:1
		else if currentScreen is "slide12"
			currentScreen="slide13" 
			screen08.animate
				opacity:0
			screen09.animate
				opacity:1
		else if currentScreen is "slide13"
			currentScreen="slide14" 
			screen09.animate
				opacity:0
			screen10.animate
				opacity:1
		else if currentScreen is "slide14"
			currentScreen="slide15" 
			screen10.animate
				opacity:0
			screen105.animate
				opacity:1
		else if currentScreen is "slide15"
			currentScreen="slide16" 
			screen105.animate
				opacity:0
			screen11.animate
				opacity:1

# Reset
reset = Utils.throttle 1, ->
	page = 1
	totoro.y=406
	door.scale=1.1
	door.x = -626
	door.y=-72
	list.y=0
	a1.backgroundColor="white"
	a3.backgroundColor = "black" 
	currentScreen="slide01"
	screen01.x=1
	screen01.index=100
	screen01.opacity=1
	screen02.x=0
	screen02.index=90
	screen02.opacity=0
	screen03.x=0
	screen03.index=80
	screen03.opacity=0
	screen04.x=0
	screen04.index=70
	screen04.opacity=0
	screen05.x=0
	screen05.index=60
	screen05.opacity=0
	screen06.x=0
	screen06.index=50
	screen06.opacity=0
	screen07.x=0
	screen07.index=40
	screen07.opacity=0
	screen08.x=0
	screen08.index=30
	screen08.opacity=0
	screen09.x=0
	screen09.y=0
	screen09.index=20
	screen09.opacity=0
	screen10.x=0
	screen10.y=0
	screen10.index=10
	screen10.opacity=0
	screen105.x=0
	screen105.y=0
	screen105.index=8
	screen105.opacity=0
	screen11.x=0
	screen11.y=0
	screen11.index=5
	screen11.opacity=0
	knock = new Audio("audio/knock.mp3")
	laugh = new Audio("audio/laughing.mp3")
	mainTheme = new Audio("audio/scary.mp3")
	icons = [icon01, icon02, icon03, icon04, icon05, icon06, icon07, icon08,
			icon09, icon10, icon11, icon12, icon13, icon14, icon15, icon16,
			icon17, icon18, icon19, icon20, icon21, icon22, icon23, icon24,
			icon25, icon26, icon27, icon28, icon29, icon30, icon31, icon32,
			icon33, icon34, icon35, icon36, icon37, icon38, icon39, icon40,
			icon41, icon42, icon43, icon44, icon45, icon46, icon47, icon48,
			icon49, icon50, icon51, icon52, icon53, icon54, icon55, icon56]
	for icon, index in icons
		do (icon) ->
			icon.midX = icon.srcX
			icon.midY = icon.srcY
			icon.opacity=0
			icon.scale=2
			icon.index=index
			icon.x= Utils.modulate(150, [1, 100], [Screen.midX, icon.srcX])
			icon.y= Utils.modulate(150, [1, 100], [Screen.midY, icon.srcY])

keys=0
lastTS = Date.now()
nextTS = Date.now()

document.addEventListener 'keydown', (event) ->
	keyCode = event.which
	if keyCode is 34
		next()
	else if keyCode is 39
		next()
	else if keyCode is 33
		keys++
		nextTS = Date.now()
		if (nextTS-lastTS) < 1000
			reset()
		else
			lastTS=nextTS
	else if keyCode is 37
		keys++
		nextTS = Date.now()
		if (nextTS-lastTS) < 1000
			reset()
		else
			lastTS=nextTS
		
pixel.index=200
Utils.interval 5, ->
	pixel.rotation = pixel.rotation+1
	