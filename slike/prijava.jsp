<%@page import="rs.Kupac"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Prijava</title>

<style type="text/css">

@charset "utf-8";
/* CSS Document */

/*------------------------------------------------------------------------------------------------------------------------*/
													/*RESPONSIVE ZA DESKTOP!*/
/*------------------------------------------------------------------------------------------------------------------------*/

@media (min-width: 769px) and (max-width: 2000px){

body,div,h1,h2,h3,h4,h5,h6,p,ul,ol,li,dl,dt,img,form{ 
	margin:0;
	padding:0;
	border:0;
}

/*Dimenzije cele strane. Za futer!*/

#container{
	height:100%;
	width:100%;
}

header{ 
	height:110px;
	background: #036;
	width:100%;
	z-index:10;
	position:fixed;
}

	/*Dimenzije boje iza prvog diva!*//*-------------------------------------------------------------------------*/

#content {
	width:100%;
	position:relative;
	padding-top:100px;
	background:url(slike/noise-bg.png);
	height:100%;
}
	/*ZA NOVI MENI!!!!!*/
	
/*Prvi UL - ceo meni (prvi nivo)*/
ul {
	list-style-type:none;
	margin:0;
	padding:0;
	position: absolute;
	/*Centrirano*/
	margin-left:25%;
	margin-top:4%;
}

/*Pravljenje horizontalne liste sa razmacima*/
li {
	display:inline-block;
	float: left;
}

/*Stilizovanje teksta u celom meniju! Stilizovanje pozadine u prvom nivou!*/
li a {
	display:block;
	min-width:140px;
	height: 50px;
	text-align: center;
	line-height: 50px;
	font-family:Tahoma, Geneva, sans-serif;
	color: white;
	background: #0066FF;
	text-decoration: none;
}

/*Promena boje pozadine i teksta prelazenjem kursora preko prvog nivoa.*/
li:hover a {
	background: #0000CC;
	color: #FFFFFF;
}

/*Stilizovanje padajuceg menija.*/
li:hover ul a {
	background: #0033CC;
	color: #FFFFFF;
	height: 40px;
	line-height: 40px;
}

/*Stilizovanje padajuceg menija prelasnom kursora preko njega.*/
li:hover ul a:hover {
	background: #003399;
	color: #FFFFFF;
}

/*Sakrivanje padajuceg menija.*/
li ul {
	display: none;
}

/*Pravljenje padajuceg menija vertikalno, kao i podesavanje njegove velicine (duzina, sirina,...)*/
li ul li {
	display: block;
	float: none;
	position:relative;
	right:168px;
	bottom:34px;
}

/*Sprecavanje teksta da se prelomi*/
li ul li a {
	width: auto;
	min-width: 100px;
	padding: 0 20px;
}

/*Prikazivanje padajuceg menija prelaskom kursora preko prvog nivoa.*/
ul li a:hover + .hidden, .hidden:hover {
	display: block;
}

/*Podesavanje logoa!*/
#logo{ 
	position:absolute;
	width:24%;
	height:65%;
	bottom:48px;
	left:39%;
}

/*Podesavanje futera!*/
.futer{ 
	position:relative;
	bottom:0px;
	height:60px;
	width:100%;
	background: #036;
	color:white;
}

.futer p{ 
	position:relative;
	top:25px;
	margin-left:0px;
}



/*-------------------------------------------------------------------------------------------------------------------------*/
															/*SADRZAJ!*/
/*-------------------------------------------------------------------------------------------------------------------------*/

.prvidiv{
	height:100%;
	width:90%;
	top:5%;
	margin-bottom:10%;
	position:relative;
	left:3.5%;
	background-color:#FFFFFF;
	padding:20px;
	border:2px solid #CCCCCC;
	box-shadow: 0px 0px 15px black;
	border-radius:25px;
	font-family:Tahoma, Geneva, sans-serif;
	font-size:20px;
	text-align:justify;
}

