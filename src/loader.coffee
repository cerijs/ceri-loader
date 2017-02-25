compiler = require "ceri-compiler"
loaderUtils = require "loader-utils"
module.exports = (source, map) ->
  @cacheable?()
  query = loaderUtils.parseQuery @query
  cb = @async?() || @callback
  query.js = source
  cb(null,compiler(query),map)
