function highlightOnClick() {
  $(".fabric_design").css("border", "none");
  $(event.target).css("border", "solid 5px red");
  $fabric_id = $(event.target).attr("alt");
  var _href = $("#add_to_cart").attr("href");
  var _src = $(event.target).attr("src");
  $("#add_to_cart").attr("href", _href + "&design=" + $fabric_id + "&source=" + _src)
}

$(function() {
  $(".fabric_design").on("click", highlightOnClick);
});
