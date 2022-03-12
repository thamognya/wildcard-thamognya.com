USER := user
WEBSITE := thamognya.com
WEBSITE_DIR := /var/www/
WEBSITE_DIR_ALL := /var/www/*
SOURCE_DIR := ./src/.
SOURCE_DIR_ALL := ./src/*

.PHONY: download
download:
	scp -r $(USER)@$(WEBSITE):$(WEBSITE_DIR_ALL) $(SOURCE_DIR)

.PHONY: update
update:
	rsync -urvP $(SOURCE_DIR_ALL) $(USER)@$(WEBSITE):$(WEBSITE_DIR)
	cp -r $(SOURCE_DIR)/thamognya/* ./docs/.
	git add .
	git commit -m 'website auto update'
	git remote | xargs -L1 git push --all

.PHONY: update-no-commit
update-no-commit:
	rsync -urvP $(SOURCE_DIR_ALL) $(USER)@$(WEBSITE):$(WEBSITE_DIR)
	cp -r $(SOURCE_DIR)/thamognya/* ./docs/.

.PHONY: git-update
git-update:
	git add .
	git commit -m 'auto update'
	git remote | xargs -L1 git push --all


