#!/usr/bin/env bash

set -e


################################################################################
### Head: kde
##

kde_config_run_pre () {

	#kde_service_stop


	return 0

}

kde_config_run_post () {

	#kde_service_start


	return 0

}

kde_service_stop () {

	systemctl --user stop plasma-kglobalaccel.service


	systemctl --user stop plasma-kactivitymanagerd.service

	rm ~/.local/share/kactivitymanagerd/ -rf


	systemctl --user stop plasma-plasmashell.service


	return 0

}

kde_service_start () {

	systemctl --user start plasma-kglobalaccel.service


	systemctl --user start plasma-plasmashell.service


	systemctl --user start plasma-kactivitymanagerd.service


	return 0

}

kde_config_install () {

	echo
	echo "##"
	echo "## Config: kde"
	echo "##"
	echo


	kde_config_install_by_dir


	echo

}

kde_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

##
### Tail: kde
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	kde_config_run_pre

	kde_config_install

	kde_config_run_post

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
