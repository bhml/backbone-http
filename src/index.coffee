###
  backbone-http.js 0.0.1
  Copyright (c) 2013 Vidigami - https://github.com/vidigami/backbone-http
  License: MIT (http://www.opensource.org/licenses/mit-license.php)
  Dependencies: Backbone.js and Underscore.js.
###

# ensure the client symbols are resolved
require('./client_utils').loadDependencies([
  {symbol: '_', path: 'lodash', alias: 'underscore', optional: true}, {symbol: '_', path: 'underscore'}
  {symbol: 'Backbone', path: 'backbone'}
  {symbol: 'superagent', path: 'superagent'}
  {symbol: 'Backbone.ORM', path: 'backbone-orm'}
])

module.exports =
  sync: require './sync'
