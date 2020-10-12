<html>
<head>
<link rel="Stylesheet" type="text/css" href="admin.css">
</head>
<body>
<div id="logo">
<div id="sp1"><a href="login.html" style="margin-left:90%;"><span id="sp0">Logout</span></a></p>
<div id="sp2"><img src="Logo.png" width="90px" height="90px"><br></div>
<div id="sp3"><h1>HARIOM LOGISTICS<SUP>&trade;</sup></h1></div>
</div>
<div id="nav">
<div class="navigation">
  <ul class="mainmenu">
    <li><a href="admin.asp">Home</a></li>
    <li><a href="">User</a>
	   <ul class="submenu">
      
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
	    <li><a href="">Parsel</a>
      <ul class="submenu">
        <li><a href="parseld.asp">Parsel Details</a></li>
		
      </ul>
    </li>
		    <li><a href="">Vehical</a>
      <ul class="submenu">
        <li><a href="vehidetails.asp">Vehical Details</a></li>
				<li><a href="addvehi.asp">Add Vehical Details</a></li>
		<li><a href="reqvehi.asp">Required Vehical Details</a></li>
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
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("hariom.mdb"))

set rs = Server.CreateObject("ADODB.recordset")
rs.Open "SELECT dname,mobile,address,licid,jdate,gen,sal,status FROM driver", conn
%>

<table border="1"  style="margin-left:25%; margin-top:55px; width:Auto;">
<th>Name</th><th>Mobile Number</th><th>Address</th><th>Licence ID</th><th>Joined Date</th><th>Gender</th><th>Salary</th><th>Available</th>
<%do until rs.EOF%>

    <tr>
	
    <%for each x in rs.Fields%>
       <td><%Response.Write(x.value)%></td>
    <%next
    rs.MoveNext%>
    </tr>
<%loop
rs.close
conn.close
%>

</table>
</div>
  </body>
</html>