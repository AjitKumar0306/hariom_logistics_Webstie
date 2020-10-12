<html>
<body>

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open "C:\inetpub\wwwroot\hariom\hariom.mdb"

sql="INSERT INTO driver (dname,mobile,"
sql=sql & "address,licid,"
sql=sql & "jdate,sal,gen,status)"
sql=sql & " VALUES "
sql=sql & "('" & Request.Form("name") & "',"
sql=sql & "'" & Request.Form("mobile") & "',"
sql=sql & "'" & Request.Form("address") & "',"
sql=sql & "'" & Request.Form("lic") & "',"
sql=sql & "'" & Request.Form("jd") & "',"
sql=sql & "'" & Request.Form("sal") & "',"
sql=sql & "'" & Request.Form("gen") & "',"
sql=sql & "'" & Request.Form("stat") & "')"
on error resume next
conn.Execute sql,recaffected
if err<>0 then
  Response.write("<script>alert('Driver Alredy Registered');  window.location='driverdetail.asp';</script>")
  
else
 Response.write("<script>alert('Driver Detail Added SuccessFull');  window.location='driverdetail.asp';</script>")

end if
conn.close
%>

</body>

</html>