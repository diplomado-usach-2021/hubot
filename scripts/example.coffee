# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md
module.exports = (robot) ->
  hellos = ['Hi', 'Hello', 'Ciao', 'Grettings', 'Hola']
  robot.hear /hola/i, (res) ->
    res.send res.random hellos
  robot.hear /cómo estai?/i, (res) ->
    res.send "filete"
  robot.hear /que dia es/i, (res) ->
    res.send "viernes"
  robot.hear /devops/i, (res) ->
    res.send "un nombre bonito para el cargo"
  robot.hear /desplegar/i, (res) ->
    res.send "ni que fuera avión"
  robot.hear /3/i, (res) ->
    res.send "tres"
  robot.hear /mes actual/i, (res) ->
    res.send "mayo"
  robot.hear /9/i, (res) ->
    res.send "se escribe nueve"
  robot.hear /7/i, (res) ->
    res.send "seven eleven"
  robot.hear /40/i, (res) ->
    res.send "y pa la cola"
  robot.hear /los cabros/i, (res) ->
    room = "diplomado-equipo-2"
    robot.messageRoom room, "En este equipo hay buenos inges"
  robot.hear /who is the (.*)/i, (res) ->
    rolType = res.match[1]
    if rolType is "frontend"
      res.reply "Rodrigo"
    else if rolType is "backend"
      res.reply "Victor"
    else if rolType is "sre"
      res.reply "Nicolás"
    else if rolType is "qa"
      res.reply "Jesús"
    else
      res.reply "No tenemos ese rol"
  robot.hear /miembros del equipo/i, (res) ->
    res.send " - Rodrigo Catalán\n - Victor Menares\n - Nicolás Arancibia\n - Jesús Quintero"
  robot.hear /Docker/i, (res) ->
    res.send "https://es.wikipedia.org/wiki/Docker_(software)"
  robot.hear /Git/i, (res) ->
    res.send "https://es.wikipedia.org/wiki/Git"
  robot.hear /Kubernetes/i, (res) ->
    res.send "https://es.wikipedia.org/wiki/Kubernetes"
  robot.hear /Github/i, (res) ->
    res.send "https://es.wikipedia.org/wiki/GitHub"
  robot.hear /Jenkins/i, (res) ->
    res.send "https://es.wikipedia.org/wiki/Jenkins"
  robot.hear /Test Unitario/i, (res) ->
    res.send "https://es.wikipedia.org/wiki/Prueba_unitaria"
  robot.hear /Scrum/i, (res) ->
    res.send "https://es.wikipedia.org/wiki/Scrum_(desarrollo_de_software)"
  robot.hear /AWS/i, (res) ->
    res.send "https://es.wikipedia.org/wiki/Amazon_Web_Services"
  robot.hear /Azure/i, (res) ->
    res.send "https://es.wikipedia.org/wiki/Microsoft_Azure"
  #
  # robot.hear /I like pie/i, (res) ->
  #   res.emote "makes a freshly baked pie"
  #
  # lulz = ['lol', 'rofl', 'lmao']
  #
  # robot.respond /lulz/i, (res) ->
  #   res.send res.random lulz
  #
  # robot.topic (res) ->
  #   res.send "#{res.message.text}? That's a Paddlin'"
  #
  #
  # enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
  # leaveReplies = ['Are you still there?', 'Target lost', 'Searching']
  # robot.enter (res) ->
  #   res.send res.random enterReplies
  # robot.leave (res) ->
  #   res.send res.random leaveReplies
  #
  # answer = process.env.HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING
  #
  # robot.respond /what is the answer to the ultimate question of life/, (res) ->
  #   unless answer?
  #     res.send "Missing HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING in environment: please set and try again"
  #     return
  #   res.send "#{answer}, but what is the question?"
  #
  # robot.respond /you are a little slow/, (res) ->
  #   setTimeout () ->
  #     res.send "Who you calling 'slow'?"
  #   , 60 * 1000
  #
  # annoyIntervalId = null
  #
  # robot.respond /annoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #     return
  #
  #   res.send "Hey, want to hear the most annoying sound in the world?"
  #   annoyIntervalId = setInterval () ->
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #   , 1000
  #
  # robot.respond /unannoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "GUYS, GUYS, GUYS!"
  #     clearInterval(annoyIntervalId)
  #     annoyIntervalId = null
  #   else
  #     res.send "Not annoying you right now, am I?"
  #
  #
  # robot.router.post '/hubot/chatsecrets/:room', (req, res) ->
  #   room   = req.params.room
  #   data   = JSON.parse req.body.payload
  #   secret = data.secret
  #
  #   robot.messageRoom room, "I have a secret: #{secret}"
  #
  #   res.send 'OK'
  #
  # robot.error (err, res) ->
  #   robot.logger.error "DOES NOT COMPUTE"
  #
  #   if res?
  #     res.reply "DOES NOT COMPUTE"
  #
  # robot.respond /have a soda/i, (res) ->
  #   # Get number of sodas had (coerced to a number).
  #   sodasHad = robot.brain.get('totalSodas') * 1 or 0
  #
  #   if sodasHad > 4
  #     res.reply "I'm too fizzy.."
  #
  #   else
  #     res.reply 'Sure!'
  #
  #     robot.brain.set 'totalSodas', sodasHad+1
  #
  # robot.respond /sleep it off/i, (res) ->
  #   robot.brain.set 'totalSodas', 0
  #   res.reply 'zzzzz'
