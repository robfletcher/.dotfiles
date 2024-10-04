go_back_siliently() {
  cd - > /dev/null 2>&1
}

# use pre-built anchor, assumes you've ran npm run build
anchor () {
  cd ${HOME}/airlab/repos/anchor
  nvm use || ( go_back_siliently && exit 1 )
  npx . "$@" || ( go_back_siliently && exit 1 )
  go_back_siliently
}

# build and run anchor, useful if you're iterating on anchor itself.
anchor_b () {
  cd ${HOME}/airlab/repos/anchor
  nvm use || ( go_back_siliently && exit 1 )
  npm run build || ( go_back_siliently && exit 1 )
  node dist/src/index.js "$@" || ( go_back_siliently && exit 1 )
  go_back_siliently
}
