all: win mac linux uwp html5

win:
	godot project.godot --no-window --export "Windows Desktop" export/win/home.exe
	zip -rj export/win/home.win.zip export/win/home.exe export/win/home.pck

mac:
	godot project.godot --no-window --export "Mac OSX" export/mac/home.mac.zip

linux:
	godot project.godot --no-window --export "Linux/X11" export/linux/home.x86_64
	zip -rj export/linux/home.linux.zip export/linux/home.x86_64

uwp:
	godot project.godot --no-window --export "UWP" export/uwp/home.uwp.appx

html5:
	godot project.godot --no-window --export HTML5 docs/index.html
	zip -rj export/html5/home.html5.zip docs/*

clean:
	rm -f export/*/*
