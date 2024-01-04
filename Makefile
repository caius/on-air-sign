.PHONY: run
run:
	jag run onair.toit

.PHONY: install
install:
	jag container install onair onair.toit

.PHONY: uninstall
uninstall:
	jag container uninstall onair
