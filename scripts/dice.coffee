# Description
#   A Hubot script that rolls dice
#
# Configuration:
#   None
#
# Commands:
#   hubot <M>d<N> - roll M N-sided dice
#
# Author:
#   bouzuya <m@bouzuya.net> initially
#   mileszs <miles@mileszs.com> added modifier
#
module.exports = (robot) ->
  robot.respond /(\d+)d(\d+)\+?(\d+)$/i, (res) ->
    number_of_die = res.match[1]
    die_size = res.match[2]
    modifier = res.match[3] || 0
    results = []
    sum = res.send [0...number_of_die].reduce (s) ->
      results.push(s + Math.floor(Math.random() * die_size) + 1)
    , 0
    "(#{results.join(,)}+#{modifier}): #{sum+modifier}"
