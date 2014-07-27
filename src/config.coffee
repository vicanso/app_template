module.exports.getENV = ->
  process.env.NODE_ENV || 'development'

module.exports.getMongodbConfig = ->
  {
    dbName : 'xiaoshuo'
    uri : 'mongodb://vicanso:MY_MONGODB_JENNY_TREE@localhost:10020/xiaoshuo'
  }

module.exports.getRedisConfig = ->
  {
    name : 'vicanso'
    uri : 'redis://localhost:10010'
    pwd : 'MY_REDIS_JENNY_TREE'
  }

module.exports.getStaticHost = ->
  'localhost'