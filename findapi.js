function __findScormAPI__(win, apiName) {
    win = win ? win : window;
    apiName = apiName ? apiName : "API_1484_11";    //use scorm1.3 as default
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
