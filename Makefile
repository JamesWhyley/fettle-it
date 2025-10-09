.PHONY: install
install:
	@./install

.PHONY: deps
deps:
	@./install --dependencies

.PHONY: personal
personal:
	@./install --personal

.PHONY: personal-deps
personal-deps:
	@./install --personal --dependencies

.PHONY: personal-no-deps
personal-no-deps:
	@./install --personal --no-dependencies

.PHONY: pn
pn:
	make personal-no-deps

.PHONY: update
update:
	@gum spin --title "Updating homebrew" -- brew update
	@make deps

.PHONY: wn
wn:
	make work-no-deps

.PHONY: work
work:
	@./install --work

.PHONY: work-deps
work-deps:
	@./install --work --dependencies

.PHONY: work-no-deps
work-no-deps:
	@./install --work --no-dependencies
