##########################################################################
##################### INSTALAÇÃO DO NVM, NODE e YARN #####################
##########################################################################
echo "
##########################################################################
##################### INSTALAÇÃO DO NVM, NODE e YARN #####################
##########################################################################
" >> ~/nodePrep.log 
if ! curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
	then echo 'Erro ao instalar o NVM' >> ~/envPrep.log
	else echo 'Sucesso ao instalar o NVM!' >> ~/nodePrep.log
fi
if ! export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
	then echo 'Erro ao exportar variáveis NVM' >> ~/nodePrep.log
	else echo 'Sucesso ao exportar variáveis NVM!' >> ~/nodePrep.log
fi

if ! sudo echo "NVM_DIR=\"$([ -z \"${XDG_CONFIG_HOME-}\" ] && printf %s \"${HOME}/.nvm\" || printf %s \"${XDG_CONFIG_HOME}/nvm\")\"
[ -s \"$NVM_DIR/nvm.sh\" ] && \. \"$NVM_DIR/nvm.sh\" # This loads nvm" >> ~/.zshrc
	then echo 'Erro ao gravar variáveis NVM no ~/.zshrc' >> ~/nodePrep.log
	else echo 'Sucesso ao gravar variáveis NVM no ~/.zshrc!' >> ~/nodePrep.log
fi
if ! sudo echo "NVM_DIR=\"$([ -z \"${XDG_CONFIG_HOME-}\" ] && printf %s \"${HOME}/.nvm\" || printf %s \"${XDG_CONFIG_HOME}/nvm\")\"
[ -s \"$NVM_DIR/nvm.sh\" ] && \. \"$NVM_DIR/nvm.sh\" # This loads nvm" >> ~/.profile
	then echo 'Erro ao gravar variáveis NVM no ~/.profile' >> ~/nodePrep.log
	else echo 'Sucesso ao gravar variáveis NVM no ~/.profile!' >> ~/nodePrep.log
fi
if ! nvm install 12.13.0 && sudo -u $1 nvm alias default 12.13.0
	then echo 'Erro ao instalar o node v12.13.0' >> ~/nodePrep.log
	else echo 'Sucesso ao instalar o node v12.13.0!' >> ~/nodePrep.log
fi

if ! sudo apt install --no-install-recommends yarn -y
	then echo 'Erro ao instalar Yarn' >> ~/nodePrep.log
	else echo 'Sucesso ao instalar Yarn!' >> ~/nodePrep.log
fi