.sat{
	position:absolute;
	margin-right:30%;
	top:35px;}


.prvinaslov{
	color:#0099FF;
	text-align:center;
}

strong{
	color:#0099FF;
}

.plavaboja{
	color:#0099FF;
}

.logovanje{
		border: 1px solid black;
		width: 48%;
		height: 400px;
}
.logovanje2
	{
		width: 100%;
		height: 100%;
	}
	
.registracija{
		border: 1px solid black;
		width: 48%;
		height: 400px;
		margin-left: 49%;
		position: absolute;
		top: 68%;
	}
.registracija2{
		width: 100%;
		height: 100%;
	}
#formatabletmobilni
{
	display: none;	
}
#logindugme
{
	position: absolute;
	top:76%;
	width: 100px;
	height: 40px;
	background: url(slike/papir.png);
	border-radius: 15px;
	color:white;
	font-weight:bold;
	font-size: 16px;
}
#logindugme:hover
{
	position: absolute;
	top:77%;
	width: 110px;
	height: 45px;
	background: url(slike/papir.png);
	border-radius: 15px;
	color:white;
	font-weight:bold;
	font-size: 18px;
	box-shadow: 3px; 
}
.tooltip4 .textic {
    visibility: hidden;
    position:fixed;
    width: 20%;
    background-color: dodgerblue;;
    color: white;
    text-align: center;
    font-size:24px;
    border-radius: 6px;
    top:95%;
    right:1%;
    border:1px solid skyblue;
   
    /* Position the tooltip */
    position: absolute;
    z-index: 1;
}

.tooltip4:hover .textic {
    visibility: visible;
}
.textkorpa
{
	margin-left:5px;
	text-align: left;
	font-size: 18px
}

}


/*Stilizovanje menija, odnosno dugmeta, labele za meni!*/
.show-menu {
	cursor:pointer;
	font-family: Tahoma, Geneva, sans-serif;
	text-decoration: none;
	color: #FFFFFF;
	background: #666666;
	text-align: center;
	padding: 10px 0;
	display: none;
}

/*Promena boje prilikom prelaska kursora reko dugmeta.*/
.show-menu:hover{
	color: #000000;
	background: #0066FF;
}

/*Sakrivanje checkbox-a.*/
input[type=checkbox]{
    display: none;
}

/*Prikazivanje menija kada je nevidljivi checkbox cekiran!!!*/
input[type=checkbox]:checked ~ #menu{
    display: block;
}

/*------------------------------------------------------------------------------------------------------------------------*/
													/*RESPONSIVE ZA TABLET!*/
/*------------------------------------------------------------------------------------------------------------------------*/

@media (min-width: 481px) and (max-width: 768px) {

body,div,h1,h2,h3,h4,h5,h6,p,ul,ol,li,dl,dt,img,form{ 
	margin:0;
	padding:0;
	border:0;
}

/*Dimenzije cele strane. Za futer!*/

#container{
	height:100%;
	width:100%;
}

header{ 
	height:50px;
	background: #036;
	width:100%;
	z-index:10;
	position:relative;
}

/*Dimenzije za pozadinu iza prvog diva.*/

#content {
		width:100%;
		position:relative;
		top:0px;
		background:url(slike/noise-bg.png);
		bottom:80%;
		height:100%;
}
	
	/*ZA NOVI MENI!!!!!*/
	
/*Prvi UL - ceo meni (prvi nivo) - ODNOSNO, postavljanje dugmeta preko koga se pojavljuje meni na vrh stranice.*/
ul {
	position: static;
	display: none;
	bottom:100px;
}

	/*Postavljanje pune sirine menija!*/
	ul li, li a {
		width: 100%;
	}

/*Stilizovanje teksta u celom meniju! Stilizovanje pozadine u prvom nivou!*/
li a {
	display:block;
	min-width:140px;
	height: 50px;
	text-align: center;
	line-height: 50px;
	font-family: Tahoma, Geneva, sans-serif;
	color: white;
	background: #0066FF;
	text-decoration: none;
}

