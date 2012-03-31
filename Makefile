PWD = `pwd`
UPDATE = git submodule foreach git pull origin master

all:
	ln -s $(PWD)/vim ${HOME}/.vim
	ln -s $(PWD)/vimrc ${HOME}/.vimrc
	git submodule update --init
update:
	$(UPDATE)

clean:
	rm ${HOME}/.vim ${HOME}/.vimrc
