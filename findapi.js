function __findScormAPI__(win, apiName) {
win = win ? win : window;
apiName = apiName ? apiName : "API_1484_11";
var api = null;
while (win != null) {
api = win[apiName];
if (api) {
break;
}
win = (win.parent == win) ? win.opener : win.parent;
}
return api;
}
