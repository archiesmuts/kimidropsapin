jQuery(document).on "turbolinks:load", ->
  # $("#toAllPostsPill, #toTravelPill1, #toTravelPill2, #toLifestylePill1, #toLifestylePill2, #toReviewsPill1, #toReviewsPill2").click ->
  #   $('body').scrollTo '#all-posts-pill', 800,  {offset:-70}
  #   # $('#hr-travel-gluten-free').addClass("red-line")

  $('.album').slick
    centerMode: true
    centerPadding: '60px'
    slidesToShow: 3
    dots: true
    speed: 500
    responsive: [
      {
        breakpoint: 768
        settings:
          arrows: false
          centerMode: true
          centerPadding: '40px'
          slidesToShow: 2
      }
      {
        breakpoint: 576
        settings:
          arrows: false
          centerMode: true
          centerPadding: '40px'
          slidesToShow: 1
      }
    ]

    # slidesToShow: 2
    # slidesToScroll: 2
    # dots: true
    # infinite: true
    # speed: 500
