<%@page import="rs.SviRacuni"%>
<%@page import="rs.DAO"%>
<%@page import="rs.Kupac"%>
<%@page import="java.util.ArrayList"%>
<%@page import="rs.Artikal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Detalji</title>




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
	font-size: 16px;
}

/*Promena boje pozadine i teksta prelazenjem kursora preko prvog nivoa.*/
li:hover a {
	background: #0000CC;
	color: #FFFFFF;
	text-decoration: none;
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
	top:-9px;
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
	left:5%;
	background-image:url(slike/savijenpapir.png);
	background-size:102%;
	background-repeat:no-repeat;
	padding:20px;
	border:2px solid #CCCCCC;
	box-shadow: 0px 0px 15px black;
	border-radius:25px;
	font-family:Tahoma, Geneva, sans-serif;
	font-size:20px;
	text-align:justify;
}

.sat
{
	position:absolute;
	margin-right:30%;
	top:5px;
	left:1%;
}
#pretraga
{
	position:fixed;
	left:1%;
	top:9%;
    width: 135px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('slike/search.png');
    background-size: 30px 30px;
    background-position: 5px 5px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

#pretraga:focus {
    width: 15%;
    background-image: url('slike/search2.png');
    border: 2px solid skyblue;
}
#pretragadugme
{
	display: none;
	
}


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
.slikaAdmin{
	width: 5%;
	margin:5px;
	margin-top: 40px;
	position: absolute;
	margin-left: 93%;
}

