<html>
<body>

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open "C:\inetpub\wwwroot\hariom\hariom.mdb"

sql="INSERT INTO vehical (vno,vname,"
sql=sql & "vtype,vahavl)"
sql=sql & " VALUES "
sql=sql & "('" & Request.Form("no") & "',"
sql=sql & "'" & Request.Form("name") & "',"
sql=sql & "'" & Request.Form("type") & "',"
sql=sql & "'" & Request.Form("stat") & "')"
on error resume next
conn.Execute sql,recaffected
if err<>0 then
  Response.write("<script>alert('Vehical Alredy Registered'); window.location='vehidetails.asp'; </script>")
  
else
 Response.write("<script>alert('Vehical Added SuccessFull');  window.location='vehidetails.asp';</script>")

end if
conn.close
%>

</body>

</html>