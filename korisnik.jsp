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
<title>Korisnicki Panel</title>




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

<!-- ////////////////////////////// BOOTSTRAAP/////////////////////////////////////// -->
<!-- ////////////////////////////// BOOTSTRAAP/////////////////////////////////////// -->
<!-- ////////////////////////////// BOOTSTRAAP/////////////////////////////////////// -->


p{	
	text-align:center;}
	
#strana{
	height:100%;
	margin:0px;}





#box{
	margin-left:10px;
	margin-right:10px;
}

#red{
height:220px;
padding:0px;
}

#section{
padding:0px;
border:2px solid gray;
float:left;
height:220px;
background-color: dodgerblue;
}

<!-- PROBA ZA PROIZVODE -->




#mala{height:220px;
padding:0px;
margin:0px;
}

#velika{height:440px;
background-color:dodgerblue;
border:2px solid gray;}



.proizvod{
height:100%;
width:100%;
padding:0px;
margin:0px;
}

#velika:hover img {

opacity: 0.2;
  -webkit-transition: all 2s ease;
     -moz-transition: all 2s ease;
       -o-transition: all 2s ease;
      -ms-transition: all 2s ease;
          transition: all 2s ease;
}

#velika:hover p {

opacity: 2;
  -webkit-transition: all 2s ease;
     -moz-transition: all 2s ease;
       -o-transition: all 2s ease;
      -ms-transition: all 2s ease;
          transition: all 2s ease;
}

#section:hover img {

opacity: 0.2;
  -webkit-transition: all 2s ease;
     -moz-transition: all 2s ease;
       -o-transition: all 2s ease;
      -ms-transition: all 2s ease;
          transition: all 2s ease;
}

#section:hover p {

opacity: 2;
  -webkit-transition: all 2s ease;
     -moz-transition: all 2s ease;
       -o-transition: all 2s ease;
      -ms-transition: all 2s ease;
          transition: all 2s ease;
}

.textproizvod{
position: absolute;
opacity: 0;
font-size: 16px;
font-weight:bold;
    color: white;
}

.proizvod1{
height:100%;
width:111.5%;
padding:0px;
margin-left: -6%;
}

.kupovanje{
position: absolute;
z-index:1;
bottom: 0%;
left: 35%;
}




#kupacdiv
{
	position:absolute;
	margin-top:3%;
	width: 35%;
	left: 5%;
	padding: 10px;
}


