<script type="text/javascript">
// Automatically jump to https
  if (location.protocol !== 'https:' && location.hostname !== '127.0.0.1') {
    location.href = location.href.replace('http:', 'https:');
  }

// Locate comment position
  if(window.location.hash){
    var checkExist = setInterval(function() {
      if ($(window.location.hash).length) {
        $('html, body').animate({scrollTop: $(window.location.hash).offset().top-90}, 1000);
        clearInterval(checkExist);
      }
    }, 100);
  }
</script>