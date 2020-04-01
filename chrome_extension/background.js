'use strict';

chrome.browserAction.onClicked.addListener(function(activeTab){
  chrome.tabs.query({active: true, lastFocusedWindow: true}, tabs => {
	    let url = tabs[0].url;
	    chrome.windows.create({"url": url, "incognito": true});
  });
});