#tabelaartikli
{

	width: 95%;
	margin-left: 2.5%;
	margin-top: 1%;
	border-collapse:collapse;
	text-align: center;
}
#tabelaartikli th
{
	color: white;
	font-size: 20px;
	background-color: dodgerblue;
	border-right: 2px solid skyblue;
	padding: 8px;
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
	padding: 4px; 
}
#tabelaartikli td:first-child
{
	border-left: 1px solid skyblue;
}
#tabelaartikli td:last-child
{
	padding: 7px;
}
#formakupac
{
	background: url('slike/papirnovo.jpg');
	position:absolute;
	width: 35%;
	right: 10%;
	padding: 10px;
	margin-top: 4%;
	text-align: center;
	border-radius: 20px; 
}
.formainput
{
	font-size: 22px;
	width: 50%;
	margin-bottom: 10px;
	border-radius: 10px; 
	padding: 5px;
}
.formainput:focus
{
	border: 1px solid skyplue;
	border-radius: 10px; 
}
.dugmeazuriraj
{
	background: url('slike/papirnovo2.jpg');
	width: 40%;
	height: 10%;
	font-size: 20px;
	color: white;
}
.myButton {
	width: 40%;
	-moz-box-shadow: 0px 10px 14px -7px #276873;
	-webkit-box-shadow: 0px 10px 14px -7px #276873;
	box-shadow: 0px 10px 14px -7px #276873;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #599bb3), color-stop(1, #408c99));
	background:-moz-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:-webkit-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:-o-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:-ms-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:linear-gradient(to bottom, #599bb3 5%, #408c99 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#599bb3', endColorstr='#408c99',GradientType=0);
	background-color:#599bb3;
	-moz-border-radius:10px;
	-webkit-border-radius:10px;
	border-radius:10px;
	border:0.5px solid white;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:20px;
	font-weight:bold;
	padding:10px 36px;
	text-decoration:none;
	text-shadow:0px 1px 0px #3d768a;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #408c99), color-stop(1, #599bb3));
	background:-moz-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:-webkit-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:-o-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:-ms-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:linear-gradient(to bottom, #408c99 5%, #599bb3 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#408c99', endColorstr='#599bb3',GradientType=0);
	background-color:#408c99;
	font-size:20.1px;
}
.myButton:active {
	position:relative;
	top:1px;
}
.myButton2 {
	-moz-box-shadow: 0px 1px 0px 0px #f0f7fa;
	-webkit-box-shadow: 0px 1px 0px 0px #f0f7fa;
	box-shadow: 0px 1px 0px 0px #f0f7fa;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #33bdef), color-stop(1, #019ad2));
	background:-moz-linear-gradient(top, #33bdef 5%, #019ad2 100%);
	background:-webkit-linear-gradient(top, #33bdef 5%, #019ad2 100%);
	background:-o-linear-gradient(top, #33bdef 5%, #019ad2 100%);
	background:-ms-linear-gradient(top, #33bdef 5%, #019ad2 100%);
	background:linear-gradient(to bottom, #33bdef 5%, #019ad2 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#33bdef', endColorstr='#019ad2',GradientType=0);
	background-color:#33bdef;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #057fd0;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px -1px 0px #5b6178;
}
.myButton2:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #019ad2), color-stop(1, #33bdef));
	background:-moz-linear-gradient(top, #019ad2 5%, #33bdef 100%);
	background:-webkit-linear-gradient(top, #019ad2 5%, #33bdef 100%);
	background:-o-linear-gradient(top, #019ad2 5%, #33bdef 100%);
	background:-ms-linear-gradient(top, #019ad2 5%, #33bdef 100%);
	background:linear-gradient(to bottom, #019ad2 5%, #33bdef 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#019ad2', endColorstr='#33bdef',GradientType=0);
	background-color:#019ad2;
}
.myButton2:active {
	position:relative;
	top:1px;
}
.textkontakt
{
	margin-left: 3.5%;
	width: 91%;
	padding:10px;
	padding-right:4px;
	border:2px dashed darkblue;
}
.linkkontakt
{
	width: 80%;
	margin-left: 10%;
	margin-top: 3%;
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
<%int i=0;
	int c = 0;
	if(lk!=null  && lk.size()>0){%>
	<table id="tabelakorpa">
	<tr>
	<td class="tabelakorpatd">Proizvodi</td>
	<td class="tabelakorpatd">Cena</td>
	<td class="tabelakorpatd">Akcija</td>
	</tr>
		<% for(Artikal a : lk){%>		
	<tr>
	<td class="tabelakorpatd"><%=a.getNaziv_artikla() %></td>
	<td class="tabelakorpatd"><%=a.getProdajna_cena_artikla() %></td>
	<td class="tabelakorpatd"><form action="Controller" method="get"><input type="hidden" name="br" value="<%=i++%>"> <input type="submit" name="akcija" value="izbaci"> </form></td>
	
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
    	<h1 class="prvinaslov">KORISNIČKI PANEL</h1><br>
	
		<h1 style="position:absolute; margin-left:24%; border-bottom:2px dashed green; padding:10px; width:48%; border-top:2px dashed green;">Dobro došli, korisniče <b><%=k1.getUsername_kupca() %></b></h1>
		
		<br>
		<br>
		
		<!-- Pocetak za kupca!! -->
		
		

		
		<div id="kupacdiv">
			<img style="margin-left: 25%; background-color:#333;border-radius:20px; width: 50%;" src="slike/kupacslicica.png">
			<br><br>
			<p style="font-size:34px; text-align:center; margin-top: -10px;">Podaci kupca</p>
			<p style="font-size: 28px; margin-bottom: 10px; margin-top: 5px;">Ime kupca: <%=k1.getIme_kupca() %></p>
			<p style="font-size: 28px; margin-bottom: 10px;">Prezime kupca: <%=k1.getPrezime_kupca() %></p>
			<p style="font-size: 28px; margin-bottom: 10px;">Adresa kupca: <%=k1.getAdresa_kupca() %></p>
		</div>
		
		
		<div id="formakupac">
		<h2 style="color: white;">Izmena podataka kupca</h2><br>
			<form action="ServletRacun" method="post">
				
				<input class="formainput" title="Ime kupca" type="text" name="ime_kupca" value="<%=k1.getIme_kupca() %>" placeholder="Vaše ime"><br>
				<input class="formainput" title="Prezime kupca" type="text" name="prezime_kupca" value="<%=k1.getPrezime_kupca() %>" placeholder="Vaše prezime"><br>
				<input class="formainput" title="Adresa kupca" type="text" name="adresa_kupca" value="<%=k1.getAdresa_kupca() %>" placeholder="Vaša adresa"><br>
				<input class="formainput" title="Korisničko ime" type="text" name="username_kupca" value="<%=k1.getUsername_kupca() %>" placeholder="Korisničko ime"><br>
				<input class="formainput" title="Korisnička šifra" type="password" name="password_kupca" value="<%=k1.getPassword_kupca() %>" placeholder="Vaš password"><br>
				<input class="formainput" title="Ponovite korisničku šifru" type="password" name="password_kupca1" value="<%=k1.getPassword_kupca() %>" placeholder="Password ponovo">
				
				<input type="hidden" name="kupac_id" value="<%=k1.getKupac_id()%>">
				<br>
				<input title="Ažuriraj podatke" class="myButton" name="akcija" type="submit" value="Azuriraj">
			</form>
	<p style="color:white; font-weight: bold;">	${msgr }</p>
		</div>
		
		<!-- Kraj za kupca!! -->

		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<hr><br>
		<!-- Pocetak tabele artikli!! -->
			
			<h2 style="text-align: center;">Podaci o obavljenim kupovinama</h2>
			<table id="tabelaartikli" width="100%">
				<tr>
					
					
					<th>Broj računa</th>
					<th>Šifra računa</th>
					<th>Datum izdavanja</th>
					<th>Odgovorno lice</th>
					<th>Naćin isporuke</th>
					<th>Ukupna cena</th>
					<th>Status</th>
					<th>Akcija</th>
					
					
				</tr>
				<% DAO dao=new DAO();
				int kupacid=k1.getKupac_id();
				int e=1;
				ArrayList<SviRacuni> sviracuni = dao.ispisRacunaKupca(kupacid);
				if(sviracuni!=null){	
					
					for(SviRacuni sv : sviracuni){
				%>			
				<tr>
					<td><%=e++ %></td>
					<td><%=sv.getRacun_id() %></td>
					<td><%=sv.getDatum_izdavanja() %></td>
					<td><%=sv.getIme_radnika() %> <%=sv.getPrezime_radnika() %></td>
					<td><%=sv.getNaziv_isporuke() %></td>
					<td><%=sv.getUkupna_cena() %></td>
					<td><%=sv.getStatus() %></td>
					<td><a title="Detalji o računu" href="ServletRacun?akcija=detalji&racun_id=<%=sv.getRacun_id() %>" class="myButton2">Detalji</a></td>
				</tr>
				<%} %>
			<%} %>
			
			
			</table>
			
			
		
		
		<!-- Kraj tabele artikli!! -->
		
		<br><br><br>
		
		<h2 class="textkontakt">Ukoliko želite da nas kontaktirate možete to uraditi klikom na sliku ispod</h2>
		
		<a href="kontakt.jsp"><img title="Kontaktirajte nas" class="linkkontakt" src="slike/kontaktbaner.jpg"></a>

		<h1 style="margin-top: 2%" class="prvinaslov">HVALA VAM NA POVERENJU!</h1><br>

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

