prepare-headless:
	mkdir -p headless/airootfs/root/.ssh
	curl https://github.com/husjon.keys | \
		tee headless/airootfs/root/.ssh/authorized_keys
