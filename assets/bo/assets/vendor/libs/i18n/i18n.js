!(function (e, t) {
    for (var n in t) e[n] = t[n];
})(
    window,
    (function (e) {
        var t = {};
        function n(o) {
            if (t[o]) return t[o].exports;
            var r = (t[o] = { i: o, l: !1, exports: {} });
            return e[o].call(r.exports, r, r.exports, n), (r.l = !0), r.exports;
        }
        return (
            (n.m = e),
                (n.c = t),
                (n.d = function (e, t, o) {
                    n.o(e, t) || Object.defineProperty(e, t, { enumerable: !0, get: o });
                }),
                (n.r = function (e) {
                    "undefined" != typeof Symbol && Symbol.toStringTag && Object.defineProperty(e, Symbol.toStringTag, { value: "Module" }), Object.defineProperty(e, "__esModule", { value: !0 });
                }),
                (n.t = function (e, t) {
                    if ((1 & t && (e = n(e)), 8 & t)) return e;
                    if (4 & t && "object" == typeof e && e && e.__esModule) return e;
                    var o = Object.create(null);
                    if ((n.r(o), Object.defineProperty(o, "default", { enumerable: !0, value: e }), 2 & t && "string" != typeof e))
                        for (var r in e)
                            n.d(
                                o,
                                r,
                                function (t) {
                                    return e[t];
                                }.bind(null, r)
                            );
                    return o;
                }),
                (n.n = function (e) {
                    var t =
                        e && e.__esModule
                            ? function () {
                                return e.default;
                            }
                            : function () {
                                return e;
                            };
                    return n.d(t, "a", t), t;
                }),
                (n.o = function (e, t) {
                    return Object.prototype.hasOwnProperty.call(e, t);
                }),
                (n.p = ""),
                n((n.s = 488))
        );
    })({
        191: function (e, t) {
            function n(t) {
                return (
                    "function" == typeof Symbol && "symbol" == typeof Symbol.iterator
                        ? ((e.exports = n = function (e) {
                            return typeof e;
                        }),
                            (e.exports.default = e.exports),
                            (e.exports.__esModule = !0))
                        : ((e.exports = n = function (e) {
                            return e && "function" == typeof Symbol && e.constructor === Symbol && e !== Symbol.prototype ? "symbol" : typeof e;
                        }),
                            (e.exports.default = e.exports),
                            (e.exports.__esModule = !0)),
                        n(t)
                );
            }
            (e.exports = n), (e.exports.default = e.exports), (e.exports.__esModule = !0);
        },
        488: function (e, t, n) {
            "use strict";
            function o(e) {
                return (o =
                    "function" == typeof Symbol && "symbol" == typeof Symbol.iterator
                        ? function (e) {
                            return typeof e;
                        }
                        : function (e) {
                            return e && "function" == typeof Symbol && e.constructor === Symbol && e !== Symbol.prototype ? "symbol" : typeof e;
                        })(e);
            }
            function r(e, t, n) {
                return t in e ? Object.defineProperty(e, t, { value: n, enumerable: !0, configurable: !0, writable: !0 }) : (e[t] = n), e;
            }
            function i(e) {
                for (var t = 1; t < arguments.length; t++) {
                    var n = null != arguments[t] ? Object(arguments[t]) : {},
                        o = Object.keys(n);
                    "function" == typeof Object.getOwnPropertySymbols &&
                    (o = o.concat(
                        Object.getOwnPropertySymbols(n).filter(function (e) {
                            return Object.getOwnPropertyDescriptor(n, e).enumerable;
                        })
                    )),
                        o.forEach(function (t) {
                            r(e, t, n[t]);
                        });
                }
                return e;
            }
            function a(e, t) {
                if (!(e instanceof t)) throw new TypeError("Cannot call a class as a function");
            }
            function s(e, t) {
                for (var n = 0; n < t.length; n++) {
                    var o = t[n];
                    (o.enumerable = o.enumerable || !1), (o.configurable = !0), "value" in o && (o.writable = !0), Object.defineProperty(e, o.key, o);
                }
            }
            function u(e, t, n) {
                return t && s(e.prototype, t), n && s(e, n), e;
            }
            n.r(t);
            var l = n(191),
                c = n.n(l);
            function f(e) {
                if (void 0 === e) throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
                return e;
            }
            function p(e, t) {
                return !t || ("object" !== c()(t) && "function" != typeof t) ? f(e) : t;
            }
            function g(e) {
                return (g = Object.setPrototypeOf
                    ? Object.getPrototypeOf
                    : function (e) {
                        return e.__proto__ || Object.getPrototypeOf(e);
                    })(e);
            }
            function h(e, t) {
                return (h =
                    Object.setPrototypeOf ||
                    function (e, t) {
                        return (e.__proto__ = t), e;
                    })(e, t);
            }
            function d(e, t) {
                if ("function" != typeof t && null !== t) throw new TypeError("Super expression must either be null or a function");
                (e.prototype = Object.create(t && t.prototype, { constructor: { value: e, writable: !0, configurable: !0 } })), t && h(e, t);
            }
            function v(e, t) {
                (null == t || t > e.length) && (t = e.length);
                for (var n = 0, o = new Array(t); n < t; n++) o[n] = e[n];
                return o;
            }
            function y(e) {
                if (("undefined" != typeof Symbol && null != e[Symbol.iterator]) || null != e["@@iterator"]) return Array.from(e);
            }
            function m(e, t) {
                if (e) {
                    if ("string" == typeof e) return v(e, t);
                    var n = Object.prototype.toString.call(e).slice(8, -1);
                    return "Object" === n && e.constructor && (n = e.constructor.name), "Map" === n || "Set" === n ? Array.from(e) : "Arguments" === n || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n) ? v(e, t) : void 0;
                }
            }
            function b(e) {
                return (
                    (function (e) {
                        if (Array.isArray(e)) return v(e);
                    })(e) ||
                    y(e) ||
                    m(e) ||
                    (function () {
                        throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.");
                    })()
                );
            }
            function k(e) {
                if (Array.isArray(e)) return e;
            }
            function x() {
                throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.");
            }
            function w(e) {
                return k(e) || y(e) || m(e) || x();
            }
            function S(e, t) {
                return (
                    k(e) ||
                    (function (e, t) {
                        var n = null == e ? null : ("undefined" != typeof Symbol && e[Symbol.iterator]) || e["@@iterator"];
                        if (null != n) {
                            var o,
                                r,
                                i = [],
                                a = !0,
                                s = !1;
                            try {
                                for (n = n.call(e); !(a = (o = n.next()).done) && (i.push(o.value), !t || i.length !== t); a = !0);
                            } catch (e) {
                                (s = !0), (r = e);
                            } finally {
                                try {
                                    a || null == n.return || n.return();
                                } finally {
                                    if (s) throw r;
                                }
                            }
                            return i;
                        }
                    })(e, t) ||
                    m(e, t) ||
                    x()
                );
            }
            var O = {
                    type: "logger",
                    log: function (e) {
                        this.output("log", e);
                    },
                    warn: function (e) {
                        this.output("warn", e);
                    },
                    error: function (e) {
                        this.output("error", e);
                    },
                    output: function (e, t) {
                        var n;
                        console && console[e] && (n = console)[e].apply(n, b(t));
                    },
                },
                L = new ((function () {
                    function e(t) {
                        var n = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : {};
                        a(this, e), this.init(t, n);
                    }
                    return (
                        u(e, [
                            {
                                key: "init",
                                value: function (e) {
                                    var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : {};
                                    (this.prefix = t.prefix || "i18next:"), (this.logger = e || O), (this.options = t), (this.debug = t.debug);
                                },
                            },
                            {
                                key: "setDebug",
                                value: function (e) {
                                    this.debug = e;
                                },
                            },
                            {
                                key: "log",
                                value: function () {
                                    for (var e = arguments.length, t = new Array(e), n = 0; n < e; n++) t[n] = arguments[n];
                                    return this.forward(t, "log", "", !0);
                                },
                            },
                            {
                                key: "warn",
                                value: function () {
                                    for (var e = arguments.length, t = new Array(e), n = 0; n < e; n++) t[n] = arguments[n];
                                    return this.forward(t, "warn", "", !0);
                                },
                            },
                            {
                                key: "error",
                                value: function () {
                                    for (var e = arguments.length, t = new Array(e), n = 0; n < e; n++) t[n] = arguments[n];
                                    return this.forward(t, "error", "");
                                },
                            },
                            {
                                key: "deprecate",
                                value: function () {
                                    for (var e = arguments.length, t = new Array(e), n = 0; n < e; n++) t[n] = arguments[n];
                                    return this.forward(t, "warn", "WARNING DEPRECATED: ", !0);
                                },
                            },
                            {
                                key: "forward",
                                value: function (e, t, n, o) {
                                    return o && !this.debug ? null : ("string" == typeof e[0] && (e[0] = "".concat(n).concat(this.prefix, " ").concat(e[0])), this.logger[t](e));
                                },
                            },
                            {
                                key: "create",
                                value: function (t) {
                                    return new e(this.logger, i({}, { prefix: "".concat(this.prefix, ":").concat(t, ":") }, this.options));
                                },
                            },
                        ]),
                            e
                    );
                })())(),
                P = (function () {
                    function e() {
                        a(this, e), (this.observers = {});
                    }
                    return (
                        u(e, [
                            {
                                key: "on",
                                value: function (e, t) {
                                    var n = this;
                                    return (
                                        e.split(" ").forEach(function (e) {
                                            (n.observers[e] = n.observers[e] || []), n.observers[e].push(t);
                                        }),
                                            this
                                    );
                                },
                            },
                            {
                                key: "off",
                                value: function (e, t) {
                                    this.observers[e] &&
                                    (t
                                        ? (this.observers[e] = this.observers[e].filter(function (e) {
                                            return e !== t;
                                        }))
                                        : delete this.observers[e]);
                                },
                            },
                            {
                                key: "emit",
                                value: function (e) {
                                    for (var t = arguments.length, n = new Array(t > 1 ? t - 1 : 0), o = 1; o < t; o++) n[o - 1] = arguments[o];
                                    if (this.observers[e]) {
                                        var r = [].concat(this.observers[e]);
                                        r.forEach(function (e) {
                                            e.apply(void 0, n);
                                        });
                                    }
                                    if (this.observers["*"]) {
                                        var i = [].concat(this.observers["*"]);
                                        i.forEach(function (t) {
                                            t.apply(t, [e].concat(n));
                                        });
                                    }
                                },
                            },
                        ]),
                            e
                    );
                })();
            function R() {
                var e,
                    t,
                    n = new Promise(function (n, o) {
                        (e = n), (t = o);
                    });
                return (n.resolve = e), (n.reject = t), n;
            }
            function j(e) {
                return null == e ? "" : "" + e;
            }
            function C(e, t, n) {
                e.forEach(function (e) {
                    t[e] && (n[e] = t[e]);
                });
            }
            function N(e, t, n) {
                function o(e) {
                    return e && e.indexOf("###") > -1 ? e.replace(/###/g, ".") : e;
                }
                function r() {
                    return !e || "string" == typeof e;
                }
                for (var i = "string" != typeof t ? [].concat(t) : t.split("."); i.length > 1; ) {
                    if (r()) return {};
                    var a = o(i.shift());
                    !e[a] && n && (e[a] = new n()), (e = e[a]);
                }
                return r() ? {} : { obj: e, k: o(i.shift()) };
            }
            function E(e, t, n) {
                var o = N(e, t, Object);
                o.obj[o.k] = n;
            }
            function F(e, t) {
                var n = N(e, t),
                    o = n.obj,
                    r = n.k;
                if (o) return o[r];
            }
            function T(e, t, n) {
                var o = F(e, n);
                return void 0 !== o ? o : F(t, n);
            }
            function A(e, t, n) {
                for (var o in t) o in e ? ("string" == typeof e[o] || e[o] instanceof String || "string" == typeof t[o] || t[o] instanceof String ? n && (e[o] = t[o]) : A(e[o], t[o], n)) : (e[o] = t[o]);
                return e;
            }
            function I(e) {
                return e.replace(/[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g, "\\$&");
            }
            var M = { "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;", "/": "&#x2F;" };
            function U(e) {
                return "string" == typeof e
                    ? e.replace(/[&<>"'\/]/g, function (e) {
                        return M[e];
                    })
                    : e;
            }
            var D = "undefined" != typeof window && window.navigator && window.navigator.userAgent && window.navigator.userAgent.indexOf("MSIE") > -1,
                H = (function (e) {
                    function t(e) {
                        var n,
                            o = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : { ns: ["translation"], defaultNS: "translation" };
                        return a(this, t), (n = p(this, g(t).call(this))), D && P.call(f(n)), (n.data = e || {}), (n.options = o), void 0 === n.options.keySeparator && (n.options.keySeparator = "."), n;
                    }
                    return (
                        d(t, e),
                            u(t, [
                                {
                                    key: "addNamespaces",
                                    value: function (e) {
                                        this.options.ns.indexOf(e) < 0 && this.options.ns.push(e);
                                    },
                                },
                                {
                                    key: "removeNamespaces",
                                    value: function (e) {
                                        var t = this.options.ns.indexOf(e);
                                        t > -1 && this.options.ns.splice(t, 1);
                                    },
                                },
                                {
                                    key: "getResource",
                                    value: function (e, t, n) {
                                        var o = arguments.length > 3 && void 0 !== arguments[3] ? arguments[3] : {},
                                            r = void 0 !== o.keySeparator ? o.keySeparator : this.options.keySeparator,
                                            i = [e, t];
                                        return n && "string" != typeof n && (i = i.concat(n)), n && "string" == typeof n && (i = i.concat(r ? n.split(r) : n)), e.indexOf(".") > -1 && (i = e.split(".")), F(this.data, i);
                                    },
                                },
                                {
                                    key: "addResource",
                                    value: function (e, t, n, o) {
                                        var r = arguments.length > 4 && void 0 !== arguments[4] ? arguments[4] : { silent: !1 },
                                            i = this.options.keySeparator;
                                        void 0 === i && (i = ".");
                                        var a = [e, t];
                                        n && (a = a.concat(i ? n.split(i) : n)), e.indexOf(".") > -1 && ((o = t), (t = (a = e.split("."))[1])), this.addNamespaces(t), E(this.data, a, o), r.silent || this.emit("added", e, t, n, o);
                                    },
                                },
                                {
                                    key: "addResources",
                                    value: function (e, t, n) {
                                        var o = arguments.length > 3 && void 0 !== arguments[3] ? arguments[3] : { silent: !1 };
                                        for (var r in n) ("string" != typeof n[r] && "[object Array]" !== Object.prototype.toString.apply(n[r])) || this.addResource(e, t, r, n[r], { silent: !0 });
                                        o.silent || this.emit("added", e, t, n);
                                    },
                                },
                                {
                                    key: "addResourceBundle",
                                    value: function (e, t, n, o, r) {
                                        var a = arguments.length > 5 && void 0 !== arguments[5] ? arguments[5] : { silent: !1 },
                                            s = [e, t];
                                        e.indexOf(".") > -1 && ((o = n), (n = t), (t = (s = e.split("."))[1])), this.addNamespaces(t);
                                        var u = F(this.data, s) || {};
                                        o ? A(u, n, r) : (u = i({}, u, n)), E(this.data, s, u), a.silent || this.emit("added", e, t, n);
                                    },
                                },
                                {
                                    key: "removeResourceBundle",
                                    value: function (e, t) {
                                        this.hasResourceBundle(e, t) && delete this.data[e][t], this.removeNamespaces(t), this.emit("removed", e, t);
                                    },
                                },
                                {
                                    key: "hasResourceBundle",
                                    value: function (e, t) {
                                        return void 0 !== this.getResource(e, t);
                                    },
                                },
                                {
                                    key: "getResourceBundle",
                                    value: function (e, t) {
                                        return t || (t = this.options.defaultNS), "v1" === this.options.compatibilityAPI ? i({}, {}, this.getResource(e, t)) : this.getResource(e, t);
                                    },
                                },
                                {
                                    key: "getDataByLanguage",
                                    value: function (e) {
                                        return this.data[e];
                                    },
                                },
                                {
                                    key: "toJSON",
                                    value: function () {
                                        return this.data;
                                    },
                                },
                            ]),
                            t
                    );
                })(P),
                V = {
                    processors: {},
                    addPostProcessor: function (e) {
                        this.processors[e.name] = e;
                    },
                    handle: function (e, t, n, o, r) {
                        var i = this;
                        return (
                            e.forEach(function (e) {
                                i.processors[e] && (t = i.processors[e].process(t, n, o, r));
                            }),
                                t
                        );
                    },
                },
                _ = {},
                q = (function (e) {
                    function t(e) {
                        var n,
                            o = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : {};
                        return (
                            a(this, t),
                                (n = p(this, g(t).call(this))),
                            D && P.call(f(n)),
                                C(["resourceStore", "languageUtils", "pluralResolver", "interpolator", "backendConnector", "i18nFormat", "utils"], e, f(n)),
                                (n.options = o),
                            void 0 === n.options.keySeparator && (n.options.keySeparator = "."),
                                (n.logger = L.create("translator")),
                                n
                        );
                    }
                    return (
                        d(t, e),
                            u(t, [
                                {
                                    key: "changeLanguage",
                                    value: function (e) {
                                        e && (this.language = e);
                                    },
                                },
                                {
                                    key: "exists",
                                    value: function (e) {
                                        var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : { interpolation: {} },
                                            n = this.resolve(e, t);
                                        return n && void 0 !== n.res;
                                    },
                                },
                                {
                                    key: "extractFromKey",
                                    value: function (e, t) {
                                        var n = t.nsSeparator || this.options.nsSeparator;
                                        void 0 === n && (n = ":");
                                        var o = void 0 !== t.keySeparator ? t.keySeparator : this.options.keySeparator,
                                            r = t.ns || this.options.defaultNS;
                                        if (n && e.indexOf(n) > -1) {
                                            var i = e.split(n);
                                            (n !== o || (n === o && this.options.ns.indexOf(i[0]) > -1)) && (r = i.shift()), (e = i.join(o));
                                        }
                                        return "string" == typeof r && (r = [r]), { key: e, namespaces: r };
                                    },
                                },
                                {
                                    key: "translate",
                                    value: function (e, t) {
                                        var n = this;
                                        if (("object" !== o(t) && this.options.overloadTranslationOptionHandler && (t = this.options.overloadTranslationOptionHandler(arguments)), t || (t = {}), null == e)) return "";
                                        Array.isArray(e) || (e = [String(e)]);
                                        var r = void 0 !== t.keySeparator ? t.keySeparator : this.options.keySeparator,
                                            a = this.extractFromKey(e[e.length - 1], t),
                                            s = a.key,
                                            u = a.namespaces,
                                            l = u[u.length - 1],
                                            c = t.lng || this.language,
                                            f = t.appendNamespaceToCIMode || this.options.appendNamespaceToCIMode;
                                        if (c && "cimode" === c.toLowerCase()) {
                                            if (f) {
                                                var p = t.nsSeparator || this.options.nsSeparator;
                                                return l + p + s;
                                            }
                                            return s;
                                        }
                                        var g = this.resolve(e, t),
                                            h = g && g.res,
                                            d = (g && g.usedKey) || s,
                                            v = (g && g.exactUsedKey) || s,
                                            y = Object.prototype.toString.apply(h),
                                            m = ["[object Number]", "[object Function]", "[object RegExp]"],
                                            b = void 0 !== t.joinArrays ? t.joinArrays : this.options.joinArrays,
                                            k = !this.i18nFormat || this.i18nFormat.handleAsObject,
                                            x = "string" != typeof h && "boolean" != typeof h && "number" != typeof h;
                                        if (k && h && x && m.indexOf(y) < 0 && ("string" != typeof b || "[object Array]" !== y)) {
                                            if (!t.returnObjects && !this.options.returnObjects)
                                                return (
                                                    this.logger.warn("accessing an object - but returnObjects options is not enabled!"),
                                                        this.options.returnedObjectHandler ? this.options.returnedObjectHandler(d, h, t) : "key '".concat(s, " (").concat(this.language, ")' returned an object instead of string.")
                                                );
                                            if (r) {
                                                var w = "[object Array]" === y,
                                                    S = w ? [] : {},
                                                    O = w ? v : d;
                                                for (var L in h)
                                                    if (Object.prototype.hasOwnProperty.call(h, L)) {
                                                        var P = "".concat(O).concat(r).concat(L);
                                                        (S[L] = this.translate(P, i({}, t, { joinArrays: !1, ns: u }))), S[L] === P && (S[L] = h[L]);
                                                    }
                                                h = S;
                                            }
                                        } else if (k && "string" == typeof b && "[object Array]" === y) (h = h.join(b)) && (h = this.extendTranslation(h, e, t));
                                        else {
                                            var R = !1,
                                                j = !1;
                                            if (!this.isValidLookup(h) && void 0 !== t.defaultValue) {
                                                if (((R = !0), void 0 !== t.count)) {
                                                    var C = this.pluralResolver.getSuffix(c, t.count);
                                                    h = t["defaultValue".concat(C)];
                                                }
                                                h || (h = t.defaultValue);
                                            }
                                            this.isValidLookup(h) || ((j = !0), (h = s));
                                            var N = t.defaultValue && t.defaultValue !== h && this.options.updateMissing;
                                            if (j || R || N) {
                                                this.logger.log(N ? "updateKey" : "missingKey", c, l, s, N ? t.defaultValue : h);
                                                var E = [],
                                                    F = this.languageUtils.getFallbackCodes(this.options.fallbackLng, t.lng || this.language);
                                                if ("fallback" === this.options.saveMissingTo && F && F[0]) for (var T = 0; T < F.length; T++) E.push(F[T]);
                                                else "all" === this.options.saveMissingTo ? (E = this.languageUtils.toResolveHierarchy(t.lng || this.language)) : E.push(t.lng || this.language);
                                                var A = function (e, o) {
                                                    n.options.missingKeyHandler
                                                        ? n.options.missingKeyHandler(e, l, o, N ? t.defaultValue : h, N, t)
                                                        : n.backendConnector && n.backendConnector.saveMissing && n.backendConnector.saveMissing(e, l, o, N ? t.defaultValue : h, N, t),
                                                        n.emit("missingKey", e, l, o, h);
                                                };
                                                if (this.options.saveMissing) {
                                                    var I = void 0 !== t.count && "string" != typeof t.count;
                                                    this.options.saveMissingPlurals && I
                                                        ? E.forEach(function (e) {
                                                            n.pluralResolver.getPluralFormsOfKey(e, s).forEach(function (t) {
                                                                return A([e], t);
                                                            });
                                                        })
                                                        : A(E, s);
                                                }
                                            }
                                            (h = this.extendTranslation(h, e, t, g)),
                                            j && h === s && this.options.appendNamespaceToMissingKey && (h = "".concat(l, ":").concat(s)),
                                            j && this.options.parseMissingKeyHandler && (h = this.options.parseMissingKeyHandler(h));
                                        }
                                        return h;
                                    },
                                },
                                {
                                    key: "extendTranslation",
                                    value: function (e, t, n, o) {
                                        var r = this;
                                        if (this.i18nFormat && this.i18nFormat.parse) e = this.i18nFormat.parse(e, n, o.usedLng, o.usedNS, o.usedKey, { resolved: o });
                                        else if (!n.skipInterpolation) {
                                            n.interpolation && this.interpolator.init(i({}, n, { interpolation: i({}, this.options.interpolation, n.interpolation) }));
                                            var a = n.replace && "string" != typeof n.replace ? n.replace : n;
                                            this.options.interpolation.defaultVariables && (a = i({}, this.options.interpolation.defaultVariables, a)),
                                                (e = this.interpolator.interpolate(e, a, n.lng || this.language, n)),
                                            !1 !== n.nest &&
                                            (e = this.interpolator.nest(
                                                e,
                                                function () {
                                                    return r.translate.apply(r, arguments);
                                                },
                                                n
                                            )),
                                            n.interpolation && this.interpolator.reset();
                                        }
                                        var s = n.postProcess || this.options.postProcess,
                                            u = "string" == typeof s ? [s] : s;
                                        return null != e && u && u.length && !1 !== n.applyPostProcessor && (e = V.handle(u, e, t, this.options && this.options.postProcessPassResolved ? i({ i18nResolved: o }, n) : n, this)), e;
                                    },
                                },
                                {
                                    key: "resolve",
                                    value: function (e) {
                                        var t,
                                            n,
                                            o,
                                            r,
                                            i,
                                            a = this,
                                            s = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : {};
                                        return (
                                            "string" == typeof e && (e = [e]),
                                                e.forEach(function (e) {
                                                    if (!a.isValidLookup(t)) {
                                                        var u = a.extractFromKey(e, s),
                                                            l = u.key;
                                                        n = l;
                                                        var c = u.namespaces;
                                                        a.options.fallbackNS && (c = c.concat(a.options.fallbackNS));
                                                        var f = void 0 !== s.count && "string" != typeof s.count,
                                                            p = void 0 !== s.context && "string" == typeof s.context && "" !== s.context,
                                                            g = s.lngs ? s.lngs : a.languageUtils.toResolveHierarchy(s.lng || a.language, s.fallbackLng);
                                                        c.forEach(function (e) {
                                                            a.isValidLookup(t) ||
                                                            ((i = e),
                                                            !_["".concat(g[0], "-").concat(e)] &&
                                                            a.utils &&
                                                            a.utils.hasLoadedNamespace &&
                                                            !a.utils.hasLoadedNamespace(i) &&
                                                            ((_["".concat(g[0], "-").concat(e)] = !0),
                                                                a.logger.warn(
                                                                    'key "'.concat(n, '" for namespace "').concat(i, '" for languages "').concat(g.join(", "), "\" won't get resolved as namespace was not yet loaded"),
                                                                    "This means something IS WRONG in your application setup. You access the t function before i18next.init / i18next.loadNamespace / i18next.changeLanguage was done. Wait for the callback or Promise to resolve before accessing it!!!"
                                                                )),
                                                                g.forEach(function (n) {
                                                                    if (!a.isValidLookup(t)) {
                                                                        r = n;
                                                                        var i,
                                                                            u,
                                                                            c = l,
                                                                            g = [c];
                                                                        if (a.i18nFormat && a.i18nFormat.addLookupKeys) a.i18nFormat.addLookupKeys(g, l, n, e, s);
                                                                        else
                                                                            f && (i = a.pluralResolver.getSuffix(n, s.count)),
                                                                            f && p && g.push(c + i),
                                                                            p && g.push((c += "".concat(a.options.contextSeparator).concat(s.context))),
                                                                            f && g.push((c += i));
                                                                        for (; (u = g.pop()); ) a.isValidLookup(t) || ((o = u), (t = a.getResource(n, e, u, s)));
                                                                    }
                                                                }));
                                                        });
                                                    }
                                                }),
                                                { res: t, usedKey: n, exactUsedKey: o, usedLng: r, usedNS: i }
                                        );
                                    },
                                },
                                {
                                    key: "isValidLookup",
                                    value: function (e) {
                                        return !(void 0 === e || (!this.options.returnNull && null === e) || (!this.options.returnEmptyString && "" === e));
                                    },
                                },
                                {
                                    key: "getResource",
                                    value: function (e, t, n) {
                                        var o = arguments.length > 3 && void 0 !== arguments[3] ? arguments[3] : {};
                                        return this.i18nFormat && this.i18nFormat.getResource ? this.i18nFormat.getResource(e, t, n, o) : this.resourceStore.getResource(e, t, n, o);
                                    },
                                },
                            ]),
                            t
                    );
                })(P);
            function K(e) {
                return e.charAt(0).toUpperCase() + e.slice(1);
            }
            var B = (function () {
                    function e(t) {
                        a(this, e), (this.options = t), (this.whitelist = this.options.whitelist || !1), (this.logger = L.create("languageUtils"));
                    }
                    return (
                        u(e, [
                            {
                                key: "getScriptPartFromCode",
                                value: function (e) {
                                    if (!e || e.indexOf("-") < 0) return null;
                                    var t = e.split("-");
                                    return 2 === t.length ? null : (t.pop(), this.formatLanguageCode(t.join("-")));
                                },
                            },
                            {
                                key: "getLanguagePartFromCode",
                                value: function (e) {
                                    if (!e || e.indexOf("-") < 0) return e;
                                    var t = e.split("-");
                                    return this.formatLanguageCode(t[0]);
                                },
                            },
                            {
                                key: "formatLanguageCode",
                                value: function (e) {
                                    if ("string" == typeof e && e.indexOf("-") > -1) {
                                        var t = ["hans", "hant", "latn", "cyrl", "cans", "mong", "arab"],
                                            n = e.split("-");
                                        return (
                                            this.options.lowerCaseLng
                                                ? (n = n.map(function (e) {
                                                    return e.toLowerCase();
                                                }))
                                                : 2 === n.length
                                                ? ((n[0] = n[0].toLowerCase()), (n[1] = n[1].toUpperCase()), t.indexOf(n[1].toLowerCase()) > -1 && (n[1] = K(n[1].toLowerCase())))
                                                : 3 === n.length &&
                                                ((n[0] = n[0].toLowerCase()),
                                                2 === n[1].length && (n[1] = n[1].toUpperCase()),
                                                "sgn" !== n[0] && 2 === n[2].length && (n[2] = n[2].toUpperCase()),
                                                t.indexOf(n[1].toLowerCase()) > -1 && (n[1] = K(n[1].toLowerCase())),
                                                t.indexOf(n[2].toLowerCase()) > -1 && (n[2] = K(n[2].toLowerCase()))),
                                                n.join("-")
                                        );
                                    }
                                    return this.options.cleanCode || this.options.lowerCaseLng ? e.toLowerCase() : e;
                                },
                            },
                            {
                                key: "isWhitelisted",
                                value: function (e) {
                                    return ("languageOnly" === this.options.load || this.options.nonExplicitWhitelist) && (e = this.getLanguagePartFromCode(e)), !this.whitelist || !this.whitelist.length || this.whitelist.indexOf(e) > -1;
                                },
                            },
                            {
                                key: "getFallbackCodes",
                                value: function (e, t) {
                                    if (!e) return [];
                                    if (("string" == typeof e && (e = [e]), "[object Array]" === Object.prototype.toString.apply(e))) return e;
                                    if (!t) return e.default || [];
                                    var n = e[t];
                                    return n || (n = e[this.getScriptPartFromCode(t)]), n || (n = e[this.formatLanguageCode(t)]), n || (n = e[this.getLanguagePartFromCode(t)]), n || (n = e.default), n || [];
                                },
                            },
                            {
                                key: "toResolveHierarchy",
                                value: function (e, t) {
                                    var n = this,
                                        o = this.getFallbackCodes(t || this.options.fallbackLng || [], e),
                                        r = [],
                                        i = function (e) {
                                            e && (n.isWhitelisted(e) ? r.push(e) : n.logger.warn("rejecting non-whitelisted language code: ".concat(e)));
                                        };
                                    return (
                                        "string" == typeof e && e.indexOf("-") > -1
                                            ? ("languageOnly" !== this.options.load && i(this.formatLanguageCode(e)),
                                            "languageOnly" !== this.options.load && "currentOnly" !== this.options.load && i(this.getScriptPartFromCode(e)),
                                            "currentOnly" !== this.options.load && i(this.getLanguagePartFromCode(e)))
                                            : "string" == typeof e && i(this.formatLanguageCode(e)),
                                            o.forEach(function (e) {
                                                r.indexOf(e) < 0 && i(n.formatLanguageCode(e));
                                            }),
                                            r
                                    );
                                },
                            },
                        ]),
                            e
                    );
                })(),
                z = [
                    { lngs: ["ach", "ak", "am", "arn", "br", "fil", "gun", "ln", "mfe", "mg", "mi", "oc", "pt", "pt-BR", "tg", "ti", "tr", "uz", "wa"], nr: [1, 2], fc: 1 },
                    {
                        lngs: [
                            "af",
                            "an",
                            "ast",
                            "az",
                            "bg",
                            "bn",
                            "ca",
                            "da",
                            "de",
                            "dev",
                            "el",
                            "en",
                            "eo",
                            "es",
                            "et",
                            "eu",
                            "fi",
                            "fo",
                            "fur",
                            "fy",
                            "gl",
                            "gu",
                            "ha",
                            "hi",
                            "hu",
                            "hy",
                            "ia",
                            "it",
                            "kn",
                            "ku",
                            "lb",
                            "mai",
                            "ml",
                            "mn",
                            "mr",
                            "nah",
                            "nap",
                            "nb",
                            "ne",
                            "nl",
                            "nn",
                            "no",
                            "nso",
                            "pa",
                            "pap",
                            "pms",
                            "ps",
                            "pt-PT",
                            "rm",
                            "sco",
                            "se",
                            "si",
                            "so",
                            "son",
                            "sq",
                            "sv",
                            "sw",
                            "ta",
                            "te",
                            "tk",
                            "ur",
                            "yo",
                        ],
                        nr: [1, 2],
                        fc: 2,
                    },
                    { lngs: ["ay", "bo", "cgg", "fa", "id", "ja", "jbo", "ka", "kk", "km", "ko", "ky", "lo", "ms", "sah", "su", "th", "tt", "ug", "vi", "wo", "zh"], nr: [1], fc: 3 },
                    { lngs: ["be", "bs", "cnr", "dz", "hr", "ru", "sr", "uk"], nr: [1, 2, 5], fc: 4 },
                    { lngs: ["ar"], nr: [0, 1, 2, 3, 11, 100], fc: 5 },
                    { lngs: ["cs", "sk"], nr: [1, 2, 5], fc: 6 },
                    { lngs: ["csb", "pl"], nr: [1, 2, 5], fc: 7 },
                    { lngs: ["cy"], nr: [1, 2, 3, 8], fc: 8 },
                    { lngs: ["fr"], nr: [1, 2], fc: 9 },
                    { lngs: ["ga"], nr: [1, 2, 3, 7, 11], fc: 10 },
                    { lngs: ["gd"], nr: [1, 2, 3, 20], fc: 11 },
                    { lngs: ["is"], nr: [1, 2], fc: 12 },
                    { lngs: ["jv"], nr: [0, 1], fc: 13 },
                    { lngs: ["kw"], nr: [1, 2, 3, 4], fc: 14 },
                    { lngs: ["lt"], nr: [1, 2, 10], fc: 15 },
                    { lngs: ["lv"], nr: [1, 2, 0], fc: 16 },
                    { lngs: ["mk"], nr: [1, 2], fc: 17 },
                    { lngs: ["mnk"], nr: [0, 1, 2], fc: 18 },
                    { lngs: ["mt"], nr: [1, 2, 11, 20], fc: 19 },
                    { lngs: ["or"], nr: [2, 1], fc: 2 },
                    { lngs: ["ro"], nr: [1, 2, 20], fc: 20 },
                    { lngs: ["sl"], nr: [5, 1, 2, 3], fc: 21 },
                    { lngs: ["he"], nr: [1, 2, 20, 21], fc: 22 },
                ],
                W = {
                    1: function (e) {
                        return Number(e > 1);
                    },
                    2: function (e) {
                        return Number(1 != e);
                    },
                    3: function (e) {
                        return 0;
                    },
                    4: function (e) {
                        return Number(e % 10 == 1 && e % 100 != 11 ? 0 : e % 10 >= 2 && e % 10 <= 4 && (e % 100 < 10 || e % 100 >= 20) ? 1 : 2);
                    },
                    5: function (e) {
                        return Number(0 === e ? 0 : 1 == e ? 1 : 2 == e ? 2 : e % 100 >= 3 && e % 100 <= 10 ? 3 : e % 100 >= 11 ? 4 : 5);
                    },
                    6: function (e) {
                        return Number(1 == e ? 0 : e >= 2 && e <= 4 ? 1 : 2);
                    },
                    7: function (e) {
                        return Number(1 == e ? 0 : e % 10 >= 2 && e % 10 <= 4 && (e % 100 < 10 || e % 100 >= 20) ? 1 : 2);
                    },
                    8: function (e) {
                        return Number(1 == e ? 0 : 2 == e ? 1 : 8 != e && 11 != e ? 2 : 3);
                    },
                    9: function (e) {
                        return Number(e >= 2);
                    },
                    10: function (e) {
                        return Number(1 == e ? 0 : 2 == e ? 1 : e < 7 ? 2 : e < 11 ? 3 : 4);
                    },
                    11: function (e) {
                        return Number(1 == e || 11 == e ? 0 : 2 == e || 12 == e ? 1 : e > 2 && e < 20 ? 2 : 3);
                    },
                    12: function (e) {
                        return Number(e % 10 != 1 || e % 100 == 11);
                    },
                    13: function (e) {
                        return Number(0 !== e);
                    },
                    14: function (e) {
                        return Number(1 == e ? 0 : 2 == e ? 1 : 3 == e ? 2 : 3);
                    },
                    15: function (e) {
                        return Number(e % 10 == 1 && e % 100 != 11 ? 0 : e % 10 >= 2 && (e % 100 < 10 || e % 100 >= 20) ? 1 : 2);
                    },
                    16: function (e) {
                        return Number(e % 10 == 1 && e % 100 != 11 ? 0 : 0 !== e ? 1 : 2);
                    },
                    17: function (e) {
                        return Number(1 == e || e % 10 == 1 ? 0 : 1);
                    },
                    18: function (e) {
                        return Number(0 == e ? 0 : 1 == e ? 1 : 2);
                    },
                    19: function (e) {
                        return Number(1 == e ? 0 : 0 === e || (e % 100 > 1 && e % 100 < 11) ? 1 : e % 100 > 10 && e % 100 < 20 ? 2 : 3);
                    },
                    20: function (e) {
                        return Number(1 == e ? 0 : 0 === e || (e % 100 > 0 && e % 100 < 20) ? 1 : 2);
                    },
                    21: function (e) {
                        return Number(e % 100 == 1 ? 1 : e % 100 == 2 ? 2 : e % 100 == 3 || e % 100 == 4 ? 3 : 0);
                    },
                    22: function (e) {
                        return Number(1 === e ? 0 : 2 === e ? 1 : (e < 0 || e > 10) && e % 10 == 0 ? 2 : 3);
                    },
                };
            function $() {
                var e = {};
                return (
                    z.forEach(function (t) {
                        t.lngs.forEach(function (n) {
                            e[n] = { numbers: t.nr, plurals: W[t.fc] };
                        });
                    }),
                        e
                );
            }
            var X = (function () {
                    function e(t) {
                        var n = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : {};
                        a(this, e), (this.languageUtils = t), (this.options = n), (this.logger = L.create("pluralResolver")), (this.rules = $());
                    }
                    return (
                        u(e, [
                            {
                                key: "addRule",
                                value: function (e, t) {
                                    this.rules[e] = t;
                                },
                            },
                            {
                                key: "getRule",
                                value: function (e) {
                                    return this.rules[e] || this.rules[this.languageUtils.getLanguagePartFromCode(e)];
                                },
                            },
                            {
                                key: "needsPlural",
                                value: function (e) {
                                    var t = this.getRule(e);
                                    return t && t.numbers.length > 1;
                                },
                            },
                            {
                                key: "getPluralFormsOfKey",
                                value: function (e, t) {
                                    var n = this,
                                        o = [],
                                        r = this.getRule(e);
                                    return r
                                        ? (r.numbers.forEach(function (r) {
                                            var i = n.getSuffix(e, r);
                                            o.push("".concat(t).concat(i));
                                        }),
                                            o)
                                        : o;
                                },
                            },
                            {
                                key: "getSuffix",
                                value: function (e, t) {
                                    var n = this,
                                        o = this.getRule(e);
                                    if (o) {
                                        var r = o.noAbs ? o.plurals(t) : o.plurals(Math.abs(t)),
                                            i = o.numbers[r];
                                        this.options.simplifyPluralSuffix && 2 === o.numbers.length && 1 === o.numbers[0] && (2 === i ? (i = "plural") : 1 === i && (i = ""));
                                        var a = function () {
                                            return n.options.prepend && i.toString() ? n.options.prepend + i.toString() : i.toString();
                                        };
                                        return "v1" === this.options.compatibilityJSON
                                            ? 1 === i
                                                ? ""
                                                : "number" == typeof i
                                                    ? "_plural_".concat(i.toString())
                                                    : a()
                                            : "v2" === this.options.compatibilityJSON || (this.options.simplifyPluralSuffix && 2 === o.numbers.length && 1 === o.numbers[0])
                                                ? a()
                                                : this.options.prepend && r.toString()
                                                    ? this.options.prepend + r.toString()
                                                    : r.toString();
                                    }
                                    return this.logger.warn("no plural rule found for: ".concat(e)), "";
                                },
                            },
                        ]),
                            e
                    );
                })(),
                J = (function () {
                    function e() {
                        var t = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {};
                        a(this, e),
                            (this.logger = L.create("interpolator")),
                            (this.options = t),
                            (this.format =
                                (t.interpolation && t.interpolation.format) ||
                                function (e) {
                                    return e;
                                }),
                            this.init(t);
                    }
                    return (
                        u(e, [
                            {
                                key: "init",
                                value: function () {
                                    var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {};
                                    e.interpolation || (e.interpolation = { escapeValue: !0 });
                                    var t = e.interpolation;
                                    (this.escape = void 0 !== t.escape ? t.escape : U),
                                        (this.escapeValue = void 0 === t.escapeValue || t.escapeValue),
                                        (this.useRawValueToEscape = void 0 !== t.useRawValueToEscape && t.useRawValueToEscape),
                                        (this.prefix = t.prefix ? I(t.prefix) : t.prefixEscaped || "{{"),
                                        (this.suffix = t.suffix ? I(t.suffix) : t.suffixEscaped || "}}"),
                                        (this.formatSeparator = t.formatSeparator ? t.formatSeparator : t.formatSeparator || ","),
                                        (this.unescapePrefix = t.unescapeSuffix ? "" : t.unescapePrefix || "-"),
                                        (this.unescapeSuffix = this.unescapePrefix ? "" : t.unescapeSuffix || ""),
                                        (this.nestingPrefix = t.nestingPrefix ? I(t.nestingPrefix) : t.nestingPrefixEscaped || I("$t(")),
                                        (this.nestingSuffix = t.nestingSuffix ? I(t.nestingSuffix) : t.nestingSuffixEscaped || I(")")),
                                        (this.nestingOptionsSeparator = t.nestingOptionsSeparator ? t.nestingOptionsSeparator : t.nestingOptionsSeparator || ","),
                                        (this.maxReplaces = t.maxReplaces ? t.maxReplaces : 1e3),
                                        (this.alwaysFormat = void 0 !== t.alwaysFormat && t.alwaysFormat),
                                        this.resetRegExp();
                                },
                            },
                            {
                                key: "reset",
                                value: function () {
                                    this.options && this.init(this.options);
                                },
                            },
                            {
                                key: "resetRegExp",
                                value: function () {
                                    var e = "".concat(this.prefix, "(.+?)").concat(this.suffix);
                                    this.regexp = new RegExp(e, "g");
                                    var t = "".concat(this.prefix).concat(this.unescapePrefix, "(.+?)").concat(this.unescapeSuffix).concat(this.suffix);
                                    this.regexpUnescape = new RegExp(t, "g");
                                    var n = "".concat(this.nestingPrefix, "(.+?)").concat(this.nestingSuffix);
                                    this.nestingRegexp = new RegExp(n, "g");
                                },
                            },
                            {
                                key: "interpolate",
                                value: function (e, t, n, o) {
                                    var r,
                                        i,
                                        a,
                                        s = this,
                                        u = (this.options && this.options.interpolation && this.options.interpolation.defaultVariables) || {};
                                    function l(e) {
                                        return e.replace(/\$/g, "$$$$");
                                    }
                                    var c = function (e) {
                                        if (e.indexOf(s.formatSeparator) < 0) {
                                            var r = T(t, u, e);
                                            return s.alwaysFormat ? s.format(r, void 0, n) : r;
                                        }
                                        var i = e.split(s.formatSeparator),
                                            a = i.shift().trim(),
                                            l = i.join(s.formatSeparator).trim();
                                        return s.format(T(t, u, a), l, n, o);
                                    };
                                    this.resetRegExp();
                                    var f = (o && o.missingInterpolationHandler) || this.options.missingInterpolationHandler;
                                    for (a = 0; (r = this.regexpUnescape.exec(e)); ) {
                                        if (void 0 === (i = c(r[1].trim())))
                                            if ("function" == typeof f) {
                                                var p = f(e, r, o);
                                                i = "string" == typeof p ? p : "";
                                            } else this.logger.warn("missed to pass in variable ".concat(r[1], " for interpolating ").concat(e)), (i = "");
                                        else "string" == typeof i || this.useRawValueToEscape || (i = j(i));
                                        if (((e = e.replace(r[0], l(i))), (this.regexpUnescape.lastIndex = 0), ++a >= this.maxReplaces)) break;
                                    }
                                    for (a = 0; (r = this.regexp.exec(e)); ) {
                                        if (void 0 === (i = c(r[1].trim())))
                                            if ("function" == typeof f) {
                                                var g = f(e, r, o);
                                                i = "string" == typeof g ? g : "";
                                            } else this.logger.warn("missed to pass in variable ".concat(r[1], " for interpolating ").concat(e)), (i = "");
                                        else "string" == typeof i || this.useRawValueToEscape || (i = j(i));
                                        if (((i = this.escapeValue ? l(this.escape(i)) : l(i)), (e = e.replace(r[0], i)), (this.regexp.lastIndex = 0), ++a >= this.maxReplaces)) break;
                                    }
                                    return e;
                                },
                            },
                            {
                                key: "nest",
                                value: function (e, t) {
                                    var n,
                                        o,
                                        r = this,
                                        a = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : {},
                                        s = i({}, a);
                                    function u(e, t) {
                                        var n = this.nestingOptionsSeparator;
                                        if (e.indexOf(n) < 0) return e;
                                        var o = e.split(new RegExp("".concat(n, "[ ]*{"))),
                                            r = "{".concat(o[1]);
                                        (e = o[0]), (r = (r = this.interpolate(r, s)).replace(/'/g, '"'));
                                        try {
                                            (s = JSON.parse(r)), t && (s = i({}, t, s));
                                        } catch (t) {
                                            return this.logger.warn("failed parsing options string in nesting for key ".concat(e), t), "".concat(e).concat(n).concat(r);
                                        }
                                        return delete s.defaultValue, e;
                                    }
                                    for (s.applyPostProcessor = !1, delete s.defaultValue; (n = this.nestingRegexp.exec(e)); ) {
                                        var l = [],
                                            c = !1;
                                        if (n[0].includes(this.formatSeparator) && !/{.*}/.test(n[1])) {
                                            var f = n[1].split(this.formatSeparator).map(function (e) {
                                                    return e.trim();
                                                }),
                                                p = w(f);
                                            (n[1] = p[0]), (l = p.slice(1)), (c = !0);
                                        }
                                        if ((o = t(u.call(this, n[1].trim(), s), s)) && n[0] === e && "string" != typeof o) return o;
                                        "string" != typeof o && (o = j(o)),
                                        o || (this.logger.warn("missed to resolve ".concat(n[1], " for nesting ").concat(e)), (o = "")),
                                        c &&
                                        (o = l.reduce(function (e, t) {
                                            return r.format(e, t, a.lng, a);
                                        }, o.trim())),
                                            (e = e.replace(n[0], o)),
                                            (this.regexp.lastIndex = 0);
                                    }
                                    return e;
                                },
                            },
                        ]),
                            e
                    );
                })();
            var G = (function (e) {
                function t(e, n, o) {
                    var r,
                        i = arguments.length > 3 && void 0 !== arguments[3] ? arguments[3] : {};
                    return (
                        a(this, t),
                            (r = p(this, g(t).call(this))),
                        D && P.call(f(r)),
                            (r.backend = e),
                            (r.store = n),
                            (r.services = o),
                            (r.languageUtils = o.languageUtils),
                            (r.options = i),
                            (r.logger = L.create("backendConnector")),
                            (r.state = {}),
                            (r.queue = []),
                        r.backend && r.backend.init && r.backend.init(o, i.backend, i),
                            r
                    );
                }
                return (
                    d(t, e),
                        u(t, [
                            {
                                key: "queueLoad",
                                value: function (e, t, n, o) {
                                    var r = this,
                                        i = [],
                                        a = [],
                                        s = [],
                                        u = [];
                                    return (
                                        e.forEach(function (e) {
                                            var o = !0;
                                            t.forEach(function (t) {
                                                var s = "".concat(e, "|").concat(t);
                                                !n.reload && r.store.hasResourceBundle(e, t)
                                                    ? (r.state[s] = 2)
                                                    : r.state[s] < 0 ||
                                                    (1 === r.state[s] ? a.indexOf(s) < 0 && a.push(s) : ((r.state[s] = 1), (o = !1), a.indexOf(s) < 0 && a.push(s), i.indexOf(s) < 0 && i.push(s), u.indexOf(t) < 0 && u.push(t)));
                                            }),
                                            o || s.push(e);
                                        }),
                                        (i.length || a.length) && this.queue.push({ pending: a, loaded: {}, errors: [], callback: o }),
                                            { toLoad: i, pending: a, toLoadLanguages: s, toLoadNamespaces: u }
                                    );
                                },
                            },
                            {
                                key: "loaded",
                                value: function (e, t, n) {
                                    var o = S(e.split("|"), 2),
                                        r = o[0],
                                        i = o[1];
                                    t && this.emit("failedLoading", r, i, t), n && this.store.addResourceBundle(r, i, n), (this.state[e] = t ? -1 : 2);
                                    var a = {};
                                    this.queue.forEach(function (n) {
                                        var o, s, u, l, c, f;
                                        (o = n.loaded),
                                            (s = i),
                                            (l = N(o, [r], Object)),
                                            (c = l.obj),
                                            (f = l.k),
                                            (c[f] = c[f] || []),
                                        u && (c[f] = c[f].concat(s)),
                                        u || c[f].push(s),
                                            (function (e, t) {
                                                for (var n = e.indexOf(t); -1 !== n; ) e.splice(n, 1), (n = e.indexOf(t));
                                            })(n.pending, e),
                                        t && n.errors.push(t),
                                        0 !== n.pending.length ||
                                        n.done ||
                                        (Object.keys(n.loaded).forEach(function (e) {
                                            a[e] || (a[e] = []),
                                            n.loaded[e].length &&
                                            n.loaded[e].forEach(function (t) {
                                                a[e].indexOf(t) < 0 && a[e].push(t);
                                            });
                                        }),
                                            (n.done = !0),
                                            n.errors.length ? n.callback(n.errors) : n.callback());
                                    }),
                                        this.emit("loaded", a),
                                        (this.queue = this.queue.filter(function (e) {
                                            return !e.done;
                                        }));
                                },
                            },
                            {
                                key: "read",
                                value: function (e, t, n) {
                                    var o = this,
                                        r = arguments.length > 3 && void 0 !== arguments[3] ? arguments[3] : 0,
                                        i = arguments.length > 4 && void 0 !== arguments[4] ? arguments[4] : 350,
                                        a = arguments.length > 5 ? arguments[5] : void 0;
                                    return e.length
                                        ? this.backend[n](e, t, function (s, u) {
                                            s && u && r < 5
                                                ? setTimeout(function () {
                                                    o.read.call(o, e, t, n, r + 1, 2 * i, a);
                                                }, i)
                                                : a(s, u);
                                        })
                                        : a(null, {});
                                },
                            },
                            {
                                key: "prepareLoading",
                                value: function (e, t) {
                                    var n = this,
                                        o = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : {},
                                        r = arguments.length > 3 ? arguments[3] : void 0;
                                    if (!this.backend) return this.logger.warn("No backend was added via i18next.use. Will not load resources."), r && r();
                                    "string" == typeof e && (e = this.languageUtils.toResolveHierarchy(e)), "string" == typeof t && (t = [t]);
                                    var i = this.queueLoad(e, t, o, r);
                                    if (!i.toLoad.length) return i.pending.length || r(), null;
                                    i.toLoad.forEach(function (e) {
                                        n.loadOne(e);
                                    });
                                },
                            },
                            {
                                key: "load",
                                value: function (e, t, n) {
                                    this.prepareLoading(e, t, {}, n);
                                },
                            },
                            {
                                key: "reload",
                                value: function (e, t, n) {
                                    this.prepareLoading(e, t, { reload: !0 }, n);
                                },
                            },
                            {
                                key: "loadOne",
                                value: function (e) {
                                    var t = this,
                                        n = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : "",
                                        o = e.split("|"),
                                        r = S(o, 2),
                                        i = r[0],
                                        a = r[1];
                                    this.read(i, a, "read", void 0, void 0, function (o, r) {
                                        o && t.logger.warn("".concat(n, "loading namespace ").concat(a, " for language ").concat(i, " failed"), o),
                                        !o && r && t.logger.log("".concat(n, "loaded namespace ").concat(a, " for language ").concat(i), r),
                                            t.loaded(e, o, r);
                                    });
                                },
                            },
                            {
                                key: "saveMissing",
                                value: function (e, t, n, o, r) {
                                    var a = arguments.length > 5 && void 0 !== arguments[5] ? arguments[5] : {};
                                    this.services.utils && this.services.utils.hasLoadedNamespace && !this.services.utils.hasLoadedNamespace(t)
                                        ? this.logger.warn(
                                        'did not save key "'.concat(n, '" for namespace "').concat(t, '" as the namespace was not yet loaded'),
                                        "This means something IS WRONG in your application setup. You access the t function before i18next.init / i18next.loadNamespace / i18next.changeLanguage was done. Wait for the callback or Promise to resolve before accessing it!!!"
                                        )
                                        : null != n && "" !== n && (this.backend && this.backend.create && this.backend.create(e, t, n, o, null, i({}, a, { isUpdate: r })), e && e[0] && this.store.addResource(e[0], t, n, o));
                                },
                            },
                        ]),
                        t
                );
            })(P);
            function Y() {
                return {
                    debug: !1,
                    initImmediate: !0,
                    ns: ["translation"],
                    defaultNS: ["translation"],
                    fallbackLng: ["dev"],
                    fallbackNS: !1,
                    whitelist: !1,
                    nonExplicitWhitelist: !1,
                    load: "all",
                    preload: !1,
                    simplifyPluralSuffix: !0,
                    keySeparator: ".",
                    nsSeparator: ":",
                    pluralSeparator: "_",
                    contextSeparator: "_",
                    partialBundledLanguages: !1,
                    saveMissing: !1,
                    updateMissing: !1,
                    saveMissingTo: "fallback",
                    saveMissingPlurals: !0,
                    missingKeyHandler: !1,
                    missingInterpolationHandler: !1,
                    postProcess: !1,
                    postProcessPassResolved: !1,
                    returnNull: !0,
                    returnEmptyString: !0,
                    returnObjects: !1,
                    joinArrays: !1,
                    returnedObjectHandler: !1,
                    parseMissingKeyHandler: !1,
                    appendNamespaceToMissingKey: !1,
                    appendNamespaceToCIMode: !1,
                    overloadTranslationOptionHandler: function (e) {
                        var t = {};
                        if (("object" === o(e[1]) && (t = e[1]), "string" == typeof e[1] && (t.defaultValue = e[1]), "string" == typeof e[2] && (t.tDescription = e[2]), "object" === o(e[2]) || "object" === o(e[3]))) {
                            var n = e[3] || e[2];
                            Object.keys(n).forEach(function (e) {
                                t[e] = n[e];
                            });
                        }
                        return t;
                    },
                    interpolation: {
                        escapeValue: !0,
                        format: function (e, t, n, o) {
                            return e;
                        },
                        prefix: "{{",
                        suffix: "}}",
                        formatSeparator: ",",
                        unescapePrefix: "-",
                        nestingPrefix: "$t(",
                        nestingSuffix: ")",
                        nestingOptionsSeparator: ",",
                        maxReplaces: 1e3,
                    },
                };
            }
            function Q(e) {
                return (
                    "string" == typeof e.ns && (e.ns = [e.ns]),
                    "string" == typeof e.fallbackLng && (e.fallbackLng = [e.fallbackLng]),
                    "string" == typeof e.fallbackNS && (e.fallbackNS = [e.fallbackNS]),
                    e.whitelist && e.whitelist.indexOf("cimode") < 0 && (e.whitelist = e.whitelist.concat(["cimode"])),
                        e
                );
            }
            function Z() {}
            var ee = new ((function (e) {
                    function t() {
                        var e,
                            n = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {},
                            o = arguments.length > 1 ? arguments[1] : void 0;
                        if ((a(this, t), (e = p(this, g(t).call(this))), D && P.call(f(e)), (e.options = Q(n)), (e.services = {}), (e.logger = L), (e.modules = { external: [] }), o && !e.isInitialized && !n.isClone)) {
                            if (!e.options.initImmediate) return e.init(n, o), p(e, f(e));
                            setTimeout(function () {
                                e.init(n, o);
                            }, 0);
                        }
                        return e;
                    }
                    return (
                        d(t, e),
                            u(t, [
                                {
                                    key: "init",
                                    value: function () {
                                        var e = this,
                                            t = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {},
                                            n = arguments.length > 1 ? arguments[1] : void 0;
                                        function o(e) {
                                            return e ? ("function" == typeof e ? new e() : e) : null;
                                        }
                                        if (("function" == typeof t && ((n = t), (t = {})), (this.options = i({}, Y(), this.options, Q(t))), (this.format = this.options.interpolation.format), n || (n = Z), !this.options.isClone)) {
                                            this.modules.logger ? L.init(o(this.modules.logger), this.options) : L.init(null, this.options);
                                            var r = new B(this.options);
                                            this.store = new H(this.options.resources, this.options);
                                            var a = this.services;
                                            (a.logger = L),
                                                (a.resourceStore = this.store),
                                                (a.languageUtils = r),
                                                (a.pluralResolver = new X(r, { prepend: this.options.pluralSeparator, compatibilityJSON: this.options.compatibilityJSON, simplifyPluralSuffix: this.options.simplifyPluralSuffix })),
                                                (a.interpolator = new J(this.options)),
                                                (a.utils = { hasLoadedNamespace: this.hasLoadedNamespace.bind(this) }),
                                                (a.backendConnector = new G(o(this.modules.backend), a.resourceStore, a, this.options)),
                                                a.backendConnector.on("*", function (t) {
                                                    for (var n = arguments.length, o = new Array(n > 1 ? n - 1 : 0), r = 1; r < n; r++) o[r - 1] = arguments[r];
                                                    e.emit.apply(e, [t].concat(o));
                                                }),
                                            this.modules.languageDetector && ((a.languageDetector = o(this.modules.languageDetector)), a.languageDetector.init(a, this.options.detection, this.options)),
                                            this.modules.i18nFormat && ((a.i18nFormat = o(this.modules.i18nFormat)), a.i18nFormat.init && a.i18nFormat.init(this)),
                                                (this.translator = new q(this.services, this.options)),
                                                this.translator.on("*", function (t) {
                                                    for (var n = arguments.length, o = new Array(n > 1 ? n - 1 : 0), r = 1; r < n; r++) o[r - 1] = arguments[r];
                                                    e.emit.apply(e, [t].concat(o));
                                                }),
                                                this.modules.external.forEach(function (t) {
                                                    t.init && t.init(e);
                                                });
                                        }
                                        this.modules.languageDetector || this.options.lng || this.logger.warn("init: no languageDetector is used and no lng is defined");
                                        var s = ["getResource", "addResource", "addResources", "addResourceBundle", "removeResourceBundle", "hasResourceBundle", "getResourceBundle", "getDataByLanguage"];
                                        s.forEach(function (t) {
                                            e[t] = function () {
                                                var n;
                                                return (n = e.store)[t].apply(n, arguments);
                                            };
                                        });
                                        var u = R(),
                                            l = function () {
                                                e.changeLanguage(e.options.lng, function (t, o) {
                                                    (e.isInitialized = !0), e.logger.log("initialized", e.options), e.emit("initialized", e.options), u.resolve(o), n(t, o);
                                                });
                                            };
                                        return this.options.resources || !this.options.initImmediate ? l() : setTimeout(l, 0), u;
                                    },
                                },
                                {
                                    key: "loadResources",
                                    value: function (e) {
                                        var t = this,
                                            n = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : Z,
                                            o = n,
                                            r = "string" == typeof e ? e : this.language;
                                        if (("function" == typeof e && (o = e), !this.options.resources || this.options.partialBundledLanguages)) {
                                            if (r && "cimode" === r.toLowerCase()) return o();
                                            var i = [],
                                                a = function (e) {
                                                    e &&
                                                    t.services.languageUtils.toResolveHierarchy(e).forEach(function (e) {
                                                        i.indexOf(e) < 0 && i.push(e);
                                                    });
                                                };
                                            if (r) a(r);
                                            else {
                                                var s = this.services.languageUtils.getFallbackCodes(this.options.fallbackLng);
                                                s.forEach(function (e) {
                                                    return a(e);
                                                });
                                            }
                                            this.options.preload &&
                                            this.options.preload.forEach(function (e) {
                                                return a(e);
                                            }),
                                                this.services.backendConnector.load(i, this.options.ns, o);
                                        } else o(null);
                                    },
                                },
                                {
                                    key: "reloadResources",
                                    value: function (e, t, n) {
                                        var o = R();
                                        return (
                                            e || (e = this.languages),
                                            t || (t = this.options.ns),
                                            n || (n = Z),
                                                this.services.backendConnector.reload(e, t, function (e) {
                                                    o.resolve(), n(e);
                                                }),
                                                o
                                        );
                                    },
                                },
                                {
                                    key: "use",
                                    value: function (e) {
                                        if (!e) throw new Error("You are passing an undefined module! Please check the object you are passing to i18next.use()");
                                        if (!e.type) throw new Error("You are passing a wrong module! Please check the object you are passing to i18next.use()");
                                        return (
                                            "backend" === e.type && (this.modules.backend = e),
                                            ("logger" === e.type || (e.log && e.warn && e.error)) && (this.modules.logger = e),
                                            "languageDetector" === e.type && (this.modules.languageDetector = e),
                                            "i18nFormat" === e.type && (this.modules.i18nFormat = e),
                                            "postProcessor" === e.type && V.addPostProcessor(e),
                                            "3rdParty" === e.type && this.modules.external.push(e),
                                                this
                                        );
                                    },
                                },
                                {
                                    key: "changeLanguage",
                                    value: function (e, t) {
                                        var n = this;
                                        this.isLanguageChangingTo = e;
                                        var o = R();
                                        this.emit("languageChanging", e);
                                        var r = function (e) {
                                            e &&
                                            (n.language || ((n.language = e), (n.languages = n.services.languageUtils.toResolveHierarchy(e))),
                                            n.translator.language || n.translator.changeLanguage(e),
                                            n.services.languageDetector && n.services.languageDetector.cacheUserLanguage(e)),
                                                n.loadResources(e, function (r) {
                                                    !(function (e, r) {
                                                        r
                                                            ? ((n.language = r),
                                                                (n.languages = n.services.languageUtils.toResolveHierarchy(r)),
                                                                n.translator.changeLanguage(r),
                                                                (n.isLanguageChangingTo = void 0),
                                                                n.emit("languageChanged", r),
                                                                n.logger.log("languageChanged", r))
                                                            : (n.isLanguageChangingTo = void 0),
                                                            o.resolve(function () {
                                                                return n.t.apply(n, arguments);
                                                            }),
                                                        t &&
                                                        t(e, function () {
                                                            return n.t.apply(n, arguments);
                                                        });
                                                    })(r, e);
                                                });
                                        };
                                        return (
                                            e || !this.services.languageDetector || this.services.languageDetector.async
                                                ? !e && this.services.languageDetector && this.services.languageDetector.async
                                                ? this.services.languageDetector.detect(r)
                                                : r(e)
                                                : r(this.services.languageDetector.detect()),
                                                o
                                        );
                                    },
                                },
                                {
                                    key: "getFixedT",
                                    value: function (e, t) {
                                        var n = this,
                                            r = function e(t, r) {
                                                var a;
                                                if ("object" !== o(r)) {
                                                    for (var s = arguments.length, u = new Array(s > 2 ? s - 2 : 0), l = 2; l < s; l++) u[l - 2] = arguments[l];
                                                    a = n.options.overloadTranslationOptionHandler([t, r].concat(u));
                                                } else a = i({}, r);
                                                return (a.lng = a.lng || e.lng), (a.lngs = a.lngs || e.lngs), (a.ns = a.ns || e.ns), n.t(t, a);
                                            };
                                        return "string" == typeof e ? (r.lng = e) : (r.lngs = e), (r.ns = t), r;
                                    },
                                },
                                {
                                    key: "t",
                                    value: function () {
                                        var e;
                                        return this.translator && (e = this.translator).translate.apply(e, arguments);
                                    },
                                },
                                {
                                    key: "exists",
                                    value: function () {
                                        var e;
                                        return this.translator && (e = this.translator).exists.apply(e, arguments);
                                    },
                                },
                                {
                                    key: "setDefaultNamespace",
                                    value: function (e) {
                                        this.options.defaultNS = e;
                                    },
                                },
                                {
                                    key: "hasLoadedNamespace",
                                    value: function (e) {
                                        var t = this;
                                        if (!this.isInitialized) return this.logger.warn("hasLoadedNamespace: i18next was not initialized", this.languages), !1;
                                        if (!this.languages || !this.languages.length) return this.logger.warn("hasLoadedNamespace: i18n.languages were undefined or empty", this.languages), !1;
                                        var n = this.languages[0],
                                            o = !!this.options && this.options.fallbackLng,
                                            r = this.languages[this.languages.length - 1];
                                        if ("cimode" === n.toLowerCase()) return !0;
                                        var i = function (e, n) {
                                            var o = t.services.backendConnector.state["".concat(e, "|").concat(n)];
                                            return -1 === o || 2 === o;
                                        };
                                        return !!this.hasResourceBundle(n, e) || !this.services.backendConnector.backend || !(!i(n, e) || (o && !i(r, e)));
                                    },
                                },
                                {
                                    key: "loadNamespaces",
                                    value: function (e, t) {
                                        var n = this,
                                            o = R();
                                        return this.options.ns
                                            ? ("string" == typeof e && (e = [e]),
                                                e.forEach(function (e) {
                                                    n.options.ns.indexOf(e) < 0 && n.options.ns.push(e);
                                                }),
                                                this.loadResources(function (e) {
                                                    o.resolve(), t && t(e);
                                                }),
                                                o)
                                            : (t && t(), Promise.resolve());
                                    },
                                },
                                {
                                    key: "loadLanguages",
                                    value: function (e, t) {
                                        var n = R();
                                        "string" == typeof e && (e = [e]);
                                        var o = this.options.preload || [],
                                            r = e.filter(function (e) {
                                                return o.indexOf(e) < 0;
                                            });
                                        return r.length
                                            ? ((this.options.preload = o.concat(r)),
                                                this.loadResources(function (e) {
                                                    n.resolve(), t && t(e);
                                                }),
                                                n)
                                            : (t && t(), Promise.resolve());
                                    },
                                },
                                {
                                    key: "dir",
                                    value: function (e) {
                                        if ((e || (e = this.languages && this.languages.length > 0 ? this.languages[0] : this.language), !e)) return "rtl";
                                        return [
                                            "ar",
                                            "shu",
                                            "sqr",
                                            "ssh",
                                            "xaa",
                                            "yhd",
                                            "yud",
                                            "aao",
                                            "abh",
                                            "abv",
                                            "acm",
                                            "acq",
                                            "acw",
                                            "acx",
                                            "acy",
                                            "adf",
                                            "ads",
                                            "aeb",
                                            "aec",
                                            "afb",
                                            "ajp",
                                            "apc",
                                            "apd",
                                            "arb",
                                            "arq",
                                            "ars",
                                            "ary",
                                            "arz",
                                            "auz",
                                            "avl",
                                            "ayh",
                                            "ayl",
                                            "ayn",
                                            "ayp",
                                            "bbz",
                                            "pga",
                                            "he",
                                            "iw",
                                            "ps",
                                            "pbt",
                                            "pbu",
                                            "pst",
                                            "prp",
                                            "prd",
                                            "ur",
                                            "ydd",
                                            "yds",
                                            "yih",
                                            "ji",
                                            "yi",
                                            "hbo",
                                            "men",
                                            "xmn",
                                            "fa",
                                            "jpr",
                                            "peo",
                                            "pes",
                                            "prs",
                                            "dv",
                                            "sam",
                                        ].indexOf(this.services.languageUtils.getLanguagePartFromCode(e)) >= 0
                                            ? "rtl"
                                            : "ltr";
                                    },
                                },
                                {
                                    key: "createInstance",
                                    value: function () {
                                        var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {},
                                            n = arguments.length > 1 ? arguments[1] : void 0;
                                        return new t(e, n);
                                    },
                                },
                                {
                                    key: "cloneInstance",
                                    value: function () {
                                        var e = this,
                                            n = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {},
                                            o = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : Z,
                                            r = i({}, this.options, n, { isClone: !0 }),
                                            a = new t(r),
                                            s = ["store", "services", "language"];
                                        return (
                                            s.forEach(function (t) {
                                                a[t] = e[t];
                                            }),
                                                (a.services = i({}, this.services)),
                                                (a.services.utils = { hasLoadedNamespace: a.hasLoadedNamespace.bind(a) }),
                                                (a.translator = new q(a.services, a.options)),
                                                a.translator.on("*", function (e) {
                                                    for (var t = arguments.length, n = new Array(t > 1 ? t - 1 : 0), o = 1; o < t; o++) n[o - 1] = arguments[o];
                                                    a.emit.apply(a, [e].concat(n));
                                                }),
                                                a.init(r, o),
                                                (a.translator.options = a.options),
                                                (a.translator.backendConnector.services.utils = { hasLoadedNamespace: a.hasLoadedNamespace.bind(a) }),
                                                a
                                        );
                                    },
                                },
                            ]),
                            t
                    );
                })(P))(),
                te = [],
                ne = te.forEach,
                oe = te.slice;
            function re(e) {
                return (
                    ne.call(oe.call(arguments, 1), function (t) {
                        if (t) for (var n in t) void 0 === e[n] && (e[n] = t[n]);
                    }),
                        e
                );
            }
            function ie(e, t) {
                if (t && "object" === o(t)) {
                    var n = "",
                        r = encodeURIComponent;
                    for (var i in t) n += "&" + r(i) + "=" + r(t[i]);
                    if (!n) return e;
                    e = e + (-1 !== e.indexOf("?") ? "&" : "?") + n.slice(1);
                }
                return e;
            }
            function ae(e, t, n, r, i) {
                r && "object" === o(r) && (i || (r._t = new Date()), (r = ie("", r).slice(1))), t.queryStringParams && (e = ie(e, t.queryStringParams));
                try {
                    var a;
                    (a = XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject("MSXML2.XMLHTTP.3.0")).open(r ? "POST" : "GET", e, 1),
                    t.crossDomain || a.setRequestHeader("X-Requested-With", "XMLHttpRequest"),
                        (a.withCredentials = !!t.withCredentials),
                    r && a.setRequestHeader("Content-type", "application/x-www-form-urlencoded"),
                    a.overrideMimeType && a.overrideMimeType("application/json");
                    var s = t.customHeaders;
                    if ((s = "function" == typeof s ? s() : s)) for (var u in s) a.setRequestHeader(u, s[u]);
                    (a.onreadystatechange = function () {
                        a.readyState > 3 && n && n(a.responseText, a);
                    }),
                        a.send(r);
                } catch (e) {
                    console && console.log(e);
                }
            }
            function se() {
                return {
                    loadPath: "/locales/{{lng}}/{{ns}}.json",
                    addPath: "/locales/add/{{lng}}/{{ns}}",
                    allowMultiLoading: !1,
                    parse: JSON.parse,
                    parsePayload: function (e, t, n) {
                        return r({}, t, n || "");
                    },
                    crossDomain: !1,
                    ajax: ae,
                };
            }
            var ue = (function () {
                function e(t) {
                    var n = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : {};
                    a(this, e), this.init(t, n), (this.type = "backend");
                }
                return (
                    u(e, [
                        {
                            key: "init",
                            value: function (e) {
                                var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : {};
                                (this.services = e), (this.options = re(t, this.options || {}, se()));
                            },
                        },
                        {
                            key: "readMulti",
                            value: function (e, t, n) {
                                var o = this.options.loadPath;
                                "function" == typeof this.options.loadPath && (o = this.options.loadPath(e, t));
                                var r = this.services.interpolator.interpolate(o, { lng: e.join("+"), ns: t.join("+") });
                                this.loadUrl(r, n);
                            },
                        },
                        {
                            key: "read",
                            value: function (e, t, n) {
                                var o = this.options.loadPath;
                                "function" == typeof this.options.loadPath && (o = this.options.loadPath([e], [t]));
                                var r = this.services.interpolator.interpolate(o, { lng: e, ns: t });
                                this.loadUrl(r, n);
                            },
                        },
                        {
                            key: "loadUrl",
                            value: function (e, t) {
                                var n = this;
                                this.options.ajax(e, this.options, function (o, r) {
                                    if (r.status >= 500 && r.status < 600) return t("failed loading " + e, !0);
                                    if (r.status >= 400 && r.status < 500) return t("failed loading " + e, !1);
                                    var i, a;
                                    try {
                                        i = n.options.parse(o, e);
                                    } catch (t) {
                                        a = "failed parsing " + e + " to json";
                                    }
                                    if (a) return t(a, !1);
                                    t(null, i);
                                });
                            },
                        },
                        {
                            key: "create",
                            value: function (e, t, n, o) {
                                var r = this;
                                "string" == typeof e && (e = [e]);
                                var i = this.options.parsePayload(t, n, o);
                                e.forEach(function (e) {
                                    var n = r.services.interpolator.interpolate(r.options.addPath, { lng: e, ns: t });
                                    r.options.ajax(n, r.options, function (e, t) {}, i);
                                });
                            },
                        },
                    ]),
                        e
                );
            })();
            ue.type = "backend";
            var le = ue,
                ce = [],
                fe = ce.forEach,
                pe = ce.slice;
            function ge(e) {
                return (
                    fe.call(pe.call(arguments, 1), function (t) {
                        if (t) for (var n in t) void 0 === e[n] && (e[n] = t[n]);
                    }),
                        e
                );
            }
            var he,
                de = /^[\u0009\u0020-\u007e\u0080-\u00ff]+$/,
                ve = function (e, t, n) {
                    var o = n || {};
                    o.path = o.path || "/";
                    var r = e + "=" + encodeURIComponent(t);
                    if (o.maxAge > 0) {
                        var i = o.maxAge - 0;
                        if (isNaN(i)) throw new Error("maxAge should be a Number");
                        r += "; Max-Age=" + Math.floor(i);
                    }
                    if (o.domain) {
                        if (!de.test(o.domain)) throw new TypeError("option domain is invalid");
                        r += "; Domain=" + o.domain;
                    }
                    if (o.path) {
                        if (!de.test(o.path)) throw new TypeError("option path is invalid");
                        r += "; Path=" + o.path;
                    }
                    if (o.expires) {
                        if ("function" != typeof o.expires.toUTCString) throw new TypeError("option expires is invalid");
                        r += "; Expires=" + o.expires.toUTCString();
                    }
                    if ((o.httpOnly && (r += "; HttpOnly"), o.secure && (r += "; Secure"), o.sameSite))
                        switch ("string" == typeof o.sameSite ? o.sameSite.toLowerCase() : o.sameSite) {
                            case !0:
                                r += "; SameSite=Strict";
                                break;
                            case "lax":
                                r += "; SameSite=Lax";
                                break;
                            case "strict":
                                r += "; SameSite=Strict";
                                break;
                            case "none":
                                r += "; SameSite=None";
                                break;
                            default:
                                throw new TypeError("option sameSite is invalid");
                        }
                    return r;
                },
                ye = function (e, t, n, o) {
                    var r = arguments.length > 4 && void 0 !== arguments[4] ? arguments[4] : { path: "/", sameSite: "strict" };
                    n && ((r.expires = new Date()), r.expires.setTime(r.expires.getTime() + 60 * n * 1e3)), o && (r.domain = o), (document.cookie = ve(e, encodeURIComponent(t), r));
                },
                me = function (e) {
                    for (var t = e + "=", n = document.cookie.split(";"), o = 0; o < n.length; o++) {
                        for (var r = n[o]; " " === r.charAt(0); ) r = r.substring(1, r.length);
                        if (0 === r.indexOf(t)) return r.substring(t.length, r.length);
                    }
                    return null;
                },
                be = {
                    name: "cookie",
                    lookup: function (e) {
                        var t;
                        if (e.lookupCookie && "undefined" != typeof document) {
                            var n = me(e.lookupCookie);
                            n && (t = n);
                        }
                        return t;
                    },
                    cacheUserLanguage: function (e, t) {
                        t.lookupCookie && "undefined" != typeof document && ye(t.lookupCookie, e, t.cookieMinutes, t.cookieDomain, t.cookieOptions);
                    },
                },
                ke = {
                    name: "querystring",
                    lookup: function (e) {
                        var t;
                        if ("undefined" != typeof window)
                            for (var n = window.location.search.substring(1).split("&"), o = 0; o < n.length; o++) {
                                var r = n[o].indexOf("=");
                                if (r > 0) n[o].substring(0, r) === e.lookupQuerystring && (t = n[o].substring(r + 1));
                            }
                        return t;
                    },
                };
            try {
                he = "undefined" !== window && null !== window.localStorage;
                window.localStorage.setItem("i18next.translate.boo", "foo"), window.localStorage.removeItem("i18next.translate.boo");
            } catch (e) {
                he = !1;
            }
            var xe,
                we = {
                    name: "localStorage",
                    lookup: function (e) {
                        var t;
                        if (e.lookupLocalStorage && he) {
                            var n = window.localStorage.getItem(e.lookupLocalStorage);
                            n && (t = n);
                        }
                        return t;
                    },
                    cacheUserLanguage: function (e, t) {
                        t.lookupLocalStorage && he && window.localStorage.setItem(t.lookupLocalStorage, e);
                    },
                };
            try {
                xe = "undefined" !== window && null !== window.sessionStorage;
                window.sessionStorage.setItem("i18next.translate.boo", "foo"), window.sessionStorage.removeItem("i18next.translate.boo");
            } catch (e) {
                xe = !1;
            }
            var Se = {
                    name: "sessionStorage",
                    lookup: function (e) {
                        var t;
                        if (e.lookupsessionStorage && xe) {
                            var n = window.sessionStorage.getItem(e.lookupsessionStorage);
                            n && (t = n);
                        }
                        return t;
                    },
                    cacheUserLanguage: function (e, t) {
                        t.lookupsessionStorage && xe && window.sessionStorage.setItem(t.lookupsessionStorage, e);
                    },
                },
                Oe = {
                    name: "navigator",
                    lookup: function (e) {
                        var t = [];
                        if ("undefined" != typeof navigator) {
                            if (navigator.languages) for (var n = 0; n < navigator.languages.length; n++) t.push(navigator.languages[n]);
                            navigator.userLanguage && t.push(navigator.userLanguage), navigator.language && t.push(navigator.language);
                        }
                        return t.length > 0 ? t : void 0;
                    },
                },
                Le = {
                    name: "htmlTag",
                    lookup: function (e) {
                        var t,
                            n = e.htmlTag || ("undefined" != typeof document ? document.documentElement : null);
                        return n && "function" == typeof n.getAttribute && (t = n.getAttribute("lang")), t;
                    },
                },
                Pe = {
                    name: "path",
                    lookup: function (e) {
                        var t;
                        if ("undefined" != typeof window) {
                            var n = window.location.pathname.match(/\/([a-zA-Z-]*)/g);
                            if (n instanceof Array)
                                if ("number" == typeof e.lookupFromPathIndex) {
                                    if ("string" != typeof n[e.lookupFromPathIndex]) return;
                                    t = n[e.lookupFromPathIndex].replace("/", "");
                                } else t = n[0].replace("/", "");
                        }
                        return t;
                    },
                },
                Re = {
                    name: "subdomain",
                    lookup: function (e) {
                        var t;
                        if ("undefined" != typeof window) {
                            var n = window.location.href.match(/(?:http[s]*\:\/\/)*(.*?)\.(?=[^\/]*\..{2,5})/gi);
                            n instanceof Array &&
                            (t =
                                "number" == typeof e.lookupFromSubdomainIndex
                                    ? n[e.lookupFromSubdomainIndex].replace("http://", "").replace("https://", "").replace(".", "")
                                    : n[0].replace("http://", "").replace("https://", "").replace(".", ""));
                        }
                        return t;
                    },
                };
            var je = (function () {
                function e(t) {
                    var n = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : {};
                    a(this, e), (this.type = "languageDetector"), (this.detectors = {}), this.init(t, n);
                }
                return (
                    u(e, [
                        {
                            key: "init",
                            value: function (e) {
                                var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : {},
                                    n = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : {};
                                (this.services = e),
                                    (this.options = ge(t, this.options || {}, {
                                        order: ["querystring", "cookie", "localStorage", "sessionStorage", "navigator", "htmlTag"],
                                        lookupQuerystring: "lng",
                                        lookupCookie: "i18next",
                                        lookupLocalStorage: "i18nextLng",
                                        caches: ["localStorage"],
                                        excludeCacheFor: ["cimode"],
                                    })),
                                this.options.lookupFromUrlIndex && (this.options.lookupFromPathIndex = this.options.lookupFromUrlIndex),
                                    (this.i18nOptions = n),
                                    this.addDetector(be),
                                    this.addDetector(ke),
                                    this.addDetector(we),
                                    this.addDetector(Se),
                                    this.addDetector(Oe),
                                    this.addDetector(Le),
                                    this.addDetector(Pe),
                                    this.addDetector(Re);
                            },
                        },
                        {
                            key: "addDetector",
                            value: function (e) {
                                this.detectors[e.name] = e;
                            },
                        },
                        {
                            key: "detect",
                            value: function (e) {
                                var t = this;
                                e || (e = this.options.order);
                                var n = [];
                                return (
                                    e.forEach(function (e) {
                                        if (t.detectors[e]) {
                                            var o = t.detectors[e].lookup(t.options);
                                            o && "string" == typeof o && (o = [o]), o && (n = n.concat(o));
                                        }
                                    }),
                                        this.services.languageUtils.getBestMatchFromCodes ? n : n.length > 0 ? n[0] : null
                                );
                            },
                        },
                        {
                            key: "cacheUserLanguage",
                            value: function (e, t) {
                                var n = this;
                                t || (t = this.options.caches),
                                t &&
                                ((this.options.excludeCacheFor && this.options.excludeCacheFor.indexOf(e) > -1) ||
                                    t.forEach(function (t) {
                                        n.detectors[t] && n.detectors[t].cacheUserLanguage(e, n.options);
                                    }));
                            },
                        },
                    ]),
                        e
                );
            })();
            je.type = "languageDetector";
            var Ce = je;
            n.d(t, "i18next", function () {
                return ee;
            }),
                n.d(t, "i18nextXHRBackend", function () {
                    return le;
                }),
                n.d(t, "languageDetector", function () {
                    return Ce;
                });
        },
    })
);
