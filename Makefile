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
	cp -r $(SOURCE_DIR)/thamognya/build/* ./docs/.
	git add .
	git commit -m 'website: all auto update'
	git remote | xargs -L1 git push --all

.PHONY: update-no-commit
update-no-commit:
	rsync -urvP $(SOURCE_DIR_ALL) $(USER)@$(WEBSITE):$(WEBSITE_DIR)
	cp -r $(SOURCE_DIR)/thamognya/* ./docs/.

.PHONY: git-update
git-update:
	git add .
	git commit -m 'auto update everything'
	git remote | xargs -L1 git push --all

.PHONY: blog-update
blog-update:
	exec ./scripts/blog-compile.sh
	rsync -urvP $(SOURCE_DIR_ALL) $(USER)@$(WEBSITE):$(WEBSITE_DIR)
	git add .
	git commit -m 'website: blog auto update'
	git remote | xargs -L1 git push --all

.PHONY: thamognya-update
thamognya-update:
	exec ./scripts/thamognya-compile.sh
	rsync -urvP $(SOURCE_DIR_ALL) $(USER)@$(WEBSITE):$(WEBSITE_DIR)
	cp -r ./src/thamognya/build/* ./docs/
	git add .
	git commit -m 'website: thamognya auto update'
	git remote | xargs -L1 git push --all

.PHONY: makefile-update
makefile-update:
	git add .
	git commit -m 'makefile-update auto update'
	git remote | xargs -L1 git push --all

