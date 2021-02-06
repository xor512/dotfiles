# Install

* curl -L https://get.oh-my.fish | fish (c) https://github.com/oh-my-fish/oh-my-fish
* omf install simplevi/sashimi (or other theme, or just edit prompt
* to edit prompt: ~/.config/fish/functions/fish_prompt.fish, for example:

	function fish_prompt -d "Write out the prompt"
	    printf '[%s@%s %s%s%s]$ ' (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
	end

or change sashimi to:

	if test $last_status = 0
	    set initial_indicator "$green◆"
	    #set status_indicator "$normal❯$cyan❯$green❯"
	    set status_indicator "$green❯"
	else
	    set initial_indicator "$red✖ $last_status"
	    #set status_indicator "$red❯$red❯$red❯"
	    set status_indicator "$red❯"
	 end

etc

* before running mc set SHELL /usr/bin/fish <- in omf.fish
* terminal = "urxvtc -e /usr/bin/fish" <- in awesome.lua
* see ./config/fish/conf.d/omf.fish
* Install fish from git (yay -S fish-git) if there are troubles
  with running first command after mc starts
* TODO: still having troubles with running GUI apps from mc
