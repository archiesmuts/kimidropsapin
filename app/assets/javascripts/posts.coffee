jQuery(document).on "turbolinks:load", ->
  $('#left').click ->
    $('#left-col').toggleClass 'bg-bubbles bg-stripes'
    #Adds 'a', removes 'b' and vice versa

  $('#right').click ->
    $('#right-col').toggleClass 'bg-wallpaper bg-squares-in-squares'
    #Adds 'a', removes 'b' and vice versa
