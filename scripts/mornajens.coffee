# Description:
#   Morna Jens!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Author:
#   Laat

module.exports = (robot) ->
  robot.hear /morna jens/i, (msg) ->
    msg.send "https://i.imgur.com/u7hjRxc.jpg"
