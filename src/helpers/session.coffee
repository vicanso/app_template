redis = require './redis'
_ = require 'underscore'
express = require 'express'
async = require 'async'
cookieParser = express.cookieParser()


module.exports = (options = {}) ->
  if !options.store
    RedisStore = require('connect-redis') express
    options.store = new RedisStore {
      client : redis.getClient 'vicanso'
      ttl : 30 * 60
    }
  sessionParser = express.session options
  (req, res, next) ->
    async.series [
      (cbf) ->
        cookieParser req, res, cbf
      (cbf) ->
        sessionParser req, res, cbf
    ], next