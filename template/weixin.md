# 微信H5活动页面


# wechat-html5-example 

微信分享页面模版


        -[1, ] || (function() {

        //为window对象添加

        addEventListener = function(n, f) {
            if ("on" + n in this.constructor.prototype)
                this.attachEvent("on" + n, f);
            else {
                var o = this.customEvents = this.customEvents || {};
                n in o ? o[n].push(f) : (o[n] = [f]);
            };
        };
        removeEventListener = function(n, f) {
            if ("on" + n in this.constructor.prototype)
                this.detachEvent("on" + n, f);
            else {
                var s = this.customEvents && this.customEvents[n];
                if (s)
                    for (var i = 0; i < s.length; i++)
                        if (s[i] == f) return void s.splice(i, 1);
            };
        };
        dispatchEvent = function(e) {
            if ("on" + e.type in this.constructor.prototype)
                this.fireEvent("on" + e.type, e);
            else {
                var s = this.customEvents && this.customEvents[e.type];

                if (s)
                    for (var s = s.slice(0), i = 0; i < s.length; i++)

                s[i].call(this, e);

            }

        };

        })();

        !(function(win, doc) {

        function setFontSize() {

            var winWidth = doc.documentElement.clientWidth;

            if (winWidth <= 479) {

                doc.documentElement.style.fontSize = (winWidth / 640) * 100 + 'px';

            } else {

                doc.documentElement.style.fontSize = '12px';

            }

        }

        var evt = 'onorientationchange' in win ? 'orientationchange' : 'resize';

        var timer = null;

        win.addEventListener(evt, function() {
            clearTimeout(timer);

            timer = setTimeout(setFontSize, 300);
        }, false);

        win.addEventListener("pageshow", function(e) {
            if (e.persisted) {
                clearTimeout(timer);

                timer = setTimeout(setFontSize, 300);
            }
        }, false);

        // 初始化
        setFontSize();

    }(window, document));
