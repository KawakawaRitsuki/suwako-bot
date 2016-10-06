# Description:
#   艦これの
#
# Commands:
#   <Hour>時間 - 該当する時間の艦娘一覧を表示します。
#   <Minute>分 - 該当する時間の艦娘一覧を表示します。
#   <Hour>時間<minute>分 - 該当する時間の艦娘一覧を表示します。
#
# URLS:
#   /hubot/kenzou
#
# Notes:
#   These commands are grabbed from comment blocks at the top of each file.

module.exports = (robot) ->
  robot.hear /(\d+)時間/i, (msg) ->

    if msg.message.match(/(\d+)時間(\d+)分/i)
      match = /(\d+)時間(\d+)分/.exec(msg.message)
      switch match[1]
        when '1'
          switch match[2]
            when '10'
              msg.send "建造時間#{match[1]}時間#{match[2]}分"
              msg.send "*通常建造*"
              msg.send "練習巡洋艦「香取」"
              msg.send "香取先生だね！演習で大活躍！"
              break
            when '15'
              msg.send "建造時間#{match[1]}時間#{match[2]}分"
              msg.send "*通常建造*"
              msg.send "軽巡洋艦「長良型(鬼怒・阿武隈)」"
              msg.send "阿武隈さん改二強いよね！"
              break
            when '20'
              msg.send "建造時間#{match[1]}時間#{match[2]}分"
              msg.send "*通常建造*"
              msg.send "重巡洋艦「妙高型」"
              msg.send "みんなつよーい重巡さんだね！"
              break
            when '22'
              msg.send "建造時間#{match[1]}時間#{match[2]}分"
              msg.send "*通常建造*"
              msg.send "軽巡洋艦「夕張」"
              msg.send "４スロ軽巡だね！使い道いっぱい！"
              break
            when '25'
              msg.send "建造時間#{match[1]}時間#{match[2]}分"
              msg.send "*通常建造*"
              msg.send "重巡洋艦「高雄型」"
              msg.send "ぱーんぱかぱーん！"
              break
            when '30'
              msg.send "建造時間#{match[1]}時間#{match[2]}分"
              msg.send "*通常建造*"
              msg.send "重巡洋艦「利根型・最上型(三隈除く)」"
              msg.send "利根型は航空巡洋艦になれるんだよ！"
              break
        when '2'
          switch match[2]
            when '20'
              msg.send "建造時間#{match[1]}時間#{match[2]}分"
              msg.send "*通常建造*"
              msg.send "水上機母艦「千歳型」"
              msg.send "水上機母艦だって！先制爆撃とか先制雷撃ができるんだって！"
              break
            when '30'
              msg.send "建造時間#{match[1]}時間#{match[2]}分"
              msg.send "*大型艦建造*"
              msg.send "強襲揚陸艦「あきつ丸」"
              msg.send "あきつ丸だって！いろんな装備を持ってきてくれるよ！"
              break
            when '40'
              msg.send "建造時間#{match[1]}時間#{match[2]}分"
              msg.send "*通常建造*"
              msg.send "軽空母「祥鳳型」"
              msg.send "あの……私、玉子焼きいっぱい焼いたんだけど……たべりゅ?"
              break
            when '50'
              msg.send "建造時間#{match[1]}時間#{match[2]}分"
              msg.send "*通常建造*"
              msg.send "軽空母「龍驤」"
              msg.send "かなりまな板だよこれ！"
              break
        when '3'
          switch match[2]
            when '20'
              msg.send "建造時間#{match[1]}時間#{match[2]}分"
              msg.send "*大型艦建造*"
              msg.send "潜水空母「伊401」"
              msg.send "しおいさんだって！潜水艦なのに時間長くてややこしいねー！"
              break
        when '4'
          switch match[2]
            when '10'
              msg.send "建造時間#{match[1]}時間#{match[2]}分"
              msg.send "*通常建造*"
              msg.send "正規空母「飛龍・蒼龍」"
              msg.send "にっこにっこ二航戦！"
              msg.send "http://pic.prepics-cdn.com/hirarin/33407340.jpeg"
              break
            when '20'
              msg.send "建造時間#{match[1]}時間#{match[2]}分"
              msg.send "*通常建造*"
              msg.send "戦艦「扶桑型」"
              msg.send "正規空母「加賀」"
              msg.send "不幸だわ...一航戦の誇り！"
              break
            when '30'
              msg.send "建造時間#{match[1]}時間#{match[2]}分"
              msg.send "*通常建造*"
              msg.send "戦艦「伊勢型」"
              msg.send "正規空母「赤城」"
              msg.send "どれも航空戦が得意な艦娘だね！"
              break
        when '6'
          switch match[2]
            when '40'
              msg.send "建造時間#{match[1]}時間#{match[2]}分"
              msg.send "*大型艦建造*"
              msg.send "装甲空母「大鳳」"
              msg.send "大鳳ちゃんだね！装甲甲板（意味深）"
        else
          msg.send "そんな時間は無い！らしいよ笑"
          break
    else
      switch msg.match[1]
        when '1'
          msg.send "建造時間#{msg.match[1]}時間"
          msg.send "*通常建造*"
          msg.send "軽巡洋艦「天龍型・球磨型・長良型・川内型」"
          msg.send "重巡洋艦「古鷹型・青葉型」"
          msg.send "*大型艦建造*"
          msg.send "軽巡洋艦「阿賀野型」"
          msg.send "の艦娘らしいよ〜。阿賀野さんほしいねえ"
        when '2'
          msg.send "建造時間#{msg.match[1]}時間"
          msg.send "*通常建造*"
          msg.send "軽空母「鳳翔」"
          msg.send "鳳翔さんだって〜。"
        when '3'
          msg.send "建造時間#{msg.match[1]}時間"
          msg.send "*通常建造*"
          msg.send "軽空母「飛鷹」"
          msg.send "飛鷹さんだって〜。"
        when '4'
          msg.send "建造時間#{msg.match[1]}時間"
          msg.send "*通常建造*"
          msg.send "戦艦「金剛型」"
          msg.send "金剛型デース！誰かな？！"
        when '5'
          msg.send "建造時間#{msg.match[1]}時間"
          msg.send "*通常建造*"
          msg.send "戦艦「長門型」"
          msg.send "*大型艦建造*"
          msg.send "戦艦「Bismarck」(Z1/Z3秘書艦時)"
          msg.send "どっちもつよーい戦艦だね！"
        when '6'
          msg.send "建造時間#{msg.match[1]}時間"
          msg.send "*通常建造*"
          msg.send "正規空母「翔鶴型」"
          msg.send "翔鶴型だってー！これは強いね！"
        when '7'
          msg.send "1/2/3/4/5/6時間ときて7時間もあるかと思ったら無いんだよねー"
        when '8'
          msg.send "建造時間#{msg.match[1]}時間"
          msg.send "*大型艦建造*"
          msg.send "戦艦「大和型」"
          msg.send "大和型だってー！どっちだろ！どっちだろ？！"
        else
          msg.send "そんな時間は無い！らしいよ笑"
          break

  robot.hear /(\d+)分/i, (msg) ->

    if msg.message.match(/(\d+)時間/)

    else
      switch msg.match[1]
        when '17'
          msg.send "建造時間#{msg.match[1]}分"
          msg.send "*大型艦建造*"
          msg.send "潜水艦「まるゆ」"
          msg.send "入渠時間が短くて助かるね！"
          break;
        when '18'
          msg.send "建造時間#{msg.match[1]}分"
          msg.send "*通常建造*"
          msg.send "駆逐艦「睦月型」"
          msg.send "残念だけど卯月は出ないみたい！"
          break;
        when '20'
          msg.send "建造時間#{msg.match[1]}分"
          msg.send "*通常建造*"
          msg.send "駆逐艦「吹雪型・綾波型・暁型・初春型」"
          msg.send "提督好みの駆逐艦が出るかな？！"
        when '22'
          msg.send "建造時間#{msg.match[1]}分"
          msg.send "*通常建造*"
          msg.send "駆逐艦「白露型(春雨除く)・朝潮型(朝雲・山雲除く)」"
          msg.send "潜水艦「伊号潜水艦(伊401・伊19除く)」"
          msg.send "はっちゃんとか来たら嬉しいね！"
        when '24'
          msg.send "建造時間#{msg.match[1]}分"
          msg.send "*通常建造*"
          msg.send "駆逐艦「陽炎型(陽炎・不知火・黒潮・雪風・秋雲)・Z1(旗艦Z3時のみ)・Z3(旗艦Z1時のみ)」"
          msg.send "雪風ちゃん来ないかな？！"
        when '30'
          msg.send "建造時間#{msg.match[1]}分"
          msg.send "*通常建造*"
          msg.send "駆逐艦「島風」"
          msg.send "島風ちゃんだって！早いよ！"
        else
          msg.send "そんな時間は無い！らしいよ笑"
          break
