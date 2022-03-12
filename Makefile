USER := user
WEBSITE := thamognya.com
WEBSITE_DIR := /var/www/
WEBSITE_DIR_ALL := /var/www/*

.PHONY: download
download:
	scp -r $(USER)@$(WEBSITE):$(WEBSITE_DIR_ALL) ./src/website/.

.PHONY: update
update:
	rsync -urvP ./src/website/* $(USER)@$(WEBSITE):$(WEBSITE_DIR)
	git add .
	git commit -m 'website auto update'
	git remote | xargs -L1 git push --all

.PHONY: git-update
git-update:
	git add .
	git commit -m 'auto update'
	git remote | xargs -L1 git push --all

