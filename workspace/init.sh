#!/bin/bash
# Script che esegue i comandi iniziali all'interno del container che contiene l'app web

pwd
whoami
echo $PATH

if [[ $PATH != */home/laradock/.yarn/bin* ]];then
    export PATH=/home/laradock/.yarn/bin:$PATH
fi

if [[ $PATH != */home/laradock/.nvm/versions/node/v8.1.4/bin* ]];then
    export PATH=/home/laradock/.nvm/versions/node/v8.1.4/bin:$PATH
fi

echo $PATH

which yarn
which node

composer install
yarn
php artisan key:generate