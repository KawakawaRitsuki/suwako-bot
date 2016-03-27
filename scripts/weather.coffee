module.exports = (robot) ->
  robot.hear /(.*)の天気/i, (msg) ->
   switch msg.match[1]
      when '今日'
        day = 0
      when '明日'
        day = 1
      when '明後日'
        day = 2
      else
        day = 3
        break
    request = msg.http('http://weather.livedoor.com/forecast/webservice/json/v1?city=350040')
    .get()
    request (err, res, body) ->
      json = JSON.parse body
      if day == 3 then forecast = 'よくわかんないなー' else forecast = "萩の" + msg.match[1] + "の天気は「" + json['forecasts'][day]['telop'] + "」なんだってー"
      msg.send forecast
