PWD = `pwd`
all:
	ln -s $(PWD)/vim ${HOME}/.vim
	ln -s $(PWD)/vimrc ${HOME}/.vimrc
	echo "#!/bin/bash\ngit submodule foreach git pull origin master" > updateBundles
	chmod +x updateBundles
	git submodule update --init
	./updateBundles
clean:
	rm ${HOME}/.vim ${HOME}/.vimrc updateBundles
