define 'statistics', ['jquery', 'underscore'], (require, exports, module) ->
  $ = require 'jquery'
  _ = require 'underscore'
  timeLine = window.TIME_LINE
  exports.submit = ->
    timeLine.timeEnd 'js'
    $.ajax {
      url : '/statistics'
      type : 'post'
      data : 
        timeLine : timeLine.getLogs()
    }
  return