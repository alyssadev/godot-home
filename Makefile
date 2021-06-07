all: win mac linux

win:
	godot project.godot --no-window --export "Windows Desktop" export/win/home.exe

mac:
	godot project.godot --no-window --export "Mac OSX" export/mac/home.mac.zip

linux:
	godot project.godot --no-window --export "Linux/X11" export/linux/home.x86_64

html5:
	godot project.godot --no-window --export HTML5 docs/index.html

clean:
	rm -f export/*/*
