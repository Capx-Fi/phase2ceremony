#!/bin/bash
export AWS_ACCESS_KEY_ID=${access_key_id}
export AWS_SECRET_ACCESS_KEY=${access_key_secret}
export AUTH_KEY=${auth_key}

## Installing nvm
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

## Cloning Nightfall repo and installing the NPM version used
git clone -b ${git_branch} https://github.com/NightfallRollup/phase2ceremony.git
echo "Commit hash ${commit_hash}"

cd phase2ceremony/serve
nvm install
nvm use

## Dependencies...
npm i

## Starting app like a boss
npm run start
