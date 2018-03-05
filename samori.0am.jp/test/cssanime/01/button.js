var $box = $('.box');
var $button = $('.button');

$button.on('click', function(){
  $box.toggleClass('active');
});
