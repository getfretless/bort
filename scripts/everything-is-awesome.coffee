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

  robot.hear /team|awesome/i, (msg) ->
    msg.send awesome()

  unless process.env.HUBOT_LESS_EVERYTHINGISAWESOME
    robot.hear ///
      (\b([A-Z]{2,}\s+)([A-Z]{2,})\b)|
      (\b[A-Z]{5,}\b)
    ///, (msg) -> msg.send awesome()
