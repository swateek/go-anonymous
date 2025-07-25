'use strict';

// (function() {
//   var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
//   ga.src = 'https://ssl.google-analytics.com/ga.js';
//   var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
// })();

// var _gaq = _gaq || [];
// _gaq.push(['_setAccount', 'UA-162779427-1']);

chrome.browserAction.onClicked.addListener(function(activeTab){
  chrome.tabs.query({active: true, lastFocusedWindow: true}, tabs => {
      // _gaq.push(['_trackPageview']);
      let url = tabs[0].url;
	    chrome.windows.create({"url": url, "incognito": true});
  });
});