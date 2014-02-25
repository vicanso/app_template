
module.exports =
  schema : 
    # 作者
    author : 
      type : String
      require : true
      index : true
    # 书名
    name : 
      type : String
      require : true
      index : true
    # 分类，保存在数组中，第一个最细化的分类
    category :
      type : Array
      index : true
    # 是否完成状态，1表示已完成
    status : 
      type : Number
      default : 0
    # 书的描述
    desc : String
    # 总点击量
    click : 
      default : 0
      type : Number
      index : true
    # 周点击
    weekClick :
      default : 0
      type : Number
    # 是否人手修改过，为以后预留后台编辑功能
    modified : 
      type : Boolean
      default : false
    # 更新时间
    updatedAt : String
    # 更新加权
    updateWeight : 
      default : 0
      type : Number
    # 字数
    wordTotal :
      type : Number
      default : 0
    # 收藏总数
    collectTotal :
      type : Number
      default : 0
    # 喜欢总数
    likeTotal : 
      type : Number
      default : 0
    # 推荐总数
    recommendTotal : 
      type : Number
      default : 0
    # 章节内容
    chapters : []
  indexes : [
    [
      {
        category : 1
        click : 1
      }
    ]
    [
      {
        updatedAt : -1
      }
    ]
    [
      {
        updatedAt : -1
        updateWeight : -1
      }
    ]
  ]