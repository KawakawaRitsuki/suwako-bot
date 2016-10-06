module.exports = (robot) ->

  robot.hear /(おはよう|おはよー|おはー|おっはー|おはよ|もーにん|ぐも|おはやう)/i, (msg) ->
    msg.send "おはようございます！あーうー"

  robot.hear /(こんにちは|こんちは)/i, (msg) ->
    msg.send "こんにちはー！あーうー"

  robot.hear /(こんばんは)/i, (msg) ->
    msg.send "こんばんはー！あーうー"

  robot.hear /(おやすみ|おやす|ぐな)/i, (msg) ->
    msg.send "おやすみないさーい！あーうー"

  robot.hear /(おめ)/i, (msg) ->
    msg.send "おめでとうございますっ！"

  robot.hear /(ただいま|只今|ただ今)/i, (msg) ->
    msg.send "おかえりなさいっ！ですっ！"
