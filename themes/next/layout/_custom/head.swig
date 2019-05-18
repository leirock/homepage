{#
Custom head.
#}
{#点击邮件中的链接跳转至相应评论#}
<script>
if(window.location.hash){
  var checkExist = setInterval(function() {
    if ($(window.location.hash).length) {
      $('html, body').animate({scrollTop: $(window.location.hash).offset().top-90}, 1000);
      clearInterval(checkExist);
    }
  }, 100);
}
</script>

<script>
	function GetUrlRelativePath() {
		var url = document.location.toString();
		var arrUrl = url.split("//");
		var start = arrUrl[1].indexOf("/");
		var relUrl = arrUrl[1].substring(start);//stop省略，截取从start开始到结尾的所有字符
		if(relUrl.indexOf("?") != -1){
　　　　　　relUrl = relUrl.split("?")[0];
		}
		return relUrl;
	}
	var relUrl = GetUrlRelativePath()
	if (relUrl.indexOf('/books/')>=0) {
		document.write('<meta name="referrer" content="never" />');
	}
</script>