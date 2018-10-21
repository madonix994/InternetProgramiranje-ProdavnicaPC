<%@page import="rs.Forma"%>
<%@page import="java.util.ArrayList"%>
<%@page import="rs.Artikal"%>
<%@page import="rs.Kupac"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sve Poruke</title>

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

.racuniDugme{
	padding: 5px;
	border: 1px solid grey;
	background-color: dodgerblue;
	
	width: 15%;
	text-align: center;
	text-decoration: none;
	border-radius: 10px;	
}

.racuniDugme:hover{
	background-color: grey;
}

.porukaDugme{
	padding: 5px;
	border: 1px solid grey;
	background-color: dodgerblue;
	position: absolute;
	margin-left: 20%;
	bottom: 13%;
	width: 15%;
	text-align: center;
	text-decoration: none;
	border-radius: 10px;
}

.porukaDugme:hover{
	background-color: grey;
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
	font-size: 24px;
}
strong{
	color:#0099FF;
}

#follow
{
	display: none;
}
#korpica
{
	display: none;
}
#levi
{
	box-shadow: 0px 0px 15px dodgerblue;
	position: absolute;
	border: 2px solid dodgerblue;
	width: 94%;
	left:3%;
	right:5%;
	border-radius: 20px;
	height: 10%;
	margin-top: -4%;
}
#desni
{
	box-shadow: 0px 0px 15px dodgerblue;
	position: absolute;
	border: 2px solid dodgerblue;
	width: 94%;
	left:3%;
	right:5%;
	margin-top:22%;
	border-radius: 20px;
	height: 10%
}
#levodugme
{
	
	margin-left:65%;
	margin-top:1%;
	position:absolute;
	width: 120px;
	height: 40px;
	background: url(slike/papir.png);
	color:white;
	font-weight:bold;
	font-size: 16px;
	border-radius: 15px;
}
#levodugme:hover
{
	margin-left:65.6%;
	width: 130px;
	height: 41px;
	background: url(slike/papir.png);
	color:white;
	font-weight:bold;
	font-size: 18px;
	border-radius: 15px;
}
#desnodugme
{
	margin-left:65%;
	margin-top:0%;
	position:absolute;
	width: 120px;
	height: 40px;
	background: url(slike/papir.png);
	color:white;
	font-weight:bold;
	font-size: 16px;
	border-radius: 15px;
}
#desnodugme:hover
{
	margin-left:65.6%;
	width: 130px;
	height: 41px;
	background: url(slike/papir.png);
	color:white;
	font-weight:bold;
	font-size: 18px;
	border-radius: 15px;
}
#divprijava
{
	position: absolute;
	width: 80%;
	right:10%;
	height: 10%;
	margin-top:41%;
	border-radius: 20px;
}
.divslicica
{
	width: 15%;
	margin:5px;
	margin-top: -15px;
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
#tabelakorpa
{
	display: none;
}
.tabelakorpatd
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
.hidespan
{
	display: none;
}
.prvinaslov{
	color:#0099FF;
	text-align:center;
	font-size: 16px;
}

strong{
	color:#0099FF;
}
#follow
{
	display: none;
}
#korpica
{
	display: none;
}
#levi
{
	margin-top:-5%;
	box-shadow: 0px 0px 15px dodgerblue;
	position: absolute;
	border: 2px solid dodgerblue;
	width: 94%;
	left:3%;
	right:5%;
	border-radius: 20px;
	height: 13%
}
#desni
{
	box-shadow: 0px 0px 15px dodgerblue;
	position: absolute;
	border: 2px solid dodgerblue;
	width: 94%;
	left:3%;
	right:5%;
	margin-top:32%;
	border-radius: 20px;
	height: 13%
}
#levodugme
{
	margin-top:1%;
	margin-left:45%;
	position:absolute;
	width: 120px;
	height: 40px;
	background: url(slike/papir.png);
	color:white;
	font-weight:bold;
	font-size: 16px;
	border-radius: 15px;
}
#levodugme:hover
{
	width: 130px;
	height: 41px;
	background: url(slike/papir.png);
	color:white;
	font-weight:bold;
	font-size: 18px;
	border-radius: 15px;
}
#desnodugme
{
	margin-top:2%;
	margin-left:45%;
	position:absolute;
	width: 120px;
	height: 40px;
	background: url(slike/papir.png);
	color:white;
	font-weight:bold;
	font-size: 16px;
	border-radius: 15px;
}
#desnodugme:hover
{
	width: 130px;
	height: 41px;
	background: url(slike/papir.png);
	color:white;
	font-weight:bold;
	font-size: 18px;
	border-radius: 15px;
}
#divprijava
{
	position: absolute;
	width: 70%;
	right:15%;
	height: 6%;
	margin-top:60%;
	border-radius: 20px;
}
.divslicica
{
	width: 15%;
	margin:5px;
	margin-top: -15px;
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
#tabelakorpa
{
	display: none;
}
#tabelakorpa
{
	display: none;
}
.tabelakorpatd
{
	display: none;
}

}

#slider
{
	width: 95%;
	margin-left: 2.5%;
	border: 1px solid dodgerblue;
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
#nasaradnja
{
	width: 95%;
	margin-left: 2.5%;
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
.dugmepovratak
{
	position:absolute;
	margin-left:3%;
	top:8%;
	background: url(slike/papir.png);
	font-size: 19px;
	padding: 8px;
	border-top-left-radius:90px;
	border-bottom-left-radius:90px; 
}
.dugmepovratak:hover
{
	margin-left: 2.9%;
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
	margin-top: -8.1%;
}

.dugmeradnici
{
	position:absolute;
	right:11.5%;
	top:8%;
	background: url(slike/papir.png);
	font-size: 19px;
	padding: 8px;
	border-top-left-radius:90px;
	border-bottom-left-radius:90px; 
}
.dugmeradnici:hover
{
	position:absolute;
	right: 11.6%;
}
.linkradnici
{
	margin-left:7px;
	color: white;
	text-decoration: none;
}
.linkradnici:hover
{
	color: skyblue;
	text-decoration: none;
}

.dugmekategorije
{
	position:absolute;
	right:3%;
	top:8%;
	background: url(slike/papir.png);
	font-size: 19px;
	padding: 8px;
	border-top-right-radius:90px;
	border-bottom-right-radius:90px; 
}
.dugmekategorije:hover
{
	position:absolute;
	right: 2.9%;
}
.linkkategorije
{
	color: white;
	text-decoration: none;
}

.linkkategorije:hover
{
	color: skyblue;
	text-decoration: none;
}


#tabelaporuke
{
	text-align: center;
  	background: white;
  	border-radius:3px;
  	border-collapse: collapse;
  	height: 200px;
  	margin: auto;
	margin-top:-40px;
  	padding:5px;
  	width: 90%;
  	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  	animation: float 5s infinite;
  	border: 1px solid dodgerblue;
}
.tabelaporuketh
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
.tabelaporuketh:first-child {
  border-top-left-radius:3px;
}
 
.tabelaporuketh:last-child {
  border-top-right-radius:3px;
  border-right:none;
}
.tabelaporuketr
{
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:#666B85;
  font-size:16px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}

.tabelaporuketr:hover td {
  background:#4E5066;
  color:#FFFFFF;
  border-top: 1px solid #22262e;
  border-bottom: 1px solid #22262e;
}
.tabelaporuketr:first-child {
  border-top:none;
}

.tabelaporuketr:last-child {
  border-bottom:none;
}
 
.tabelaporuketr:nth-child(odd) td {
  background:#EBEBEB;
}
 
.tabelaporuketr:nth-child(odd):hover td {
  background:#4E5066;
}

.tabelaporuketr:last-child td:first-child {
  border-bottom-left-radius:3px;
}
 
.tabelaporuketr:last-child td:last-child {
  border-bottom-right-radius:3px;
}
.tabelaporuketd
{
  background:#FFFFFF;

  text-align:left;
  vertical-align:middle;
  font-weight:300;
  font-size:18px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}
.dugmeobrisi
{
	background: url(slike/papir.png);
	width: 100%;
	font-size: 18px;
	height: 35px;
}
.obrisiporuku
{
	color: white;
	text-decoration: none;
}
.obrisiporuku:hover
{
	color: skyblue;
	text-decoration: none;
	font-size: 19px;
}





</style>
<link rel="icon" href="slike/plavo A.jpg">
</head>

 <%
 	HttpSession sesija=request.getSession();
     
    Kupac k=(Kupac)sesija.getAttribute("ulogovan");
 %>
<body>
<% if(k!=null && k.getUsername_kupca().equals("admin") && k.getPassword_kupca().equals("admin") && k.getIme_kupca().equals("Marko")){ %>


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
	
	<%
			if(k==null){
		%>
	<span class="hidespan" style="color:white;float: right;">Niste prijavljeni<a href="prijava.jsp" style="text-decoration: none; color:white;">(Prijavi se)</a></span>
	<%
		}else if(k!=null){
	%>
	<span class="hidespan" style="color:white;float: right;"><%=k.getIme_kupca()%> <%=k.getPrezime_kupca()%> <a href="Controller?akcija=OdjaviSe" style="text-decoration: none; color:white;">(Odjavi se)</a></span>
	<%
		}
	%>
		
</header>
 
<div id="content">
<br><br>

	<div class="prvidiv">
	

    	<h1 class="prvinaslov">Prikaz svih Poruka</h1><br>
		<br>
			<button title="Povratak na Administratorski panel" class="dugmepovratak"><a class="linkpovratak" href="admin.jsp">Povratak</a></button>
			<button title="Prikaz Radnika" class="dugmeradnici"><a class="linkradnici" href="ServletAdmin?akcija=radnici">Radnici</a></button>
			<button title="Prikaz Kategorija" class="dugmekategorije"><a class="linkkategorije" href="ServletAdmin?akcija=kategorije">Kategorije</a></button>
		<br>
	<table id="tabelaporuke">
		<tr class="tabelaporuketr">
			<th class="tabelaporuketh">Broj Poruke</th>
			<th class="tabelaporuketh">Ime Pošiljaoca</th>
			<th class="tabelaporuketh">Prezime Pošiljaoca</th>
			<th class="tabelaporuketh">e-mail Adresa</th>
			<th class="tabelaporuketh">Naslov Poruke</th>
			<th class="tabelaporuketh">Poruka</th>
			<th class="tabelaporuketh" align="center" colspan="2">AKCIJA</th>
		</tr>
		<%
			ArrayList<Forma> loP = (ArrayList<Forma>) sesija.getAttribute("loP");
			if(loP != null){
			for(Forma pom : loP){
		%>
		<tr class="tabelaporuketr">
			<td class="tabelaporuketd" style="text-align: center;"><%=pom.getForma_id() %></td>
			<td class="tabelaporuketd" style="text-align: center;"><%=pom.getIme() %></td>
			<td class="tabelaporuketd" style="text-align: center;"><%=pom.getPrezime() %></td>
			<td class="tabelaporuketd" style="text-align: center;"><%=pom.getEmail() %></td>
			<td class="tabelaporuketd" style="text-align: center;"><%=pom.getNaslov_poruke() %></td>
			<td class="tabelaporuketd" style="text-align: center;"><%=pom.getPoruka() %></td>
			<td class="tabelaporuketd" style="text-align: center;"> <button class="dugmeobrisi" title="Brisanje poruke"><a class="obrisiporuku" href="ServletAdmin?akcija=ObrisiPoruku&forma_id=<%= pom.getForma_id()%>">Obriši</a></button> </td>
		</tr>
		<%} }%>
	</table>
		
    </div>
    
    
  		</div>
  			</div>

<div class="futer" align="center">
 
 <p>© AVIATO | 2017. | Sva prava zadržana.</p>
 
    </div>
<%}
else
{%>

<img style="margin-left: 30%; margin-top: 3%; width: 40%;" src="slike/zabrana.jpg">
<p style="font-size:30px;text-align: center; margin-top: 5%;">OVOJ STRANICI MOŽE PRISTUPITI SAMO ADMINISTRATOR SAJTA!</p>
<p style="font-size:30px;text-align: center;">BICETE REDIREKTOVANI ZA 5 SEKUNDI!</p>
<meta http-equiv="refresh" content="5; URL='index.jsp'" />

<%} %>    
    
</body>
</html>

