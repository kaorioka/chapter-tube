$(function () {

  var href = $(".movie--info-box__title").data("chapter-id")
  $(".movie--chapter").each(function (i, ele) {
    if ($(ele).data("chapter-id") === href) {
      $(this).addClass("activ");
      $(".activ .play_chapter").addClass("fa-play");
    } else {
      $(this).removeClass("activ");
    }
  });

});