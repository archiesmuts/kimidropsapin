jQuery(document).on "turbolinks:load", ->
  $("#toAllPostsPill, #toTravelPill1, #toTravelPill2, #toLifestylePill1, #toLifestylePill2, #toReviewsPill1, #toReviewsPill2").click ->
    $('body').scrollTo '#all-posts-pill', 800,  {offset:-70}
    # $('#hr-travel-gluten-free').addClass("red-line")
