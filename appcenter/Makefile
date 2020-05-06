my-default-targets: log-versions

log-versions:
	@echo "### use 'make myTarget MyVar01=MyValue MyVar02=off'"
	@echo "/ ############## #"
	@echo "* Alpine Linux  : $(shell cat /etc/alpine-release)"
	@echo "* AppCenter-CLI : $(shell appcenter -v)"
	@echo "* Make          : $(shell make -v | grep "GNU Make")"
	@echo "* NodeJS        : $(shell node -v)"
	@echo "* NPM           : $(shell npm -v)"
	@echo "\ ############# #"

appcenter-login:
	@appcenter login

appcenter-logout:
	@appcenter logout

appcenter-release:
	appcenter distribute release \
	--debug --disable-telemetry \
	--file .\Setup\INSTALLATION_SOURCE\BrainloopOne.msi \
	--release-notes "My Release Notes" \
	--build-version "0.0.0.0" \
	--app Brainloop/BONE \
	--group Nobody