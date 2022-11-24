###################################################################################
###################### Seção de instalações de carater geral ######################
###################################################################################
echo "
###################################################################################
###################### Seção de instalações de carater geral ######################
###################################################################################
"  >> ~/miscPrep.log
if ! apt-get install grub-customizer -y
	then echo 'Erro ao instalar grub customizer' >> ~/miscPrep.log
	else echo 'Sucesso ao instalar grub customizer!' >> ~/miscPrep.log
fi

if ! apt-get install tlp tlp-rdw -y && tlp start  -y
	then echo 'Erro ao instalar TLP' >> ~/miscPrep.log
	else echo 'Sucesso ao instalar TLP!' >> ~/miscPrep.log
fi

if ! apt install flatpak gnome-software-plugin-flatpak -y
	then echo 'Erro ao instalar Flatpak' >> ~/miscPrep.log
	else echo 'Sucesso ao instalar Flatpak!' >> ~/miscPrep.log
fi

if ! flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo -y
	then echo 'Erro ao adicionar Flatpak Repo' >> ~/miscPrep.log
	else echo 'Sucesso ao adicionar Flatpak Repo!' >> ~/miscPrep.log
fi

if ! apt install ubuntu-restricted-extras -y
	then echo 'Erro ao instalar Ubuntu Restricted Extras' >> ~/miscPrep.log
	else echo 'Sucesso ao instalar Ubuntu Restricted Extras!' >> ~/miscPrep.log
fi

if ! apt-get install synaptic -y
	then echo 'Erro ao instalar Synaptic' >> ~/miscPrep.log
	else echo 'Sucesso ao instalar Synaptic!' >> ~/miscPrep.log
fi

if ! apt-get install gnome-tweak-tools -y
	then echo 'Erro ao instalar Gnome Tweak Tools' >> ~/miscPrep.log
	else echo 'Sucesso ao instalar Gnome Tweak Tools!' >> ~/miscPrep.log
fi

if ! apt-get install vlc -y
	then echo 'Erro ao instalar VLC' >> ~/miscPrep.log
	else echo 'Sucesso ao instalar VLC!' >> ~/miscPrep.log
fi
