'use strict';

chrome.action.onClicked.addListener(function (activeTab) {
  let url = activeTab.url;
  chrome.windows.create({ "url": url, "incognito": true });
});