window.fayeSub = (channel) ->
  window.fayeClient.subscribe("/#{channel}", fayePub)
  if $("##{channel}.channel").length == 0
    newChannel = $("<div id=\"#{channel}\" class=\"channel\"><h1>#{channel}</h1><hr></div>")
    newChanOption = $("<option name=\"#{channel}\">#{channel}</option>")
    $("#channels").append newChannel
    $("select#channel").append newChanOption
  
window.fayePub = (channel, message) ->
  window.fayeClient.publish("/#{channel}", 
    'channel': channel
    'text'   : message)
  
window.fayeReceive = (message) ->
  messageRow = $("<tr><td>#{message.channel}</td><td>#{message.text}</td></tr>")
  $("##{channel}.channel table").append messageRow

$ ->
  window.fayeClient = new Faye.Client('/faye')
  window.fayeClient.subscribe('/default', fayeReceive)
  
  $("form#channel").submit (event) ->
    element = $("form#channel input#channel")
    fayeSub element.val()
    element.val('')
    false
  
  $("form#message").submit (event) ->
    input = $("form#message input#message")
    fayePub $("form#message select#channel").val(), input.val()
    input.val('')
    false
  
