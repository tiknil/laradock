#!/bin/bash
# Script che esegue i comandi iniziali all'interno del container che contiene l'app web

pwd
whoami
echo $PATH

if [[ $PATH != */home/laradock/.yarn/bin* ]];then
    export PATH=/home/laradock/.yarn/bin:$PATH
fi

if [[ $PATH != */home/laradock/.nvm/versions/node/v8.1.3/bin* ]];then
    export PATH=/home/laradock/.nvm/versions/node/v8.1.3/bin:$PATH
fi

echo $PATH

which yarn
which node

yarn