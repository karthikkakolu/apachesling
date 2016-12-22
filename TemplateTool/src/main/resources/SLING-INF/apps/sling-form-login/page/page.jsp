<%@ page session="false" %>
<%@ page import="javax.jcr.*,
        org.apache.sling.api.resource.Resource"
%>
<%@ taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling/1.0" %>
<sling:defineObjects />
<%
	String userID = resourceResolver.adaptTo(javax.jcr.Session.class).getUserID();
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link  rel="stylesheet"  href="../../apps/sling-form-login/common/template.css">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
	<body>

   <div class="container-fluid">
      <div class="row">
         <h4 class="name"> <%=userID%></h4>
      </div>
     <div class="row" style="float: right; padding-right: 15px;">
         <input type="submit" id="submit" disabled="disabled" />
      </div>
      <div class="row">
         <div class="col-xs-4 col-md-2 verticalLine">
            <h4>Some Data</h4>
         </div>
         <div class="col-xs-8 col-md-10">
            <form style="background-color:lightgrey;">
              
               <div class="form-group">
                  <label for="name">Name:</label>
                  <input type="text" class="form-control" id="name" placeholder="Enter Name">
               </div>
               <div class="form-group">
                  <label for="location">Location:</label>
                  <input type="text" class="form-control" id="location" placeholder="Enter location">
               </div>
               <div class="form-group">
                  <label for="Template">Template:</label>
                  <div class="dropdown">
                     <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                     Dropdown
                     <span class="caret"></span>
                     </button>
                     <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                        <li><a href="#" data-value="action">Home Page</a></li>
                        <li><a href="#" data-value="another action">Gallery Page</a></li>
                        <li><a href="#" data-value="something else here">Signup Page</a></li>
                     </ul>
                  </div>
               </div>
            </form>
            <div class="row">
            <div class="col-sm-4 col-md-2" style="height: 300px; border-right: 3px solid gray;">
            <p>Some Data</p>
            </div>
           <div class="col-sm-6 col-md-10">
          <div class="frm">
  <div class="form-group">
    <label for="name" class="col-lg-4">Name:</label>
      <div class="col-lg-8">
          <input type="text" class="form-control nameTime" name="name" id="imageName">
          <div>
          <h3>Dispaly Image here</h3>
          <span id="displayImage"></span>
          </div>
      </div>
  </div>
</div>

           
           </div>
              </div>
         </div>
      </div>
   </div>
   
   <input type="hidden" value="http://lenldtwebpr1p01.jcpenney.com/dotcom/images/" id='ImagePath' class='h_v'>
</body>


<script>
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
    
   
    alert('Time elapsed!');
     $('#displayImage').empty();
     
     $('#displayImage').append('<img id="theImg" src="" />');
     
     $('#theImg').attr("src",DisplayImage);
    }
   
    }, 1000 );
});




</script>

</html>





