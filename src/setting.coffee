isProductionMode = process.env.NODE_ENV == 'production'

setting = 
  mongodb : 
    dbName : 'xiaoshuo'
    uri : 'mongodb://vicanso:MY_MONGODB_JENNY_TREE@localhost:10020/xiaoshuo'
  redis : 
    name : 'vicanso'
    uri : 'redis://localhost:10010'
    pwd : 'MY_REDIS_JENNY_TREE'
  novel : '/vicanso/data/novel'
  cover : '/vicanso/data/cover'
if isProductionMode
  setting.novel = '/data/novel'
  setting.cover = '/data/cover'

module.exports = setting