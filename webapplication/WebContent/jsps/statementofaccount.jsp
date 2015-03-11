<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function loadXMLDoc()
{
var xmlhttp;
var config=document.getElementsByName('configselect').value;
var url="NewFile.jsp";
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","url",true);
xmlhttp.send();
}
</script>
</head>
<body>
<h2 align="center">Saved Configurations</h2>
   Choose a configuration to run: 
  <select name="configselect" width="10">
    <option selected value="select">select</option>
    <option value="Config1">config1</option>
    <option value="Config2">config2</option>
    <option value="Config3">config3</option>
  </select> 
  <button type="button" onclick='loadXMLDoc()'> Submit </button>
  <div id="myDiv">
    <h4>Get data here</h4>
  </div>
</body>
</html>