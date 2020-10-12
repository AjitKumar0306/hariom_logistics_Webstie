<html>
<body>

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open "C:\inetpub\wwwroot\hariom\hariom.mdb"

sql="INSERT INTO bookedv (uname,phno,"
sql=sql & "sour,des,com,bdate,weight)"
sql=sql & " VALUES "
sql=sql & "('" & Request.Form("fname") & "',"
sql=sql & "'" & Request.Form("ph") & "',"
sql=sql & "'" & Request.Form("sour") & "',"
sql=sql & "'" & Request.Form("des") & "',"
sql=sql & "'" & Request.Form("com") & "',"
sql=sql & "'" & Request.Form("dat") & "',"
sql=sql & "'" & Request.Form("wh") & "')"
on error resume next
conn.Execute sql,recaffected
if err<>0 then
  Response.write("<script>alert('Could Not Book Try Again'); window.location='vehical.html';</script>")
  
else
 Response.write("<script>alert('SuccessFull Booked'); window.location='vehical.html'; </script>")

end if
conn.close
%>

</body>

</html>