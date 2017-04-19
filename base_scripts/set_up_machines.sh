#!/bin/bash

for nodes in `cat ./nodes`
do
	./base_scripts/parallel_command.sh "git clone git@github.com:marsleezm/calvin.git && mv calvin spec_calvin && cd spec_calvin && git checkout spec_calvin_locking"
	./base_scripts/parallel_command.sh "git clone git@github.com:marsleezm/calvin.git && cd calvin && git checkout master_general_recon"
	./base_scripts/parallel_command.sh "cd calvin && ./install_ext && cp -r ./ext ../spec_calvin"
	./base_scripts/parallel_command.sh "cd calvin && make -j8 && cd ../spec_calvin && make -j8"
done
