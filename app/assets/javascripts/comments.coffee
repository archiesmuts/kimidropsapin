# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery.fn.sizeComments = ->
  size_comments = $("#list-comments").children(".comment").length
  $("#sizeComments1").text size_comments
  $("#sizeComments2").text size_comments

jQuery(document).on "turbolinks:load", ->
  $("#list-comments").sizeComments()
  $('#comments_link').click (event) ->
    event.preventDefault()
    $('#comments-section').fadeToggle()
    $("#comment_name").focus()
    $("#comment_name").val("")
    $("#comment_email").val("")
    $("#comment_body").val("")