.tooltip4 .textic {
    visibility: hidden;
    position:fixed;
    width: 20%;
    background-color: dodgerblue;
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
#tabelakorpa
{
	width: 100%;
}
.tabelakorpatd
{
	font-size: 18px;
	border:1px solid skyblue;
}
.dugmekorpa
{
	width: 100%;
	text-decoration: none;
	color: white;
	background: url(slike/papir.png);
	border: none;
}
.linkkorpa
{
	text-decoration: none;
	font-size: 20px;
	color: white;
}
.dugmekorpa:hover .linkkorpa:hover
{
	text-decoration: none;
	color: skyblue;
	font-size: 21px;
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
	right:20%;
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

.sat
{
	display: none;
}
#pretraga
{
	display: none;
}
#pretragadugme
{
	display: none;
	
}

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
.hidespan
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

.sat
{
	display: none;
}
#pretraga
{
	display: none;
}
#pretragadugme
{
	display: none;
	
}

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
.hidespan
{
	display: none;
}

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
.textkontakt
{
	margin-top: 3%;
	margin-left: 3.5%;
	width: 91%;
	padding:10px;
	padding-right:4px;
	border:2px dashed darkblue;
	border-radius: 20px; 
}
.linkkontakt
{
	width: 90%;
	margin-left: 5%;
	margin-top: 3%;
	
}

.dugmepovratak
{
	position:absolute;
	left:3%;
	top: 3%;
	background: url(slike/papir.png);
	font-size: 19px;
	padding: 8px;
	border-top-left-radius:90px;
	border-bottom-left-radius:90px; 
}
.dugmepovratak:hover
{
	left: 2.9%;
}
.linkpovratak
{
	margin-left:10px;
	color: white;
	text-decoration: none;
}
.linkpovratak:hover
{
	color: skyblue;
	text-decoration: none;
}
#podaciracuna
{
	text-align:center;
	width: 70%;
	margin-left: 2%;
}
#podaciracuna th
{
	padding: 7px;
	padding-bottom: 3px;
	font-size: 24px;
	text-transform: uppercase;
}
#podaciracuna td
{
	padding: 10px;
	font-size: 22px;
	
}
#podaciracuna td hr
{
	border-bottom: 1px solid blue;
	width: 60%; 
}
#tabelaartikli
{
	width: 80%;
	margin-top: 2%;
	margin-left: 9.5%;
	border-collapse:collapse;
	text-align: center;
}
#tabelaartikli th
{
	color: white;
	font-size: 24px;
	background-color: dodgerblue;
	border-right: 2px solid skyblue;
	padding: 10px;
	border-bottom: 3px solid white;
}
#tabelaartikli th:first-child
{
	border-top-left-radius: 10px;
}
#tabelaartikli th:last-child
{
	border-top-right-radius: 10px;
	border-right: none; 
}
#tabelaartikli td
{
	color: white;
	background-color:#666;
	font-size: 20px;
	border-right: 1px solid skyblue;
	border-bottom: 1px solid skyblue;
	padding: 5px; 
}
#tabelaartikli td:first-child
{
	border-left: 1px solid skyblue;
}
#tabelaartikli tr:last-child
{
	height: 60px;
}
.dugmestatus {
	-moz-box-shadow: 6px 4px 0px 0px #a4e271;
	-webkit-box-shadow: 6px 4px 0px 0px #a4e271;
	box-shadow: 6px 4px 0px 0px #a4e271;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #89c403), color-stop(1, #77a809));
	background:-moz-linear-gradient(top, #89c403 5%, #77a809 100%);
	background:-webkit-linear-gradient(top, #89c403 5%, #77a809 100%);
	background:-o-linear-gradient(top, #89c403 5%, #77a809 100%);
	background:-ms-linear-gradient(top, #89c403 5%, #77a809 100%);
	background:linear-gradient(to bottom, #89c403 5%, #77a809 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#89c403', endColorstr='#77a809',GradientType=0);
	background-color:#89c403;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #74b807;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:18px;
	font-weight:bold;
	padding:5px 35px;
	text-decoration:none;
	margin-top: -1%;
	margin-left: 2%;
}
.dugmestatus:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #77a809), color-stop(1, #89c403));
	background:-moz-linear-gradient(top, #77a809 5%, #89c403 100%);
	background:-webkit-linear-gradient(top, #77a809 5%, #89c403 100%);
	background:-o-linear-gradient(top, #77a809 5%, #89c403 100%);
	background:-ms-linear-gradient(top, #77a809 5%, #89c403 100%);
	background:linear-gradient(to bottom, #77a809 5%, #89c403 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#77a809', endColorstr='#89c403',GradientType=0);
	background-color:#77a809;
}
.dugmestatus:active {
	position:relative;
	top:1px;
}
.dugmestatus2 {
	-moz-box-shadow:inset 0px 1px 0px 0px #caefab;
	-webkit-box-shadow:inset 0px 1px 0px 0px #caefab;
	box-shadow:inset 0px 1px 0px 0px #caefab;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #77d42a), color-stop(1, #5cb811));
	background:-moz-linear-gradient(top, #77d42a 5%, #5cb811 100%);
	background:-webkit-linear-gradient(top, #77d42a 5%, #5cb811 100%);
	background:-o-linear-gradient(top, #77d42a 5%, #5cb811 100%);
	background:-ms-linear-gradient(top, #77d42a 5%, #5cb811 100%);
	background:linear-gradient(to bottom, #77d42a 5%, #5cb811 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#77d42a', endColorstr='#5cb811',GradientType=0);
	background-color:#77d42a;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #268a16;
	display:inline-block;
	cursor:pointer;
	color:#306108;
	font-family:Arial;
	font-size:14px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #aade7c;
}
.dugmestatus2:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #5cb811), color-stop(1, #77d42a));
	background:-moz-linear-gradient(top, #5cb811 5%, #77d42a 100%);
	background:-webkit-linear-gradient(top, #5cb811 5%, #77d42a 100%);
	background:-o-linear-gradient(top, #5cb811 5%, #77d42a 100%);
	background:-ms-linear-gradient(top, #5cb811 5%, #77d42a 100%);
	background:linear-gradient(to bottom, #5cb811 5%, #77d42a 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#5cb811', endColorstr='#77d42a',GradientType=0);
	background-color:#5cb811;
	color: white;
}
.dugmestatus2:active {
	position:relative;
	top:1px;
}
.dugmezakljuci {
	-moz-box-shadow:inset 0px 0px 15px 3px #23395e;
	-webkit-box-shadow:inset 0px 0px 15px 3px #23395e;
	box-shadow:inset 0px 0px 15px 3px #23395e;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #85a0cc), color-stop(1, #415989));
	background:-moz-linear-gradient(top, #85a0cc 5%, #415989 100%);
	background:-webkit-linear-gradient(top, #85a0cc 5%, #415989 100%);
	background:-o-linear-gradient(top, #85a0cc 5%, #415989 100%);
	background:-ms-linear-gradient(top, #85a0cc 5%, #415989 100%);
	background:linear-gradient(to bottom, #85a0cc 5%, #415989 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#85a0cc', endColorstr='#415989',GradientType=0);
	background-color:#85a0cc;
	-moz-border-radius:17px;
	-webkit-border-radius:17px;
	border-radius:17px;
	border:1px solid #4c8beb;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:20px;
	font-weight:bold;
	padding:16px 38px;
	text-decoration:none;
	margin-top: 1%;
	margin-bottom: 1%;
}
.dugmezakljuci:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #415989), color-stop(1, #85a0cc));
	background:-moz-linear-gradient(top, #415989 5%, #85a0cc 100%);
	background:-webkit-linear-gradient(top, #415989 5%, #85a0cc 100%);
	background:-o-linear-gradient(top, #415989 5%, #85a0cc 100%);
	background:-ms-linear-gradient(top, #415989 5%, #85a0cc 100%);
	background:linear-gradient(to bottom, #415989 5%, #85a0cc 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#415989', endColorstr='#85a0cc',GradientType=0);
	background-color:#415989;
	color: black;
}
.dugmezakljuci:active {
	position:relative;
	top:1px;
}

</style>
<link rel="icon" href="slike/plavo A.jpg">
</head>


<%
    HttpSession sesija=request.getSession();
    
   Kupac k1=(Kupac)sesija.getAttribute("ulogovan");
  
    %>
    
   
    <% if(k1!=null){ %>
   
<body>


<div id="container">
	<header>
    
     <div class="sat">   
<iframe scrolling="no" frameborder="no" clocktype="html5" style="overflow:hidden;border:0;margin:0;padding:0;width:200px;height:40px;"src="http://www.clocklink.com/html5embed.php?clock=004&timezone=GMT0200&color=blue&size=120&Title=&Message=&Target=&From=2017,1,1,0,0,0&Color=green"></iframe>
</div>
<form action="ServletKategorije" method="post">
<input id="pretraga" type="text" name="naziv_artikla" placeholder="Pretraži..">
<input id="pretragadugme" type="submit" name="akcija" value="Pretrazi">
</form>


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
	
	<%if(k1==null){ %>
	<span class="hidespan" style="font-size:13px;color:white;float: right;">Niste prijavljeni<a href="prijava.jsp" style="text-decoration: none; color:white;">(Prijavi se)</a></span>
	<%}else if(k1!=null){ %>
	<span class="hidespan" style="font-size:13px;color:white;float: right;"><%=k1.getIme_kupca() %> <%=k1.getPrezime_kupca() %> <a href="Controller?akcija=OdjaviSe" style="text-decoration: none; color:white;">(Odjavi se)</a></span>
	<%} %>
	
	<div class="tooltip4">
	<img id="korpica" src="slike/korpa2.gif">
  <span class="textic">
  
  	Vaša korpa <br><hr color="skyblue">
  	
  	<!-- /////////////////KORPA/////////////////// -->
<% 

ArrayList<Artikal> lk = (ArrayList<Artikal>)sesija.getAttribute("lk");
%>
<%
	int c = 0;
	if(lk!=null){%>
	<table id="tabelakorpa">
	<tr>
	<td class="tabelakorpatd">Proizvodi</td>
	<td class="tabelakorpatd">Cena</td>
	
	</tr>
		<% for(Artikal a : lk){%>		
	<tr>
	<td class="tabelakorpatd"><%=a.getNaziv_artikla() %></td>
	<td class="tabelakorpatd"><%=a.getProdajna_cena_artikla() %></td>
	
	</tr>
						
	<% c += a.getProdajna_cena_artikla();			
		}
%>
</table>
<p style="margin-top:10px;margin-bottom:10px;font-size: 20px;">Vaš račun: <%=c %> din.</p>

<button class="dugmekorpa"><a class="linkkorpa" href="Controller?akcija=isprazni">ISPRAZNITE KORPU</a></button>
<%if(k1!=null){ %>
<button class="dugmekorpa"><a class="linkkorpa" href="Controller?akcija=pregled">PREGLED KORPE</a></button>
	</form>
<%}else{ %>
Morate biti ulogovani kako biste potvrdili kupovinu!
<%} %>
<%}else{ %>
Vaša korpa je prazna.
<%} %> 
  </span>
</div>
<% if(k1!=null && k1.getUsername_kupca().equals("admin") && k1.getPassword_kupca().equals("admin") && k1.getIme_kupca().equals("Marko")){ %>	
<a href="admin.jsp"><img title="Administratorski panel" class="slikaAdmin" alt="slikaAdmin" src="slike/adminSlika.png"></a>	<%}else{ %>
<a href="korisnik.jsp"><img title="Korisnički panel" class="slikaAdmin" alt="slikaKorisnik" src="slike/korisnikpanel.png"></a>	<%} %>

</header>
 
<div id="content">
<br><br>
	<div class="prvidiv">
	<br>
	<%SviRacuni detaljiobjekat =(SviRacuni) sesija.getAttribute("detaljiobjekat"); %>
		<h1 class="prvinaslov">RAČUN ID <%=detaljiobjekat.getRacun_id() %></h1><br>
		<button title="Povratak na Administratorski panel" class="dugmepovratak"><a class="linkpovratak" href="ServletAdmin?akcija=racuni">Povratak</a></button>
		
		
		
		<table id="podaciracuna">
			<tr>
				<th>Datum izdavanja</th>
				<th>Odgovorno lice</th>
			</tr>
				<td><%=detaljiobjekat.getDatum_izdavanja() %><hr style="border-bottom: 1px solid blue; width: 78%;"></td>
				<td><%=detaljiobjekat.getIme_radnika() %> <%=detaljiobjekat.getPrezime_radnika() %><hr style="border-bottom: 1px solid blue; width: 33%;"></td>
	
			</tr>
			<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
			
			<tr>
				<th>Način isporuke</th>
				<th>Status</th>
			</tr>
			<tr>
				<td><%=detaljiobjekat.getNaziv_isporuke() %><hr style="border-bottom: 1px solid blue; width: 45%;"></td>
				<td><%=detaljiobjekat.getStatus() %><form action="ServletRacun" method="post"> <select style="margin-top:8px;font-size: 25px;" name="status">
										<option value="Odobren">Odobren</option>
										<option value="Nije Odobren">Nije Odobren</option></select><input type="hidden" name="racun_id" value="<%=detaljiobjekat.getRacun_id() %>"><input title="Promena statusa računa <%=detaljiobjekat.getRacun_id() %>" class="dugmestatus" type="submit" name="akcija" value="Promeni Status"></form>${msgs }<hr style="border-bottom: 1px solid blue; width: 75%;"> </td>
			</tr>
		</table>
		<br><br>
		
		<table id="tabelaartikli" width="100%">
				<tr>
					<th>Naziv artikla</th>
					<th>Količina</th>
					<th>Tip artikla</th>
					<th>Cena po artiklu</th>
					<th>Trenutno na stanju</th>
					<th>Akcija</th>
				</tr>
	<% ArrayList<SviRacuni> detalji=(ArrayList<SviRacuni>)sesija.getAttribute("detalji"); 
	for(SviRacuni detaljpom : detalji){
	%>
				<tr>
					<td><%=detaljpom.getNaziv_artikla() %></td>
					<td><%=detaljpom.getArtikal_id() %></td>
					<td><%=detaljpom.getIme_tipa_artikla() %></td>
					<td><%=detaljpom.getProdajna_cena_artikla() %></td>
					<td><%=detaljpom.getKolicina_artikla() %></td>
					<td><form  action="ServletRacun" method="get"> <input type="hidden" name="artikal_id" value="<%=detaljpom.getArtikal_id() %>"> <input type="hidden" name="naziv_artikla" value="<%=detaljpom.getNaziv_artikla() %>"> <input type="hidden" name="racun_id" value="<%=detaljpom.getRacun_id() %>"> <input type="hidden" name="kolicina_artikla" value="<%=detaljpom.getKolicina_artikla() %>"> <input title="Izmeni stanje artikla <%=detaljpom.getNaziv_artikla() %>" class="dugmestatus2" type="submit" name="akcija" value="Izmeni Stanje"></form></td>
				</tr>
			<%} %>
			<tr>
				<td colspan="9"><p style="font-size: 30px; font-weight:bold; text-transform: uppercase; text-align: center;">Ukupna cena iznosi <%=detaljiobjekat.getUkupna_cena() %>  din.  </p></td>
			</tr>
			
			
			${msgp }
			</table>
			<form action="ServletRacun" method="post" style="text-align: center;"> <input type="hidden" name="status" value="Zakljucen"><input type="hidden" name="racun_id" value="<%=detaljiobjekat.getRacun_id() %>"> <input title="Zakljuci Posao" class="dugmezakljuci" type="submit" name="akcija" value="Zakljuci Posao"></form>${msgs }
			<hr>
		
		<h2 class="textkontakt">Ukoliko želite da nas kontaktirate možete to uraditi klikom na sliku ispod</h2>
		
		<a href="kontakt.jsp"><img title="Kontaktirajte nas" class="linkkontakt" src="slike/kontaktbaner.jpg"></a>
		
		<h1 style="margin-top: 2%" class="prvinaslov">HVALA VAM NA POVERENJU!</h1><br>
		</div>
		</div>
<div class="futer" align="center">
 
 <p>© AVIATO | 2017. | Sva prava zadržana.</p>
 
    </div>
</body>

   
     <%}
else
{%>
<img style="margin-left: 30%; margin-top: 3%; width: 40%;" src="slike/zabrana.jpg">
<p style="font-size:30px;text-align: center; margin-top: 5%;">OVOJ STRANICI MOŽE PRISTUPITI SAMO ULOGOVANI KORISNIK!</p>
<p style="font-size:30px;text-align: center;">BICETE REDIREKTOVANI ZA 5 SEKUNDI!</p>
<meta http-equiv="refresh" content="5; URL='index.jsp'" />

<%} %>
</html>

