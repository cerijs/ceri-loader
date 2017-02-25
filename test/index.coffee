chai = require "chai"
should = chai.should()
loader = require "../src/loader.coffee"

describe "ceri-loader", ->
  it "should work", (done) ->
    context = {
      query: '?v=1'
      callback: (noop, src) ->
        src.should.equal """
        module.exports = {
          structure: function(){return [this.el("div",null,[])]}
        }
        """
        done()
    }
    loader.call context, """
      module.exports = {
        structure: template("<div></div>")
      }
    """
  it "should work with version provided in js", (done) ->
    context = {
      callback: (noop, src) ->
        src.should.equal """
        module.exports = {
          structure: function(){return [this.el("div",null,[])]}
        }
        """
        done()
    }
    loader.call context, """
      module.exports = {
        structure: template(1, "<div></div>")
      }
    """
