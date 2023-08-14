PROFILE			?= NOT_SET
OUT_DIR			?= /tmp/archiso
WORK_DIR		?= /tmp/archiso-build

.DEFAULT_GOAL	:= build

build:
	@pacman -Qq archiso > /dev/null
	sudo mkarchiso -v -w "${WORK_DIR}" -r -o "${OUT_DIR}" "${PROFILE}"
