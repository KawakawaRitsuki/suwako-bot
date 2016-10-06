module.exports = (robot) ->
  robot.hear /(.*)の天気/i, (msg) ->
   switch msg.match[1]
      when '今'
        day = 111
      when '今日'
        day = 0
      when '明日'
        day = 1
      when '明後日'
        day = 2
      else
        day = 3
        break

    if day == 111
      msg.send "http://map.olp.yahooapis.jp/OpenLocalPlatform/V1/static?appid=#{process.env.HUBOT_YAHOO_APP_ID}&lat=34.408117&lon=131.399088&z=13&width=640&height=480&overlay=type:rainfall|datelabel:on"
    else 
      request = msg.http('http://weather.livedoor.com/forecast/webservice/json/v1?city=350040')
      .get()
      request (err, res, body) ->
        json = JSON.parse body
        if day == 3 then forecast = 'よくわかんないなー' else forecast = "萩の" + msg.match[1] + "の天気は「" + json['forecasts'][day]['telop'] + "」なんだってー"
        msg.send forecast
