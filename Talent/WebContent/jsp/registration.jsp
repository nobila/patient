<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>registration</title>
<link rel="stylesheet" type="text/css" href="/Etourism/css/mystyle.css">
<script src="/Etourism/js/validation.js"></script>
<script src="/Etourism/bootfiles/jquery-3.1.1.min.js"></script>  

 <script type="text/javascript">
var c=0;


function main()
{
	var username=document.getElementById("txtusername").value;
	var userlastname=document.getElementById("txtuserl").value;
	var userage=document.getElementById("txtuserage").value;
	var userdob=document.getElementById("txtuserdob").value;
	var useremail=document.getElementById("txtuseremail").value;
    var userph=document.getElementById("txtuserph").value;
      var gender=document.getElementById("rdos").value;
	// alert(userid+userpass);
if(checkEmpty(username)==false)
	{
	//alert("First-name needed");
	document.getElementById("msgid").innerHTML="First-name needed";
	document.getElementById("txtusername").focus();
	return false;
	}
if(checkEmpty(userlastname)==false)
{
//alert("userpass needed");
	document.getElementById("msgid").innerHTML="Last-name needed";
document.getElementById("txtuserl").focus();
return false;
}


if(checkEmpty(userage)==false)
{
//alert("userpass needed");
	document.getElementById("msgid").innerHTML="Patient-age needed";
document.getElementById("txtuserage").focus();
return false;
}

if(checkEmpty(userdob)==false)
{
//alert("userpass needed");
	document.getElementById("msgid").innerHTML="Patient-DOB needed";
document.getElementById("txtuserdob").focus();
return false;
}

if(checkEmpty(useremail)==false)
{
//alert("userpass needed");
	document.getElementById("msgid").innerHTML="user email needed";
document.getElementById("txtuseremail").focus();
return false;
}
if(checkEmpty(userph)==false)
{
//alert("userpass needed");
	document.getElementById("msgid").innerHTML="user ph no. needed";
document.getElementById("txtuserph").focus();
return false;
}
if(checkLength(userph,10)==false)
{
document.getElementById("msgid").innerHTML="user ph no. less than 10 digits";
document.getElementById("txtuserph").focus();
return false;
}


var chkar=document.getElementsByName("rdos");

if(checkCtrl(chkar)==false)
{
	document.getElementById("msgid").innerHTML="Select Gender!!";
//	document.getElementById("chkhobby").focus();
	return false;
	
	}




 return true;
	}
	</script> 
	
	

</head>
<body style="margin: 0px" onload="blink()">
<div style="background-color:teal ;width:100%;height:1000px;float:left;">
<div style="background-color:green;width:100%;height:120px;float:left;">
<h1 id="h1">Registration</h1>
<div id="divmsg" style="width:100px;height:30px;">

</div>
</div>
<div style="background-color:silver; width:35%; height:375px;float:left;margin-left: 400px;margin-top: 100px;border-radius:5px ">
<form onsubmit="return main()" action="/Talent/registration" method="post">
<table class="global" align="center" style="margin-top: 20px" cellpadding=7 border=2>
<tr>
<th>first name:</th>
<th colspan=3><input type="text" id="txtusername" name="txtusername"  placeholder="enter Patient first name"></th>
</tr>
<tr>
<th>Last name:</th>
<th colspan=3><input type="text" id="txtuserl" name="txtuserl"  placeholder="enter patient last name"></th>
</tr>
<tr>
<th>Age :</th>
<th colspan=3><input type="number" id="txtuserage" name="txtuserage"  placeholder="enter age"></th>
</tr>
<tr>
<th>DOB :</th>
<th colspan=3><input type="text" id="txtuserdob" name="txtuserdob"  placeholder="enter user DOB."></th>
</tr>
<tr>
<th>Email:</th>
<th colspan=3><input type="email" id="txtuseremail" name="txtuseremail"  placeholder="enter user email"></th>
</tr>
<tr>
<th>Ph no. :</th>
<th colspan=3><input type="number" id="txtuserph" name="txtuserph"  placeholder="enter user ph no."></th>
</tr>
<tr>
<th>Gender:</th>
<th><input type="radio" id="rdosmale" name="rdos">Male</th>
<th><input type="radio" id="rdosfemale" name="rdos">Female</th>
</tr>


<tr>
<td align="center" colspan=2>
<button type="submit" style="border-radius:5px ">Submit</button>
</td>
<td align="center" colspan=2>
<button type="reset" style="border-radius:5px ">Reset</button>
</td>
</tr>
</table>
</form>
</div>

<div id="msgid" style="width:20%;float:left;margin-top:50px;margin-left:800px;color:white;"></div>
</div>
</body>
</html>