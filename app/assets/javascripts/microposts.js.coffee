updateCountdown = ->
    remaining = 140 - $('#micropost_content').val().length
    value = if remaining > -1 then $('.countdown').text(remaining + ' characters remaining') else $('.countdown').text(Math.abs(remaining) + ' characters over') 


$(document).ready ->
  $(".countdown").text (140 + ' characters remaining' ) 



  $("#micropost_content").change updateCountdown
  $("#micropost_content").keyup updateCountdown
  $("#micropost_content").keydown updateCountdown
  $("#micropost_content").keypress updateCountdown


 