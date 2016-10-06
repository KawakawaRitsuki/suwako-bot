module.exports = (robot) ->
  robot.hear /(まるばつ)$/i, (msg) ->
    msg.send "マルバツゲームを開始したよ！"

    msg.send "　｜　｜　"
    msg.send "ー｜ー｜ー"
    msg.send "　｜　｜　"
    msg.send "ー｜ー｜ー"
    msg.send "　｜　｜　"
