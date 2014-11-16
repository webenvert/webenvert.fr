$('.scroll').on('click', function () {
  var section = $(this).attr("href");
  $('body, html').animate({scrollTop: $(section).offset().top}, 'slow');
  return false;
});
