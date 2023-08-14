PROFILE			?= NOT_SET
OUT_DIR			?= /tmp/archiso
WORK_DIR		?= /tmp/archiso-build

.DEFAULT_GOAL	:= build

-include */prepare.mk

prepare-${PROFILE}:
ifeq ($(wildcard ${PROFILE}),)
	@echo "Profile: \"${PROFILE}\" does not exist"; exit 1
endif

build: prepare-${PROFILE}
	@pacman -Qq archiso > /dev/null
	sudo mkarchiso -v -w "${WORK_DIR}" -r -o "${OUT_DIR}" "${PROFILE}"
