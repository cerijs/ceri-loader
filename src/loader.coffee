compiler = require "ceri-compiler"
loaderUtils = require "loader-utils"
module.exports = (source, map) ->
  @cacheable?()
  options = loaderUtils.getOptions(@) || {}
  cb = @async?() || @callback
  options.js = source
  compiler(options).then (result) =>
    cb(null,result,map)
  return null
