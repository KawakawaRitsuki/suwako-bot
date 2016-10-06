child_process = require 'child_process'

module.exports = (robot) ->

  robot.hear /command (.*)/i, (msg) ->
    child_process.exec msg.match[1], (error, stdout, stderr) ->
      if !error
        output = stdout+''
        msg.send output
      else
        msg.send "error"
