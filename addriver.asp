<html>
<head>
<link rel="Stylesheet" type="text/css" href="admin.css">
</head>
<body>
<div id="logo">
<div id="sp1"><a href="" style="margin-left:90%;"><span id="sp0">Logout</span></a></p>
<div id="sp2"><img src="Logo.png" width="90px" height="90px"><br></div>
<div id="sp3"><h1>HARIOM LOGISTICS<SUP>&trade;</sup></h1></div>
</div>
<div id="nav">
<div class="navigation">
  <ul class="mainmenu">
    <li><a href="admin.asp">Home</a></li>
    <li><a href="">User</a>
	   <ul class="submenu">
        <li><a href="activateuser.asp">Activate User</a></li>
        <li><a href="userdetail.asp">User Details</a></li>
        <li><a href="adduser.asp">Add New User</a></li>
      </ul>
	  </li>
    <li><a href="">Driver</a>
      <ul class="submenu">
        <li><a href="adddriver.asp">Add New Driver</a></li>
        <li><a href="driverdetail.asp">Driver Details</a></li>
      </ul>
    </li>
  </ul>
</div>
</div>
<div>
<div class="container1">
  <ul class="ul">
  <li class="li">
    <input type="radio" id="f-option" name="selector">
    <label for="f-option">UPDATE</label>
    
    <div class="check"></div>
  </li>
  </ul>
  </div>
  <div class="container2">
  <ul class="ul">
  <li class="li">
    <input type="radio" id="s-option" name="selector">
    <label for="s-option">DELETE</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
</ul>
</div>
<div id="search"> 
<form method="post">
  <input type="text" class="textbox" placeholder="Search">
  <input title="Search" value= "&#x1F50D;" type="submit" class="button">
</form>
</div>

<div id="cont">
<form method="post" action="singup.asp" onsubmit="validation();">
<div class="box1" >
<h1>REGISTER</h1>

<input type="text" name="fname" placeholder="First Name" id="fname"  class="email" onkeyup="lettersOnly(this)" required/><br>
<input type="text" name="lname" placeholder="Last Name" id="lname"  class="email" onkeyup="lettersOnly(this)" required /><br>
<input type="text" name="mobile" id="phone" placeholder="Phone No"  class="email" onkeyup="numbersOnly(this)" required /><br>
<input type="text"  name="city" placeholder="City" id="city"  class="email" onkeyup="lettersOnly(this)" required /><br>
<input type="text" name="state" placeholder="State" id="state"  class="email" onkeyup="lettersOnly(this)" required /><br>
<input type="text" name="email" placeholder="Email" id="email" class="email"  required /><br>
<p>Gender &nbsp;&nbsp;&nbsp;
<input type="radio" name="gen" value="m" required/>Male
<input type="radio" name="gen" value="f" required />Female</p><br>
<input type="text" name="address" placeholder="Address"  class="email" required /><br><br>
<input type="password" name="password" id="pass"  placeholder="Password"  class="email" required /><br>
<input type="password" id="cpass"  placeholder="Confirm Password"  class="email" required /><br>
  
<div id="bbt"><input type="submit" class="btn" Value="Add User"></div>

</table>
</div>
</div>

<script>
function lettersOnly(input) {
    var regex = /[^a-z]/gi;
    input.value = input.value.replace(regex, "");
}

function numbersOnly(input) {
    var regex = /[^0-9]/gi;
    input.value = input.value.replace(regex, "");
}

function validation()
{
	var reg = /^([A-za-z0-9_\-\.]){1,}\@([A-za-z_\-\.]){1,}\.([A-za-z]{2,4})$/;
	var add = document.getElementById("email").value;
	var ph = document.getElementById("phone").value;
	if(reg.test(add) == false)
	{
	alert('Invalid Email Address');
	add.focus();
	return false;
	}

if(ph.length > 10  || ph.length < 10)
{
	alert("Invalid Phone Number");
	ph.focus(); 
	return false;
	
}
	
	var pass = document.getElementById("pass").value;
	var cpass = document.getElementById("cpass").value;
	
	if(pass != cpass)
	{
		alert('Password Does Not Match');
		return false;
	}
	

	
}
</script>
  </body>
</html>