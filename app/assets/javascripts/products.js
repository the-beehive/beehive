function highlightOnClick() {
  $(".fabric-design").css("border", "none");
  $(event.target).css("border", "solid 5px red");
  $fabric_id = $(event.target).attr("alt");
  var _href = $("#add-to-cart").attr("href");
  var _src = $(event.target).attr("src");
  $("#add-to-cart").attr("href", _href + "&design=" + $fabric_id + "&source=" + _src)
}

$(function() {
  $(".fabric-design").on("click", highlightOnClick);
});
