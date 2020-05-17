HOME=`pwd`

rm -rf $HOME/dist/*
cd $HOME/firefox_addon
zip -r $HOME/dist/go_anonymous_firefox.zip *
cd $HOME
