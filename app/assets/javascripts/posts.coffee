jQuery(document).on "turbolinks:load", ->

  stickyTitle = ->
    if window.pageYOffset > sticky
      header.classList.add 'sticky'
    else
      header.classList.remove 'sticky'
    return

  window.onscroll = ->
    stickyTitle()
    return

  # Get the header
  header = document.getElementById('stickyTitle')
  # Get the offset position of the navbar
  sticky = header.offsetTop

  $("#toAllPostsPill, #toTravelPill1, #toTravelPill2, #toLifestylePill1, #toLifestylePill2, #toReviewsPill1, #toReviewsPill2").click ->
    $('body').scrollTo '#all-posts-pill', 800,  {offset:-70}
    # $('#hr-travel-gluten-free').addClass("red-line")


  $('.post-slider').slick
    dots: true
    infinite: true
    speed: 500
    fade: true
    cssEase: 'linear'
    adaptiveHeight: true
    draggable: true
    responsive: [
      {
        breakpoint: 576
        settings:
          arrows: false
      }
    ]

  $('.slick-carousel').slick
    autoplay: true
    autoplaySpeed: 5000
