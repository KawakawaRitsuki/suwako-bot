
cronJob = require('cron').CronJob
to_json = require('xmljson').to_json
request = require 'request'
limit   = 3
post_news = (robot, limit) ->
  url = "http://news.yahoo.co.jp/pickup/rss.xml"
  options =
    url: url
    timeout: 2000
    headers: {'user-agent': 'node title fetcher'}
  request options, (error, response, body) ->
    to_json body, (err, data) =>
      article = "今日のニュースだよ!!\n"
      for id, entry of data["rss"].channel.item when id < limit
        title = entry.title
        link  = entry.link
        article += "*#{title}*\n#{link}\n"
      robot.send {room:"#010_news"}, article

post = (robot) ->
  article = "デイリーパチンコをしよう！\nhttp://www.dmm.com/netgame/pachinko/"
  robot.send {room:"#120_dmm"}, article

posta = (robot) ->
  article = "もうデイリーパチンコはした？\nhttp://www.dmm.com/netgame/pachinko/"
  robot.send {room:"#120_dmm"}, article

module.exports = (robot) ->
  new cronJob '00 00 9,19 * * *', () =>
    post_news(robot, limit)
  , null, true, "Asia/Tokyo"
  new cronJob '00 00 9 * * *', () =>
    post(robot)
  , null, true, "Asia/Tokyo"
  new cronJob '00 00 23 * * *', () =>
    posta(robot)
  , null, true, "Asia/Tokyo"
