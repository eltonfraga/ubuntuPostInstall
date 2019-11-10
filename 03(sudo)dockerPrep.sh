###################################################################################
############################# INSTALAÇÃO DO DOCKER CE #############################
###################################################################################
echo "
###################################################################################
############################# INSTALAÇÃO DO DOCKER CE #############################
###################################################################################
" >> ~/dockerPrep.log 
if ! apt-get install docker-ce -y
	then echo 'Erro ao instalar docker-ce' >> ~/dockerPrep.log
	else echo 'Sucesso ao instalar docker-ce!' >> ~/dockerPrep.log
fi
if ! apt-get install docker-ce-cli -y
	then echo 'Erro ao instalar docker-ce-cli' >> ~/dockerPrep.log
	else echo 'Sucesso!' >> ~/dockerPrep.log
fi
if ! apt-get install containerd.io -y
	then echo 'Erro ao instalar containerd.io' >> ~/dockerPrep.log
	else echo 'Sucesso ao instalar containerd.io!' >> ~/dockerPrep.log
fi

if ! groupadd docker
	then echo 'Erro ao criar grupo docker' >> ~/dockerPrep.log
	else echo 'Sucesso ao criar grupo docker!' >> ~/dockerPrep.log
fi

if ! usermod -aG docker $USER
	then echo 'Erro ao adicionar usuário docker' >> ~/dockerPrep.log
	else echo 'Sucesso ao adicionar usuário docker!' >> ~/dockerPrep.log
fi

if ! systemctl enable docker
	then echo 'Erro ao ativar inicialização do docker' >> ~/dockerPrep.log
	else echo 'Sucesso ao ativar inicialização do docker!' >> ~/dockerPrep.log
fi

if ! apt-get install insomnia -y
	then echo 'Erro ao instalar o Insomnia' >> ~/dockerPrep.log
	else echo 'Sucesso ao instalar o Insomnia!' >> ~/dockerPrep.log
fi

docker run hello-world

