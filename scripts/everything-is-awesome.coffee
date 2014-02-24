# Description:
#   Everything is awesome.
#
# Configuration:
#   HUBOT_LESS_EVERYTHINGISAWESOME
#
# Commands:
#   awesome | team - reply with everything is awesome thing

module.exports = (robot) ->
  awesome = ->
    "Everything is awesome. Everything is cool when you're part of a team. EVERYTHING IS AWESOME!"

  words = ['team', 'awesome']
  regex = new RegExp('(?:^|\\s)(' + words.join('|') + ')(?:\\s|\\.|\\?|!|$)', 'i');

  unless process.env.HUBOT_LESS_EVERYTHINGISAWESOME
    robot.hear regex, (msg) ->
      msg.send awesome()
