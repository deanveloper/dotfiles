#!/usr/local/bin/fish

function fish_prompt
	set_color -b brgreen magenta
	echo -n "><>"
	set_color -b normal $fish_color_cwd
	echo -n " "(prompt_pwd)

	if [ -d .git ] 
		set_color red
		echo -n " ["(git rev-parse --abbrev-ref HEAD 2> /dev/null)"]"
	end
	set_color normal
	echo -n ' > '
end

function fish_right_prompt
	set_color $fish_color_autosuggestion
	date +"%-I:%M:%S%P"
	set_color normal
end
