# Defined in /tmp/fish.1buQze/fish_prompt.fish @ line 2
function fish_prompt
	set_color -b brblue black
	echo -n " ><> "
	set_color -b normal $fish_color_cwd
	echo -n " "(prompt_pwd)
	
	set branch (git branch --show-current 2> /dev/null; set br_status $status)
	if [ $br_status = 0 ] 
		set_color red
		echo -n " [$branch]"
	end
	set_color normal
	echo -n ' > '
end
