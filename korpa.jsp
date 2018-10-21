<%@page import="rs.Artikal"%>
<%@page import="rs.Kupac"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Korpa</title>

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


.slikaAdmin{
	width: 5%;
	margin:5px;
	margin-top: 40px;
	position: absolute;
	margin-left: 93%;
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
	border-collapse: collapse;
}
.tabelakorpatd
{
	font-size: 20px;
	border:1px solid skyblue;
}
.dugmekorpa {
	-moz-box-shadow: 4px 4px 0px 1px #8a2a21;
	-webkit-box-shadow: 4px 4px 0px 1px #8a2a21;
	box-shadow: 4px 4px 0px 1px #8a2a21;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #c62d1f), color-stop(1, #f24437));
	background:-moz-linear-gradient(top, #c62d1f 5%, #f24437 100%);
	background:-webkit-linear-gradient(top, #c62d1f 5%, #f24437 100%);
	background:-o-linear-gradient(top, #c62d1f 5%, #f24437 100%);
	background:-ms-linear-gradient(top, #c62d1f 5%, #f24437 100%);
	background:linear-gradient(to bottom, #c62d1f 5%, #f24437 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#c62d1f', endColorstr='#f24437',GradientType=0);
	background-color:#c62d1f;
	-moz-border-radius:18px;
	-webkit-border-radius:18px;
	border-radius:18px;
	border:1px solid #d02718;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:21px;
	font-weight:bold;
	padding:12px 46px;
	text-decoration:none;
	text-shadow:0px 1px 0px #810e05;
	position: absolute;
	margin-left: 11.5%;
	margin-top: -5%;
}
.dugmekorpa:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #f24437), color-stop(1, #c62d1f));
	background:-moz-linear-gradient(top, #f24437 5%, #c62d1f 100%);
	background:-webkit-linear-gradient(top, #f24437 5%, #c62d1f 100%);
	background:-o-linear-gradient(top, #f24437 5%, #c62d1f 100%);
	background:-ms-linear-gradient(top, #f24437 5%, #c62d1f 100%);
	background:linear-gradient(to bottom, #f24437 5%, #c62d1f 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f24437', endColorstr='#c62d1f',GradientType=0);
	background-color:#f24437;
	color: dodgerblue;
}




.porukaForma{
	width: 50%;
	border: 1px solid grey;
	border-radius: 15px 15px 15px;
	box-shadow: 5px;
	text-align: center;
	margin-left: 25%; 
	margin-top: 2%;
	background-color: dodgerblue;
	padding: 10px;
}

.mapa{
	padding: 20px;
	margin-left: 10%;
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
#follow
{
	display: none;
}
#rema
{
	display: none;
}
#peja
{
	display: none;
}
#djusko
{
	display: none;
}
#imedj
{
	display: none;
}
#imem
{
	display: none;
}
#imep
{
	display: none;
}
#Aviatologo
{
	display: none;
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
#follow
{
	display: none;
}
#rema
{
	display: none;
}
#peja
{
	display: none;
}
#djusko
{
	display: none;
}
#imedj
{
	display: none;
}
#imem
{
	display: none;
}
#imep
{
	display: none;
}
#Aviatologo
{
	display: none;
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

#forma
{
	width: 100%;
	
	position: relative;
}
.textfield{
font-size:16px;
	width:40%;
	height:25px;
	border-radius:15px;
	box-shadow:0px 0px 10px black;
	padding:5px;
	margin:10px;
	color: black;
	}
.textfield:hover{
font-size:16px;
	background-color: skyblue;
	padding-left:20px;
	border-radius:15px;
	box-shadow:0px 0px 10px black;
	cursor:pointer;
	color: black;}
.okvir{
		font-size:16px;
		background-color: dodgerblue;;
		border: 1px solid #33F;
		border-radius:25px;
		box-shadow:0px 0px 15px black;
		padding:35px;
		color: black;}
.dugme{
			font-size:16px;
			width:150px;
			height:38px;
			text-align:center;
			font-weight:bold;
			background-color:#09F;
			padding:3px;
			border-radius:10px;
			box-shadow:0px 0px 10px black;
			background-color:#FFF;
			color: black;}
.dugme:hover{
font-size:16px;
			background-color: skyblue;
			padding-bottom::20px;
			border-radius:15px;
			box-shadow:0px 0px 10px black;
			color:black;
			cursor:pointer;}
.poruka{
f	ont-size:16px;
	border-radius:15px;
	box-shadow:0px 0px 10px black;
	padding:5px;
	margin:10px;
	color: black;
	width: 90%;
	height: 100px;
}
.poruka:hover{
font-size:16px;
	background-color: skyblue;
	padding:20px;
	border-radius:15px;
	box-shadow:0px 0px 10px black;
	cursor:pointer;
	color: black;}
#djusko
{
	width: 15%;
	position: absolute;
	z-index: 1;
	top:5%;
	right: 40%;
}

#peja
{
	width: 15%;
	position: absolute;
	z-index: 1;
	top:5%;
	right: 22.5%;
}
#rema
{
	width: 15%;
	position: absolute;
	z-index: 1;
	top:5%;
	right: 5%;
	
}
#imem
{
	position:absolute;
	margin-top:19%;
	right:7%;
	font-size:24px;
	color: white;
	z-index: 1;
}
#imep
{
	position:absolute;
	margin-top:19%;
	right:23.5%;
	font-size:24px;
	color: white;
	z-index: 1;
}
#imedj
{
	position:absolute;
	margin-top:19%;
	right:41%;
	font-size:24px;
	color: white;
	z-index: 1;
}
#Aviatologo
{
	width:30%;
	position: absolute;
	right: 17%;
	top:79.5%;
	z-index: 1;
}
#follow
{
	width: 4%;
	position: fixed;
	left:0%;
	top:30%;
	z-index: 10;

}
.facebookslicica
{
	width: 93%;
}
.twitterslicica
{
	width: 100%;
	margin-left: -2px;
}
.instagramslicica
{
	width: 93%;
	border-radius:90px;
}
.linkedinslicica
{
	width: 93%;
	border-radius:90px;
	background-color: white;
}
.twitterslicica:hover, .facebookslicica:hover, .linkedinslicica:hover, .instagramslicica:hover
{
	margin-left: 10px;
	
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



#glavnatabela
{
	text-align: center;
  	background: white;
  	border-radius:3px;
  	border-collapse: collapse;
  	height: 400px;
  	margin-left: 10px;
  	padding:5px;
  	width: 50%;
  	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  	animation: float 5s infinite;
  	border: 1px solid dodgerblue;
}
.glavnatabelath
{
	color:#D5DDE5;;
 	background:#1b1e24;
  	border-bottom:4px solid #9ea7af;
  	border-right: 1px solid #343a45;
  	font-size:23px;
 	font-weight: 100;
 	padding:8px;
  	text-align:center;
  	text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  	vertical-align:middle;
}
.glavnatabelath:first-child {
  border-top-left-radius:3px;
}
 
.glavnatabelath:last-child {
  border-top-right-radius:3px;
  border-right:none;
}
.glavnatabelatr
{
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:#666B85;
  font-size:16px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}

.glavnatabelatr:hover td {
  background:#4E5066;
  color:#FFFFFF;
  border-top: 1px solid #22262e;
  border-bottom: 1px solid #22262e;
}
.glavnatabelatr:first-child {
  border-top:none;
}

.glavnatabelatr:last-child {
  border-bottom:none;
}
 
.glavnatabelatr:nth-child(odd) td {
  background:#EBEBEB;
}
 
.glavnatabelatr:nth-child(odd):hover td {
  background:#4E5066;
}

.glavnatabelatr:last-child td:first-child {
  border-bottom-left-radius:3px;
}
 
.glavnatabelatr:last-child td:last-child {
  border-bottom-right-radius:3px;
}
.glavnatabelatd
{
  background:#FFFFFF;
  text-align:center;
  vertical-align:middle;
  font-weight:300;
  font-size:18px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}
#racun
{
	position: absolute;
	top:17%;
	right:5%;
	border-top:2px dashed green;
	border-bottom:2px dashed green;
}
#glavnaforma
{
	position:absolute;	
	width: 40%;
	right: 5%;
	top:30%;
	border: 2px dashed dodgerblue;
	border-radius: 20px;
	background:url(slike/papir.png);
	color: white;
	text-align: center;
}

.dugmepotvrdikupovinu
{
	background:url(slike/noise-bg.png);
	width: 50%;
	height: 50px;
	font-size: 24px;
	border-radius: 10px;
	margin-top: -20px; 
	margin-bottom: 20px; 
}
.dugmepotvrdikupovinu:hover
{
	border: 1px solid green;
	padding: 1px;
	font-size: 25px;
	cursor: pointer;
}


</style>
<link rel="icon" href="slike/plavo A.jpg">

</head>
<%
    HttpSession sesija=request.getSession();
    
   Kupac k1=(Kupac)sesija.getAttribute("ulogovan");%>
<body>
<% if(k1!=null){ %>

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
	<span class="hidespan" style="color:white;float: right;">Niste prijavljeni<a href="prijava.jsp" style="text-decoration: none; color:white;">(Prijavi se)</a></span>
	<%}else if(k1!=null){ %>
	<span class="hidespan" style="color:white;float: right;"><%=k1.getIme_kupca() %> <%=k1.getPrezime_kupca() %> <a href="Controller?akcija=OdjaviSe" style="text-decoration: none; color:white;">(Odjavi se)</a></span>
	<%} %>
	
	
  
  
	
<% if(k1!=null && k1.getUsername_kupca().equals("admin") && k1.getPassword_kupca().equals("admin") && k1.getIme_kupca().equals("Marko")){ %>	
<a href="admin.jsp"><img title="Administratorski panel" class="slikaAdmin" alt="slikaAdmin" src="slike/adminSlika.png"></a>	<%}else{ %>
<a href="korisnik.jsp"><img title="Korisnički panel" class="slikaAdmin" alt="slikaKorisnik" src="slike/korisnikpanel.png"></a>	<%} %>
</header>
 
<div id="content">
<br><br>

	<div class="prvidiv">
	
	<h1 class="prvinaslov">PREGLED KORPE</h1><br>
	
	
	  	<!-- /////////////////KORPA/////////////////// -->
<% 

ArrayList<Artikal> lkk = (ArrayList<Artikal>)sesija.getAttribute("lk");
%>
<%	int i=0;
String status = "Nije odobren";
	int c = 0;
	if(lkk!=null && lkk.size()>0){%>
	<table id="glavnatabela">
	<tr class="glavnatabelatr">
	<th class="glavnatabelath">Proizvodi</th>
	<th class="glavnatabelath">Cena</th>
	<th class="glavnatabelath">Akcija</th>
	</tr>
		<% for(Artikal a1 : lkk){%>		
	<tr class="glavnatabelatr">
	<form action="Controller" method="post">
	
	<td class="glavnatabelatd"><%=a1.getNaziv_artikla() %></td>
	<td class="glavnatabelatd"><%=a1.getProdajna_cena_artikla() %></td>
	<td class="glavnatabelatd"><a href="Controller?akcija=izbacikorpa&br=<%=i++%>">Izbaci</a></td>
	
	</tr>
						
	<% c += a1.getProdajna_cena_artikla();	

		}
%>
</table>
<div id="racun">
<p style="text-align:right; font-size: 40px;">Vaš račun iznosi: <%=c %> din.</p>
</div>


<%if(k1!=null){ %>

	</form>
<%}else{ %>
Morate biti ulogovani kako biste potvrdili kupovinu!
<%} %>


<br><br><br>
<div id="glavnaforma">
	<form action="ServletRacun" method="post">
	
	<br><p style="font-size: 26px;">Način isporuke:</p><br>
	<input type="radio" name="nacin_isporuke_id" value="1">AKS Express
	<input type="radio" name="nacin_isporuke_id" value="2">Post Express
	<input type="radio" name="nacin_isporuke_id" value="3">City Express
	<br>
	
	
	<img style="margin-top:2%; margin-left:-3%; width: 25%; background-color: white;" src="slike/aks.png">
	<img style="margin-top:2%; margin-left:5px; width: 25%; background-color: white;" src="slike/postexpress.gif">
	<img style="margin-top:2%; margin-left:5px; width: 20%; background-color: white;" src="slike/cityexpress.png">
	
	<hr>
	
	<input type="hidden" name="radnik_id" value="<%= (int) (Math.random() * 5)+1 %>">
	<br>
	<br>
	<input type="hidden" name="kupac_id" value="<%=k1.getKupac_id()%>">
	<input type="hidden" name="ukupna_cena" value="<%=c %>">
	<input type="hidden" name="status" value="<%=status %>">
	
	<input class="dugmepotvrdikupovinu" title="Klikom nastavljate kupovinu" type="submit" name="akcija" value="Potvrdite Kupovinu">
	</form>
	 <%String msg = (String) request.getAttribute("msg"); 
    	if(msg != null && msg.trim().length() > 0){%>
    	<h3><%=msg %></h3>
    <%} %>
    
	  
      </div>

    	<a class="dugmekorpa" title="Izpraznite korpu" href="Controller?akcija=isprazni">ISPRAZNITE KORPU</a>
  		</div>
  			</div>



<div class="futer" align="center">
 
 <p>© AVIATO | 2017. | Sva prava zadržana.</p>
 
    </div>
 


    
</body>

   <%}else { %>
<img style="margin-left: 30%; margin-top: 3%; width: 40%;" src="slike/korpaprazna.png">
<p style="font-size:30px;text-align: center; margin-top: 5%;">VAŠA KORPA JE PRAZNA!</p>
<p style="font-size:30px;text-align: center;">BICETE REDIREKTOVANI ZA 5 SEKUNDI!</p>
<meta http-equiv="refresh" content="5; URL='index.jsp'" />
<%} %> 
    
    
    
     <%}
else
{%>
<img style="margin-left: 30%; margin-top: 3%; width: 40%;" src="slike/zabrana.jpg">
<p style="font-size:30px;text-align: center; margin-top: 5%;">OVOJ STRANICI MOŽE PRISTUPITI SAMO ULOGOVANI KORISNIK!</p>
<p style="font-size:30px;text-align: center;">BICETE REDIREKTOVANI ZA 5 SEKUNDI!</p>
<meta http-equiv="refresh" content="5; URL='index.jsp'" />

<%} %>
</html>

