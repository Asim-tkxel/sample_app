updateCountdown = ->
    remaining = 140 - $('#micropost_content').val().length
    value = 
      if remaining > -1 
      then $('.countdown').text(remaining + ' characters remaining') 
      else $('.countdown').text(Math.abs(remaining) + ' characters over')

$(document).ready ->
  $(".countdown").text (140 + ' characters remaining' ) 

  ("#micropost_content").on("change keyup keydown keypress paste drop",
                             updateCountdown)



 