function highlightOnClick() {
  $(".fabric-design").css({"border": "none", "box-shadow": "none"});
  $(event.target).css({"border": "solid 0.25em white", "box-shadow": "0px 0px .5em .5em #FFAF44"})
  $fabric_id = $(event.target).attr("alt");
  var _href = $("#add-to-cart").attr("href");
  var _src = $(event.target).attr("src");
  $("#add-to-cart").attr("href", _href + "&design=" + $fabric_id + "&source=" + _src);
  $("#add-to-cart").unbind('click').css({"background": "#FFAF44", "border": "black"});
}

$(function() {
  $(".fabric-design").on("click", highlightOnClick);
  $("#add-to-cart").click(function(e){
     e.preventDefault();
     e.stopPropagation();
  }).css({"background": "lightgray", "border": "none"});
});
