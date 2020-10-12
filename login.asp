        	<html>
			<head>
			</head>
			<body>
			<%
			set conn=Server.CreateObject("ADODB.Connection")
			conn.Provider="Microsoft.Jet.OLEDB.4.0"
			conn.Open(Server.Mappath("hariom.mdb"))
			set rs = Server.CreateObject("ADODB.recordset")
		Dim name
		name="admin"
   
        sql="select fname,pswd from signup where fname='"& request.form("phno") & "' And pswd='"& request.form("pass") & "'"
        rs.Open sql, conn
        if not rs.EOF then
            session("uname") = rs("fname")
			
            
			if request.form("phno") = name then 
			Response.Write("<script> alert('Welcome Admin'); window.location='admin.asp';</script>")
			
			else 
			
			Response.write("<script>alert('Welcome User'); window.location='home.html';</script>")
			

			 end if
        else 
            Response.Write("<script> alert('Inavlid Login');window.location='login.html';</script>")
			
        
    end if
%>
</body>
</html>