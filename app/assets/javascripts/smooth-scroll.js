$(function () {


  $('a[href^="#"]').click(function () {
    var speed = 500;
    var headerHight = 55; //ヘッダの高さ
    var href = $(this).attr("href");
    var target = $(href == "#" || href == "" ? 'html' : href);
    var position = target.offset().top - headerHight; //ヘッダの高さ分位置をずらす
    $("html, body").animate({ scrollTop: position }, speed, "swing");
    return false;
  });


});