#####################################################################
###################### INSTALAÇÃO DO OH-MY-ZSH ######################
#####################################################################
echo "
#####################################################################
###################### INSTALAÇÃO DO OH-MY-ZSH ######################
#####################################################################
" >> ~/envPrep.log

if ! sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	then echo 'Erro ao instalar OhMyZSH' >> ~/envPrep.log
	else echo 'Sucesso!' >> ~/envPrep.log
fi

