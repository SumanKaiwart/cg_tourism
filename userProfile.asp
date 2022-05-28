<html>
<head>
<style>
body{font-family:Arial; Helvetica,sans-serif;}
input[type=text],input[type=password],input[type=date],input[type=email],input[type=number]{
 width : 100%;
 padding : 12px 20px;
 margin : 8px 0;
 display : inline block;
 border : 1px solid #ccc;
 box-sizing : border-box;
}
input[type=text]:focus,input[type=password]:focus,input[type=date]:focus,input[type=email]:focus,input[type=number]:focus{
  background-color : #ddd;
  outline : none;
 }
 .modal{
    display:none;
	position : fixed;
	z-index : 1;
	left : 0;
	top : 0;
	width : 100%;
    height : 100%;
    overflow : auto;
    background-color: rgb(0,0,0);
	background-color: rgba(0,0,0,0.4);
    padding-top : 60px;	
 }
.modal-content{
  background-color : #fefefe;
  margin : 5% auto 15% auto;
  border : 1px solid #888;
  width : 80px;
}
.close{
   position : absolute;
   right : 25px;
   top : 0
   color:#000;
   font-size : 35px;
   font-weight : bold;
}
.close:hover,
.close:focus{
  color : red;
  cursor : pointer;
}

.animate{
 -webkit-animation : animatezoom 0.6s;
 animation : animatezoom 0.6s;

@-webkit-keyframes animatezoom {
 from {-webkit-transform : scale(0)}
 to {-webkit-transform : scale(1)}
}
@media screen and (max-width : 300px){
 spanpsw{
	display : block;
	float : none;
 }
 .cancelbtn{
   width : 100%;
 }
}
</style>
</head>
<body>
<h2>Profiel update</h2>
<button onclick="document.getElementById('id01').style.display='block'" style = "width:auto;">Profile</button>
<div id = "id01" class = "modal">
  <form class = "modal-content animate" action = "#" method ="post">
  <span onclick="document.getElementById('id01').style.display = 'none' " class = "close" title =" close">&times;</span>
  <div class = "container">
  <label for = "uname"><b> NAME:</b></label>
  <input type="text" name = "uname" placeholder="Enter User name" required ><br>
  <label for = "uname"><b>GENDER:</label>
  <select name="gender"><option>Male</option><option>Female</option></select><br><br>
  <label for = "uname"><b>Password:</label>
  <input type="password" name = "password" ><br>
  <label for = "uname"><b>DOB:</label>
  <input type="date" name = "dob"><br>
  <label for = "uname"><b>ADDRESS:</label>
  <input type="text" name = "address" placeholder="Enter Address" ><br>
  <label for = "uname"><b>LOCATION:</label>
  <input type="text" name = "location" placeholder="Enter location" ><br>
  <label for = "uname"><b>E-MAIL:</label>
  <input type="email" name = "email"  placeholder="abc@gmail.com" ><br>
  <label for = "uname"><b>MOBILE NUMBER:</label>
  <input type="number" name="mobile" min="7000000000" max="9999999999" title="valid 10 digit number" ><br>
  <input type="submit" value = "update"><br><br>
</form>
  </div>
  <script>
  var model = document.getElementById('id01');
  
  window.onclick = function (event){
   if (event.target == model){
      model.style.display = "none";
   }
  }
 </script>
 <h2> update your profile</h2>
 </body>
 </html>