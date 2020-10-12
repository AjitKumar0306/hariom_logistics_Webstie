<html>
<body>

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open "C:\inetpub\wwwroot\hariom\hariom.mdb"

sql="INSERT INTO signup (fname,lname,"
sql=sql & "mobile,city,state,email,gen,addres,pswd,status)"
sql=sql & " VALUES "
sql=sql & "('" & Request.Form("fname") & "',"
sql=sql & "'" & Request.Form("lname") & "',"
sql=sql & "'" & Request.Form("mobile") & "',"
sql=sql & "'" & Request.Form("city") & "',"
sql=sql & "'" & Request.Form("state") & "',"
sql=sql & "'" & Request.Form("email") & "',"
sql=sql & "'" & Request.Form("gen") & "',"
sql=sql & "'" & Request.Form("address") & "',"
sql=sql & "'" & Request.Form("password") & "',"
sql=sql & "'" & Request.Form("stat") & "')"
on error resume next
conn.Execute sql,recaffected
if err<>0 then
  Response.write("<script>alert('User Alredy Registered');  window.location='userdetail.asp';</script>")
  
else
 Response.write("<script>alert('User Added SuccessFull');  window.location='userdetail.asp';</script>")

end if
conn.close
%>

</body>

</html>