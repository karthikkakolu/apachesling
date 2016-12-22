$(':text').on('input change', function () {
    $(':text').each(function () {
        if ($(this).val() == '') {
            $('#submit').prop('disabled', true);
            return false;
        }
        else {
            $('#submit').prop('disabled', false).addClass("color");
        }
    });
});
 

$(".dropdown-menu li a").click(function(){
  $(this).parents(".dropdown").find('.btn').html($(this).text() + ' <span class="caret"></span>');
  $(this).parents(".dropdown").find('.btn').val($(this).data('value'));
});

var delay = (function(){
  var timer = 0;
  return function(callback, ms){
    clearTimeout (timer);
    timer = setTimeout(callback, ms);
  };
})();

 
  var data,imageSrc;

$('.nameTime').keyup(function() {
    delay(function(){
    
    var imageSrc = $('#ImagePath').val();
    data = $('#imageName').val();
    
    if(data != '' || data != undefined || data != null){
     console.log(data);
    console.log(imageSrc);
    var DisplayImage = imageSrc + data + '.jpg';
    console.log(DisplayImage);
    
   
     // alert('Time elapsed!');
     $('#displayImage').empty();
     
     $('#displayImage').append('<img id="theImg" src="" />');
     
     $('#theImg').attr("src",DisplayImage);
    }
   
    }, 1000 );
});