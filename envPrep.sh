if ! apt-get update -y
	then echo 'Falha ao atualizar!' >> ~/envPrep.log
	else echo 'Sucesso Update!' >> ~/envPrep.log
fi
if ! apt-get upgrade -y
	then echo 'Falha ao atualizar!' >> ~/envPrep.log
	else echo 'Sucesso upgrade!' >> ~/envPrep.log
fi
if ! apt-get install software-properties-common -y
	then echo 'Falha ao instalar o software-properties-common' >> ~/envPrep.log
	else echo 'Sucesso software-properties-common!' >> ~/envPrep.log
fi
if ! apt-get install apt-transport-https -y
	then echo 'Falha ao instalar o apt-transport-https' >> ~/envPrep.log
	else echo 'Sucesso apt-transport-https!' >> ~/envPrep.log
fi
if ! apt-get install ca-certificates -y
	then echo 'Erro ao instalar ca-certificates' >> ~/envPrep.log
	else echo 'Sucesso ca-certificates!' >> ~/envPrep.log
fi
if ! apt-get install gnupg-agent -y
	then echo 'Erro ao instalar gnupg-agent' >> ~/envPrep.log
	else echo 'Sucesso gnupg-agent!' >> ~/envPrep.log
fi
if ! apt-get install software-properties-common -y
	then echo 'Erro ao instalar software-properties-common' >> ~/envPrep.log
	else echo 'Sucesso software-properties-common!' >> ~/envPrep.log
fi

if ! apt-get install zsh -y
	then echo 'Erro ao instalar ZSH'
	else echo 'Sucesso zsh!' >> ~/envPrep.log
fi
##############################################################################
################ Seção de adição de repositórios e essenciais ################
##############################################################################
if ! apt-get install wget -y
	then echo 'Falha ao instalar o wget' >> ~/envPrep.log
	else echo 'Sucesso wget!' >> ~/envPrep.log
fi

if ! apt-get install curl -y
	then echo 'Erro ao instalar cURL' >> ~/envPrep.log
	else echo 'Sucesso curl!' >> ~/envPrep.log
fi

if ! apt-get install git -y
	then echo 'Erro ao instalar cURL' >> ~/envPrep.log
	else echo 'Sucesso git!' >> ~/envPrep.log
fi

if ! add-apt-repository ppa:danielrichter2007/grub-customizer  -y
	then echo 'Erro ao adicionar o repositório ppa:danielrichter2007/grub-customizer' >> ~/envPrep.log
	else echo 'Sucesso ppa:danielrichter2007!' >> ~/envPrep.log
fi

if ! add-apt-repository ppa:linrunner/tlp -y
	then echo 'Erro ao adicionar o repositório ppa:linrunner/tlp' >> ~/envPrep.log
	else echo 'Sucesso ppa:linrunner!' >> ~/envPrep.log
fi

if ! add-apt-repository ppa:alexlarsson/flatpak -y
	then echo 'Erro ao adicionar o repositório ppa:alexlarsson/flatpak' >> ~/envPrep.log
	else echo 'Sucesso ppa:alexlarsson!' >> ~/envPrep.log
fi

if ! echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
	then echo 'Erro ao adicionar Insomnia ao sources.list' >> ~/envPrep.log
	elif ! wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | sudo apt-key add -
		then echo 'Erro ao adicionar apt-key Insomnia' >> ~/envPrep.log
		else echo 'Sucesso apt-key Insomnia!' >> ~/envPrep.log
fi

if ! curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
	then echo 'Erro ao adicionar Yarn key' >> ~/envPrep.log
	elif ! echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
		then echo 'Erro ao adicionar Yarn ao sources.list' >> ~/envPrep.log
		else echo 'Sucesso !' >> ~/envPrep.log
fi

if ! curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	then echo 'Erro ao adicionar Docker GPG Key' >> ~/envPrep.log
	else echo 'Sucesso ao adicionar Docker GPG Key!' >> ~/envPrep.log
fi

if ! add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
	then echo 'Erro ao adicionar o repositório do Docker' >> ~/envPrep.log
	else echo 'Sucesso ao adicionar o repositório do Docker!' >> ~/envPrep.log
fi

#Atualização do apt
if ! apt-get update  -y
	then echo 'Falha ao atualizar!' >> ~/envPrep.log
	else echo 'Sucesso update!' >> ~/envPrep.log
fi

