exec = require('child_process').exec
module.exports = (req, res, cbf) ->
  tag = req.param 'tag'
  console.dir tag
  exec 'git log', (err, stdout, stderr) ->
    cbf null, {
      msg : 'success'
      out : stdout
      err : stderr
    }
  