/*Promena boje pozadine i teksta prelazenjem kursora preko prvog nivoa.*/
li:hover a {
	background: #0000CC;
	color: #FFFFFF;
}

/*Stilizovanje padajuceg menija.*/
li:hover ul a {
	background: #0033CC;
	color: #FFFFFF;
	height: 40px;
	line-height: 40px;
}

/*Stilizovanje padajuceg menija prelasnom kursora preko njega.*/

li:hover ul a:hover {
	background: #003399;
	color: #FFFFFF;
}

/*Sakrivanje padajuceg menija.*/
li ul {
	display: none;
}

/*Pravljenje padajuceg menija vertikalno*/
li ul li {
	display: block;
	float: none;
}

/*Sprecavanje teksta da se prelomi!*/
li ul li a {
	width: auto;
	min-width: 100px;
	padding: 0 20px;
}

/*Prikazivanje padajuceg menija prelaskom kursora preko prvog nivoa.*/
ul li a:hover + .hidden, .hidden:hover {
	display: block;
}

/*Prikazivanje dugmeta "Navigacioni Meni"*/
	.show-menu {
		display:block;
	}

#logo{
	display:none;
	position:relative;
	width:50%;
	height:100px;
	margin-left:0px;
	top:50px;
}

/*Podesavanje futera!*/
.futer{ 
	width:100%;
	height:60px;
	position:relative;
	background: #036;
	color:white;
}

.futer p{ 
	position:relative;
	top:25px;
	font-size:1em;
}


/*-------------------------------------------------------------------------------------------------------------------------*/
															/*SADRZAJ!*/
/*-------------------------------------------------------------------------------------------------------------------------*/

.prvidiv{
	height:100%;
	background-color:#FFFFFF;
	width:85%;
	padding:20px;
	top:5%;
	margin-bottom:10%;
	position:relative;
	left:5%;
	border:1px solid #CCCCCC;
	box-shadow: 0px 0px 10px #000000;
	border-radius:25px;
	font-family:Tahoma, Geneva, sans-serif;
	font-size:16px;
	text-align:justify;
}

.sat{
	display:none;
	position:absolute;
	margin-right:30%;
	top:35px;}

.prvinaslov{
	color:#0099FF;
	text-align:center;
}
strong{
	color:#0099FF;
}
#korpica
{
	display: none;
}
#glavni
{
	display: none;
}
#formatabletmobilni
{
	text-align: center;
}
.tabletinput
{
	width: 50%;
	font-size: 24px;
}
#logindugme
{
	position: absolute;
	top:26%;
	width: 100px;
	height: 40px;
	background: url(slike/papir.png);
	border-radius: 15px;
	color:white;
	font-weight:bold;
	font-size: 16px;
}
#logindugme:hover
{
	position: absolute;
	top:27%;
	width: 110px;
	height: 45px;
	background: url(slike/papir.png);
	border-radius: 15px;
	color:white;
	font-weight:bold;
	font-size: 18px;
	box-shadow: 3px; 
}
.tooltip4 .textic {
	display: none;
}

.tooltip4:hover .textic {
	display: none;
}
.textkorpa
{
	display: none;
}

}

/*------------------------------------------------------------------------------------------------------------------------*/
													/*RESPONSIVE ZA MOBILNI!*/
/*------------------------------------------------------------------------------------------------------------------------*/

@media (min-width: 200px) and (max-width: 480px){

body,div,h1,h2,h3,h4,h5,h6,p,ul,ol,li,dl,dt,img,form{ 
	margin:0;
	padding:0;
	border:0;
}

#container{
	height: 100%;
	width:100%;
}

header{ 
	height:50px;
	background:#036;
	width:100%;
	z-index:10;
	position:relative;
}
	
#content {		
	width:100%;
	position:relative;
	top:0px;
	background: #FFFFFF;
	bottom:80%;
	padding-bottom:20px;
	height:100%;
}
		
	/*ZA NOVI MENI!!!!!*/
	
