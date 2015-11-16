// On click remove styling from all fabric design images and then highlight the current one.
// Also alter the add to cart link to represent the design selected.
function highlightOnClick() {
  $(".fabric-design").css({"border": "none", "outline": "none"});
  $(event.target).css({"border": "solid 0.25em white", "outline": "solid 0.25em #FFAF44"});
  $fabric_id = $(event.target).attr("alt");
  var _href = $("#add-to-cart").attr("href");
  var _src = $(event.target).attr("src");
  $("#add-to-cart").attr("href", _href + "&design=" + $fabric_id + "&source=" + _src);
  $("#add-to-cart").unbind('click').css({"background": "#FFC577"});
}

// On page load, deactivate the add to cart link until a fabric design is selected.
$(function() {
  $(".fabric-design").on("click", highlightOnClick);
  $("#add-to-cart").click(function(e){
     e.preventDefault();
     e.stopPropagation();
  }).css({"background": "lightgray", "border": "none"});
});
