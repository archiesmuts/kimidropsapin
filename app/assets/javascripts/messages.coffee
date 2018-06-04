# fadeOut for flash-alert messages
jQuery(document).on "turbolinks:load", ->
  setTimeout (->
    $('.flash-alert').fadeOut 'slow'
    return
  ), 3000
