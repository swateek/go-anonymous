HOME=`pwd`

rm -rf $HOME/dist/*
cd $HOME/chrome_extension
zip -r $HOME/dist/go_anonymous_chrome.zip *
cd $HOME
