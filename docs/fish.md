# Install

* curl -L https://get.oh-my.fish | fish (c) https://github.com/oh-my-fish/oh-my-fish
* omf install simplevi (or other theme, or just edit prompt
* to edit prompt: ~/.config/fish/functions/fish_prompt.fish, for example:

	function fish_prompt -d "Write out the prompt"
	    printf '[%s@%s %s%s%s]$ ' (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
	end

* before running mc set SHELL /usr/bin/fish
* terminal = "urxvtc -e /usr/bin/fish" <- in awesome.lua
* see ./config/fish/conf.d/omf.fish

