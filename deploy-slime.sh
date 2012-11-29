#Slime Deployment

if command -v git >/dev/null; then
    echo Installing through Git
    mkdir deploy-slime
    cd deploy-slime
    git clone https://github.com/HELOpg/slime-setup
    cd slime-setup
    git submodule foreach 'git fetch origin --tags; git checkout master; git pull' && git pull && git submodule update --init --recursive

else
    echo You require git
fi
