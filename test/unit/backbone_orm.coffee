module.exports = (options, callback) ->
  test_parameters =
    sync: require('../../lib/sync')
    before: require('../lib/build_mocks')

  require('backbone-orm/test/generators/all')(test_parameters, callback)
