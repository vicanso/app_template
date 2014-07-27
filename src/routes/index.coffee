_ = require 'underscore'

# pageContentHandler = require '../helpers/page_content_handler'
fileImporter = require '../helpers/file_importer'
# sync = require '../helpers/sync'
requireTree = require 'require-tree'
controllers = requireTree '../controllers'


sessionParser = require('../helpers/session') {
  key : 'novel'
  secret : 'jenny&tree'
}


routeInfos = [
  {
    route : '/seajs/files'
    type : 'post'
    handler : fileImporter.setSeajsFiles
  }
  {
    route : '/statistics'
    type : 'post'
    handler : controllers.statistics
  }
  {
    route : '/deploy'
    handler : controllers.deploy
  }
  {
    route : '/'
    template : 'index'
    middleware : [fileImporter.importer]
    handler : controllers.home
  }
]


module.exports = routeInfos