#  <!-- JS Plugins Init. -->

jQuery(document).on "turbolinks:load", ->
  # initialization of tabs
  $.HSCore.components.HSTabs.init '[role="tablist"]'
  # initialization of go to
  $.HSCore.components.HSGoTo.init '.js-go-to'
  return

$(window).on 'load', ->
  # initialization of header
  $.HSCore.components.HSHeader.init $('#js-header')
  $.HSCore.helpers.HSHamburgers.init '.hamburger'
  # initialization of HSMegaMenu component
  $('.js-mega-menu').HSMegaMenu
    event: 'hover'
    pageContainer: $('.container')
    breakpoint: 991
  # initialization of masonry
  $('.masonry-grid').imagesLoaded().then ->
    $('.masonry-grid').masonry
      columnWidth: '.masonry-grid-sizer'
      itemSelector: '.masonry-grid-item'
      percentPosition: true
    return
  return

$(window).on 'resize', ->
  setTimeout (->
    $.HSCore.components.HSTabs.init '[role="tablist"]'
    return
  ), 200
  return
