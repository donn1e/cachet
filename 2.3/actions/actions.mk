-include /usr/local/bin/php.mk

.PHONY: init check-ready check-live

max_try ?= 1
wait_seconds ?= 1
delay_seconds ?= 0

default: init

init:
	init.sh

check-ready:
	wait-for-cachet.sh $(max_try) $(wait_seconds) $(delay_seconds)

check-live:
	@echo "OK"