/*Prvi UL - ceo meni (prvi nivo) - ODNOSNO, postavljanje dugmeta preko koga se pojavljuje meni na vrh stranice.*/
ul {
	position: static;
	display: none;
	bottom:100px;
}

	/*Postavljanje pune sirine menija!*/
	ul li, li a {
		width: 100%;
	}

/*Stilizovanje teksta u celom meniju! Stilizovanje pozadine u prvom nivou!*/
li a {
	display:block;
	min-width:140px;
	height: 50px;
	text-align: center;
	line-height: 50px;
	font-family: Tahoma, Geneva, sans-serif;
	color: white;
	background: #0066FF;
	text-decoration: none;
}

/*Promena boje pozadine i teksta prelazenjem kursora preko prvog nivoa.*/
li:hover a {
	background: #0000CC;
	color: #FFFFFF;
}

/*Stilizovanje padajuceg menija.*/
li:hover ul a {
	background: #0033CC;
	color: #FFFFFF;
	height: 40px;
	line-height: 40px;
}

/*Stilizovanje padajuceg menija prelasnom kursora preko njega.*/

li:hover ul a:hover {
	background: #003399;
	color: #FFFFFF;
}

/*Sakrivanje padajuceg menija.*/
li ul {
	display: none;
}

/*Pravljenje padajuceg menija vertikalno*/
li ul li {
	display: block;
	float: none;
}

/*Sprecavanje teksta da se prelomi!*/
li ul li a {
	width: auto;
	min-width: 100px;
	padding: 0 20px;
}

/*Prikazivanje padajuceg menija prelaskom kursora preko prvog nivoa.*/
ul li a:hover + .hidden, .hidden:hover {
	display: block;
}

/*Prikazivanje dugmeta "Navigacioni Meni"*/
	.show-menu {
		display:block;
	}

#logo{ 
	display: none;
	position:relative;
	width:300px;
	height:100px;
	margin-left:0px;
	top:50px;
}


.futer{ 
	bottom:0px;
	height:60px;
	position:relative;
	background: #036;
	color:white;
}

.futer p{ 
	position:relative;
	font-size:14px;
	top:25px;
}



/*-------------------------------------------------------------------------------------------------------------------------*/
															/*SADRZAJ!*/
/*-------------------------------------------------------------------------------------------------------------------------*/

.prvidiv{
	height:99% auto;
	background-color:#FFFFFF;
	padding-left:20px;
	padding-right:20px;
	position:relative;
	font-family:Tahoma, Geneva, sans-serif;
	font-size:14px;
	text-align:justify;
}

.sat{
	display:none;
	position:absolute;
	margin-right:30%;
	top:35px;}

.prvinaslov{
	color:#0099FF;
	text-align:center;
}

strong{
	color:#0099FF;
}
#korpica
{
	display: none;
}
#glavni
{
	display: none;
}
#formatabletmobilni
{
	text-align: center;
}
.tabletinput
{
	width: 70%;
	font-size: 16px;
}
#logindugme
{
	position: absolute;
	top:24%;
	width: 100px;
	height: 40px;
	background: url(slike/papir.png);
	border-radius: 15px;
	color:white;
	font-weight:bold;
	font-size: 16px;
}
#logindugme:hover
{
	position: absolute;
	top:25%;
	width: 110px;
	height: 45px;
	background: url(slike/papir.png);
	border-radius: 15px;
	color:white;
	font-weight:bold;
	font-size: 18px;
	box-shadow: 3px; 
}
.tooltip4 .textic {
	display: none;
}

.tooltip4:hover .textic {
	display: none;
}
.textkorpa
{
	display: none;
}


}
#glavni
{
	text-align:center;
	margin-left: 10%;
	background-color: dodgerblue;
	border: 1px solid black;
	border-radius:50px;
	width: 80%;
	height: 52%;
}
table
{
	margin-top:1px;
	width: 100%;
}
td
{
	border: 1px solid skyblue;
	border-bottom-left-radius:50px;
	border-bottom-right-radius:50px;
	border-top-left-radius:50px;
	border-top-right-radius:50px;
}

