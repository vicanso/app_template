modules = ['jquery', 'underscore', 'backbone', 'statistics']
seajs.use modules, ($, _, Backbone, statistics) ->
  _.delay ->
    seajs.emit 'loadComplete' if CONFIG.env == 'development'
    statistics.submit() if CONFIG.env == 'production'