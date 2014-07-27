jtRedis = require 'jtredis'
logger = require('./logger') 'redis'

###*
 * init 初始化redis
 * @param  {[type]} setting [description]
 * @return {[type]}         [description]
###
init = (setting) ->
  jtRedis.configure 'redis', setting
  client = jtRedis.getClient setting.name
  client.on 'error', (err) ->
    logger.error err if err
  client.on 'profiling', (data) ->
    logger.info data
###*
 * getClient 获取redis client
 * @param  {[type]} name 初始化时的client名字
 * @return {[type]}      [description]
###
getClient = (name) ->
  jtRedis.getClient name
module.exports.init = init
module.exports.getClient = getClient