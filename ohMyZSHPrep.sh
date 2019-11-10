##########################################################################################
############### INSTALAÇÕES E CONFIGURAÇÕES DE AMBIENTE DE DESENVOLVIMENTO ###############
##########################################################################################
echo "
##########################################################################################
############### INSTALAÇÕES E CONFIGURAÇÕES DE AMBIENTE DE DESENVOLVIMENTO ###############
##########################################################################################
">> ~/ohMyZSHPrep.log

if ! sudo -u $1 sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	then echo 'Erro ao instalar OhMyZSH' >> ~/ohMyZSHPrep.log
	else echo 'Sucesso ao instalar OhMyZSH!' >> ~/ohMyZSHPrep.log
fi
	
if ! sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
	then echo 'Erro ao instalar Spaceship/' >> ~/ohMyZSHPrep.log
	elif ! sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
		then 'Erro ao criar symlink SpaceShip ZSH' >> ~/ohMyZSHPrep.log
		elif ! sudo -u $1 sed -i "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"spaceship\"/g" ~/.zshrc 
			then 'Erro ao editar .zshrc' >> ~/ohMyZSHPrep.log
			else echo 'Sucesso ao instalar Spaceship, ao criar symlink SpaceShip ZSH e  ao editar .zshrc!' >> ~/ohMyZSHPrep.log
fi
if ! sudo -u $1 echo "
SPACESHIP_PROMPT_ORDER=(
  user          # $1 section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL=\"❯\"
SPACESHIP_CHAR_SUFFIX=\" \"
" >> ~/.zshrc 
	then echo 'Erro ao adicionar configurações do Spaceship no .zshrc' >> ~/ohMyZSHPrep.log
	else echo 'Sucesso ao adicionar configurações do Spaceship no .zshrc!' >> ~/ohMyZSHPrep.log
fi

if ! sudo -u $1 sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
	then echo 'Erro ao instalar ZPlugin' >> ~/ohMyZSHPrep.log
	else echo 'Sucesso ao instalar ZPlugin!' >> ~/ohMyZSHPrep.log
fi

if ! sudo -u $1 echo "

zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
zplugin light zdharma/fast-syntax-highlighting
" >> ~/.zshrc 
	then echo 'Erro ao adicionar configurações do ZPlugin no .zshrc' >> ~/ohMyZSHPrep.log
	else echo 'Sucesso ao adicionar configurações do ZPlugin no .zshrc!' >> ~/ohMyZSHPrep.log
fi



