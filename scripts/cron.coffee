# cronJob = require('cron').CronJob
#
# module.exports = (robot) ->
# cronjob = new cronJob('* * * * * *', () =>
#   envelope = room: "#experiment"
#   request = robot.http('http://weather.livedoor.com/forecast/webservice/json/v1?city=350040')
#                  .get()
#   request (err, res, body) ->
#   json = JSON.parse body
#   robot.send envelope, "今日の天気は「" + json['forecasts'][3]['telop'] + "」なんだってー"
# )
# cronjob.start()