.regdugme
{
	position: relative;
	margin-top:10px;
	width: 120px;
	height: 40px;
	background: url(slike/papir.png);
	color:white;
	font-weight:bold;
	font-size: 16px;
	border-radius: 15px;
}
.regdugme:hover
{
	position: relative;
	margin-top:10px;
	width: 140px;
	height: 40px;
	background: url(slike/papir.png);
	color:white;
	font-weight:bold;
	font-size: 18px;
	border-radius: 15px;
}
#ulogovaniime
{
	text-align: center;
	font-size: 24px;
	
}
#odjavadugme
{
	margin-left:45%;
	margin-top:2%;
	position:absolute;
	width: 120px;
	height: 40px;
	background: url(slike/papir.png);
	color:white;
	font-weight:bold;
	font-size: 16px;
	border-radius: 15px;
}
#odjavadugme:hover
{
	margin-left:44.6%;
	width: 130px;
	height: 41px;
	background: url(slike/papir.png);
	color:white;
	font-weight:bold;
	font-size: 18px;
	border-radius: 15px;
}
.slicice:hover
{
	border: 1px solid black;
}


.tooltip1 .logtext {
    visibility: hidden;
    width: 140px;
    background-color: dodgerblue;;
    color: white;
    text-align: center;
    font-size:15px;
    border-radius: 6px;
    margin-top:90px;
    margin-left:-15px;
    border:1px solid skyblue;
   
    /* Position the tooltip */
    position: absolute;
    z-index: 1;
}

.tooltip1:hover .logtext {
    visibility: visible;
}
.tooltip2 .regtext {
    visibility: hidden;
    width: 140px;
    background-color: dodgerblue;;
    color: white;
    text-align: center;
    font-size:15px;
    border-radius: 6px;
    margin-top:10px;
    margin-left:5px;
    border-bottom-left-radius:90px;
    border-top-left-radius:90px;
    border:1px solid skyblue;
   
    /* Position the tooltip */
    position: absolute;
    z-index: 1;
}

.tooltip2:hover .regtext {
    visibility: visible;
}

#userslika
{
	margin-left: 30%;
	width: 40%;
}
.tooltip3 .odjavatext {
    visibility: hidden;
    width: 240px;
    background-color: dodgerblue;;
    color: white;
    text-align: center;
    font-size:15px;
    border-radius: 6px;
    margin-top:25px;
    margin-left:56%;
    border-bottom-left-radius:90px;
    border-top-left-radius:90px;
    border:1px solid skyblue;
   
    /* Position the tooltip */
    position: absolute;
    z-index: 1;
}

.tooltip3:hover .odjavatext {
    visibility: visible;
}
#korpica
{
	width: 6%;
	position: absolute;
	z-index: 10;
	top: 40%;
	right: 8%;
	border-radius: 100px;
}
#korpica:hover
{
	border-radius: 100px;
	border: 1px solid black;
	width: 5.95%;
}

