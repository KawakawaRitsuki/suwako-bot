module.exports = (robot) -> 
  robot.hear /(yo|YO)$/i, (msg) ->
    msg.send "YO!"
