fs = require 'fs'
path = require 'path'

module.exports =

  license: """
    /*
      backbone-http.js 0.0.1
      Copyright (c) 2013 Vidigami - https://github.com/vidigami/backbone-http
      License: MIT (http://www.opensource.org/licenses/mit-license.php)
      Dependencies: Backbone.js and Underscore.js.
    */
    """

  start: fs.readFileSync(path.join(__dirname, 'require.js'), {encoding: 'utf8'})

  end: """
    if (typeof exports == 'object') {
      module.exports = require('backbone-http/lib/index');
    } else if (typeof define == 'function' && define.amd) {
      define('backbone-http', ['backbone-orm', 'superagent'], function(){ return require('backbone-http/lib/index'); });
    } else {
      var Backbone = this.Backbone;
      if (!Backbone && (typeof window.require == 'function')) {
        try { Backbone = window.require('backbone'); } catch (_error) { Backbone = this.Backbone = {}; }
      }
      Backbone.HTTP = require('backbone-http/lib/index');
    }
    }).call(this);
    """