</style>
<link rel="icon" href="slike/plavo A.jpg">
</head>
 <%
    HttpSession sesija=request.getSession();
    
   Kupac k1=(Kupac)sesija.getAttribute("ulogovan");
    
  
    if(k1==null){
    %>
<body>


<div id="container">
	<header>
    
     <div class="sat">   
<iframe scrolling="no" frameborder="no" clocktype="html5" style="overflow:hidden;border:0;margin:0;padding:0;width:200px;height:40px;"src="http://www.clocklink.com/html5embed.php?clock=004&timezone=GMT0200&color=blue&size=120&Title=&Message=&Target=&From=2017,1,1,0,0,0&Color=green"></iframe>
</div>


      <p> <a href="index.jsp"><img src="slike/AviatoPCShop-Logo-beli-PNG.png" id="logo" alt="logo"></a></p>
      
<label for="show-menu" class="show-menu">Navigacioni Meni</label>
	<input type="checkbox" id="show-menu" role="button">
		<ul id="menu">
		<li><a href="index.jsp">Pocetna Stranica</a></li>
		<li><a href="proizvodi.jsp">Proizvodi</a></li>
        <li><a href="onama.jsp">O Nama</a></li>
		<li><a href="kontakt.jsp">Kontakt</a></li>
		<li><a href="prijava.jsp">Prijavite Se</a></li>
	</ul>
	
	<div class="tooltip4">
	<img id="korpica" src="slike/korpa2.gif">
  <span class="textic">
  
  	Vaša korpa <br><hr color="skyblue">
  	<p class="textkorpa">Proizvodi:</p> <br>
  	<p style="margin-bottom: 5px;" class="textkorpa">Vaš račun: </p>
  </span>
</div>

</header>
 
<div id="content">
<br><br>
	<div class="prvidiv">
	<div id="glavni">

		
 <table align="center">
			<tr>
				<td colspan="5"><p style="text-align:center; font-weight: bold; color:white; font-size: 50px;"><i><b>STRANA ZA PRIJAVU</b></i></p></td>
			</tr>
			<tr>
				<td><a href="https://www.linkedin.com/in/aviato-pc-shop/"><img class="slicice" style="border-radius:10px;background-color:white; margin:5px 5px 5px 5px;  width: 60px" src="slike/Linkedin-PNG-HD.png"></a></td>
				<td><a href="https://www.facebook.com/Aviato-PC-Shop-688618757999748/"><img class="slicice" style="margin:5px 5px 5px 5px;  width: 70px" src="slike/facebook-logo-png-9.png"></a></td>
				<td><a href="https://www.instagram.com/aviatopcshop/"><img class="slicice" style="margin:5px 5px 5px 5px; width: 60px" src="slike/instagram_PNG10.png"></a></td>
				<td><a href="https://twitter.com/Aviato_PC_Shop"><img class="slicice" style="border-radius:10px;background-color:white;margin:5px 5px 5px 5px; width: 60px" src="slike/Twitter.png"></a></td>
				<td><a href="http://ep-2017-housestark.azurewebsites.net/index.php/sr/"><img class="slicice" style="height: 40%" src="slike/AviatoPCShop-Logo-beli-PNG.png"></a></td>
			</tr>
			<tr>
			<td colspan="2">
			<div class="logovanje2">
				<h3 align="center" style="margin-bottom:10px;color:white;">Prijavite se</h3>
				
				<form action="Controller" method="post">
<input type="text" name="username_kupca" placeholder="Korisnicko ime"><br>
<input type="password" name="password_kupca" placeholder="Password"><br>


<div class="tooltip1">
	<input type="submit" id="logindugme" value="UlogujSe" name="akcija">
  <span class="logtext">Samo za postojeće korisnike.</span>
</div>

</form>
${msg }
			</div>
			</td>
			<td colspan="3">
			
			<div class="registracija2">
				<h3 align="center" style="margin-bottom:10px;color:white;">Registrujte se</h3>
<form action="Controller" method="post">
	<input type="text" name="username_kupca"  placeholder="Korisnicko ime" ><br>
	<br>
	<input type="text" name="ime_kupca"  placeholder="Vase ime"><br>
	<input type="text" name="prezime_kupca" placeholder="Vase prezime"><br>
	<input type="text" name="adresa_kupca" placeholder="Vasa adresa"><br>
	<br>
	<input type="password" name="password_kupca"  placeholder="Unesite password"><br>
	<input type="password" name="password_kupca1"  placeholder="Ponovite password"><br>
	
	
<div class="tooltip2">
	<input type="submit" class="regdugme" name="akcija" value="RegistrujSe">
  <span class="regtext">Postanite novi korisnik.</span>
</div>
</form>
<br>
${msgr}

<br><br>
			</div>
			
			</td>
			</tr>
		</table>
		</div>

<div id="formatabletmobilni">
	<h1 class="prvinaslov">PRIJAVA</h1>
	<div id="prijavatabletmobilni">
		
		<div class="logovanje2">
				<h3 align="center" style="margin-bottom:10px;color:white;">Prijavite se</h3>
				
				<form action="Controller" method="post">
				<input type="text" name="username_kupca" class="tabletinput" placeholder="Korisnicko ime"><br>
				<input type="password" name="password_kupca" class="tabletinput" placeholder="Password"><br><br><br><br><br>
				<input type="submit" id="logindugme" value="UlogujSe" name="akcija">
				</form>
				${msg }
		</div>
		<h1 class="prvinaslov">REGISTACIJA</h1>
	
	<div id="registacijatabletmobilni">
		
		<div class="registracija2">
				<br><h3 align="center" style="margin-bottom:10px;color:white;">Registrujte se</h3>
<form action="Controller" method="post">
	<input type="text" name="username_kupca"  class="tabletinput" placeholder="Korisnicko ime" ><br>
	<br>
	<input type="text" name="ime_kupca"  class="tabletinput" placeholder="Vase ime"><br>
	<input type="text" name="prezime_kupca" class="tabletinput" placeholder="Vase prezime"><br>
	<input type="text" name="adresa_kupca" class="tabletinput" placeholder="Vasa adresa"><br>
	<br>
	<input type="password" name="password_kupca"  class="tabletinput" placeholder="Unesite password"><br>
	<input type="password" name="password_kupca1"  class="tabletinput" placeholder="Ponovite password"><br>
	<input type="submit" class="regdugme" name="akcija" value="RegistrujSe">
	
	</form>
	<br>
	${msgr}

	</div>






</div>


    </div>
  		</div>
  			</div>

<div class="futer" align="center">
 
 <p>© AVIATO | 2017. | Sva prava zadržana.</p>
 
    </div>
</body>


<!-------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
                            KRECE VIEW ZA ULOGOVANOG KORISNIKAAA
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------->.


<%}else if(k1!=null){ %>


<body>
<div id="container">
	<header>
    
     <div class="sat">   
<iframe scrolling="no" frameborder="no" clocktype="html5" style="overflow:hidden;border:0;margin:0;padding:0;width:200px;height:40px;"src="http://www.clocklink.com/html5embed.php?clock=004&timezone=GMT0100&color=blue&size=120&Title=&Message=&Target=&From=2017,1,1,0,0,0&Color=green"></iframe>
</div>
      <p> <a href="index.jsp"><img src="slike/AviatoPCShop-Logo-beli-PNG.png" id="logo" alt="logo"></a></p>
      
<label for="show-menu" class="show-menu">Navigacioni Meni</label>
	<input type="checkbox" id="show-menu" role="button">
		<ul id="menu">
		<li><a href="index.jsp">Pocetna Stranica</a></li>
		<li><a href="proizvodi.jsp">Proizvodi</a></li>
        <li><a href="onama.jsp">O Nama</a></li>
		<li><a href="kontakt.jsp">Kontakt</a></li>
		<li><a href="prijava.jsp">Prijavite Se</a></li>
	</ul>
</header>
 
<div id="content">
<br><br>
	<div class="prvidiv">
    	<img id="userslika" src="slike/user.png">
		
		 
			<p id="ulogovaniime">Ulogovani korisnik je: <%=k1.getUsername_kupca() %></p>
	
	<div class="tooltip3">
	<button id="odjavadugme"><a href="Controller?akcija=OdjaviSe" style="text-decoration: none; color:white;">Odjavi se</a></button>
  <span class="odjavatext">Klikom na ovaj link, odjavljujete se sa našega sajta.</span>
</div><br><br><br>
    </div>
  		</div>
  			</div>

<div class="futer" align="center">
 
 <p>© AVIATO | 2017. | Sva prava zadržana.</p>
 
    </div>
</body>



<%} %>


</html>

