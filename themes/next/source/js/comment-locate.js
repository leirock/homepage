// 点击邮件中的链接跳转至相应评论

if(window.location.hash){
  var checkExist = setInterval(function() {
    if ($(window.location.hash).length) {
      $('html, body').animate({scrollTop: $(window.location.hash).offset().top-90}, 1000);
      clearInterval(checkExist);
    }
  }, 100);
}