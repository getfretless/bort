# Description:
#   Sportsball!
#
# Configuration:
#   HUBOT_LESS_SPORTSBALL
#
# Commands:
#   sport - reply with sports commentary

module.exports = (robot) ->

  comments = [
    "Basically, there's three grabbers, three taggers, five twig runners, and a player at Whackbat. Center tagger lights a pine cone and chucks it over the basket and the whack-batter tries to hit the cedar stick off the cross rock. Then the twig runners dash back and forth until the pine cone burns out and the umpire calls hotbox. Finally, you count up however many score-downs it adds up to and divide that by nine.",
    "We sportsed our best and scored points, but the other team was sportsing, too, and they scored even more points.",
    "If you can dodge traffic, you can dodge a ball!",
    "Cinderella story. Outta nowhere. A former greenskeeper, now, about to become the Masters champion. It looks like a mirac... It's in the hole! It's in the hole! It's in the hole!",
    "So, I tell them I'm a pro jock, and who do you think they give me? The Dalai Lama, himself. Twelfth son of the Lama. The flowing robes, the grace, bald... striking.",
    "May our feet be swift; may our bats be mighty; may our balls be plentiful."
  ]

  words = ['sport', 'sports', 'game', 'basketball', 'football', 'hockey', 'dodgeball', 'golf']
  regex = new RegExp('(?:^|\\s)(' + words.join('|') + ')(?:\\s|\\.|\\?|!|$)', 'i');

  unless process.env.HUBOT_LESS_SPORTSBALL
    robot.hear regex, (msg) ->
      msg.send msg.random comments
