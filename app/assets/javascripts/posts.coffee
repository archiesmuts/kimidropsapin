jQuery(document).on "turbolinks:load", ->
  $('#left').click ->
    $('#left-col').toggleClass 'bg-stripes'
