#!/usr/bin/env bash

set -e


################################################################################
### Head: sddm
##

sddm_config_install () {

	echo
	echo
	echo
	echo
	echo "##"
	echo "## ## Config: sddm"
	echo "##"
	echo


	sddm_config_install_by_dir

	#sddm_config_install_by_each_file

	echo

}



sddm_config_install_by_dir () {

	echo
	echo "sudo install -dm755 /etc/sddm.conf.d"
	sudo install -dm755 "/etc/sddm.conf.d"


	#echo
	#echo "sudo cp -rf ./asset/overlay/etc/sddm.conf.d/. /etc/sddm.conf.d"
	#sudo cp -rf "./asset/overlay/etc/sddm.conf.d/." "/etc/sddm.conf.d"


	echo
	echo "sudo cp -rf ./asset/overlay/etc/. /etc"
	sudo cp -rf "./asset/overlay/etc/." "/etc"




	echo
	echo "sudo install -dm755 /usr/share/sddm/themes"
	sudo install -dm755 "/usr/share/sddm/themes"


	echo
	echo "sudo cp -rf ./asset/overlay/usr/share/sddm/themes/. /usr/share/sddm/themes"
	sudo cp -rf "./asset/overlay/usr/share/sddm/themes/." "/usr/share/sddm/themes"


	return 0

}

sddm_config_install_by_each_file () {

	sddm_conf_d_install_by_each_file

	return 0

}


sddm_conf_d_install_by_each_file () {


	echo
	echo "sudo install -dm755 /etc/sddm.conf.d"
	sudo install -dm755 "/etc/sddm.conf.d"


	#echo
	#echo "sudo install -Dm644 ./asset/overlay/etc/sddm.conf.d/kde_settings.conf /etc/sddm.conf.d/kde_settings.conf"
	#sudo install -Dm644 ./asset/overlay/etc/sddm.conf.d/kde_settings.conf /etc/sddm.conf.d/kde_settings.conf


	echo
	echo "sudo install -Dm644 ./asset/overlay/etc/sddm.conf /etc/sddm.conf"
	sudo install -Dm644 ./asset/overlay/etc/sddm.conf /etc/sddm.conf


	return 0

}

##
### Tail: sddm
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	sddm_config_install

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
