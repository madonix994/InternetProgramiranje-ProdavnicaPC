<%@page import="java.util.ArrayList"%>
<%@page import="rs.Kupac"%>
<%@page import="rs.Artikal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Proizvodi</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


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
	text-decoration: none;
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


#navproizvoda{
height:240px;
background-color: white;
}

#navproizvoda img{
height: 80%;
width:80%;
}

#navproizvoda p{
font-size: 28px;
text-align:center;
color:dodgerblue;
}


#navproizvoda img:hover{
height: 100%;
width:100%;
background-color: dodgerblue;
border-radius: 30px;
	
}
.dugmekupi {
	background-color:#44c767;
	-moz-border-radius:28px;
	-webkit-border-radius:28px;
	border-radius:28px;
	border:1px solid #18ab29;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	padding:4px 15px;
	text-decoration:none;
}
.dugmekupi:hover {
	background-color:#5cbf2a;
}
.dugmekupi:active {
	position:relative;
	top:1px;
}


</style>
<link rel="icon" href="slike/plavo A.jpg">
</head>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<%
    HttpSession sesija=request.getSession();
    
   Kupac k1=(Kupac)sesija.getAttribute("ulogovan");
    
  
   
    %>
    
   
    
   

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
<br><button class="dugmekorpa"><a class="linkkorpa" href="Controller?akcija=pregled">PREGLED KORPE</a></button>
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
    	<h2 class="prvinaslov">ODABERITE KATEGORIJU PROIZVODA</h2><br>
		
		<div id="strana" class=".container-fluid" >

<section class="col-md-12 col-sm-12 col-xs-12" id="red" style="margin-bottom: 5%;">

  	<section class="col-md-3 col-sm-3 col-xs-3" id="navproizvoda">
<p >Desktop Računari</p>
<a href="ServletKategorije?akcija=Kategorije&tip_artikla_id=1"><img src="slike/desktop_computer.png" ></a>

	</section>
	
	<section class="col-md-3 col-sm-3 col-xs-3" id="navproizvoda">
<p >Laptop</p>
<a href="ServletKategorije?akcija=Kategorije&tip_artikla_id=2"><img src="slike/laptop-png-metalmarious_laptop.png" ></a>
	</section>
	
	<section class="col-md-3 col-sm-3 col-xs-3" id="navproizvoda">
<p >Tableti</p>
<a href="ServletKategorije?akcija=Kategorije&tip_artikla_id=4"><img src="slike/tablet-computer-clipart-c44de825.png"></a>
	</section>
	
	<section class="col-md-3 col-sm-3 col-xs-3" id="navproizvoda">
<p >Monitori</p>
<a href="ServletKategorije?akcija=Kategorije&tip_artikla_id=3"><img src="slike/computer-monitor-Lateral.png"></a>
	</section>
</section>

<h1 class="prvinaslov">Pogledajte sve nase proizvode</h1><br>


<section class="row" id="box">
<section class="col-md-9 col-sm-9 col-xs-12" id="red">

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span style="font-size: 20px;font-style: italic;">Laptop Asus X540LJ</span> <br>
 Cena: 53.000 din. <br>
 Procesor: Intel Dual Core i3-5005U 2.0GHz<br>
 RAM: 4GB DDR3<br>
 HDD: 1TB SATA<br>
 Ekran: 15.6" HD LED</p> 
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="20">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/ASUS X540LJ.png">
  </section>
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 10%;">Lenovo LED 27</span><br>
  Cena: 47.000 din. <br>
  Dijagonala: 27"<br>
  Rezolucija: 2560 x 1440 Full HD<br>
  Vreme Odziva: 4ms<br>
  Osvetljenje: LED<br> </p> 
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="21">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/LENOVO LED 27.png">
  </section>
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 10%;">Acer LED 27</span><br>
  Cena: 38.000 din. <br>
  Dijagonala: 27"<br>
  Rezolucija: 1920 x 1080 Full HD<br>
  Vreme Odziva: 1ms<br>
  Osvetljenje: LED<br> </p> 
   <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="22">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/ACER LED 27.png">
  
 </section>
 
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
   <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 10%;">AOC LED 27</span><br>
  Cena: 76.000 din. <br>
  Dijagonala: 27"<br>
  Rezolucija: 2560 x 1440 Full HD<br>
  Vreme Odziva: 1ms<br>
  Osvetljenje: LED<br> </p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="23">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/AOC LED 27.png">
</section>

  
</section>




<section class="col-md-3 col-sm-3 col-xs-12" id="red">

  <section class="col-md-12 col-sm-12 col-xs-12" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 20%;">Altos Commando</span><br>
  Cena: 45.990 din. <br>
  Procesor: AMD FX-6100 3.3GHz<br>
  RAM: 8GB DDR4<br>
  HDD : 1TB HDD<br>
  Graficka: AMD Radeon R7 250 1GB DDR5<br> </p>
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="24">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/1. Altos Commando.jpg">
</section>
  
  
</section>


</section>

<section class="row" id="box">
<section class="col-md-9 col-sm-9 col-xs-12" id="red">

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 20%;">Altos Enigma</span><br>
  Cena: 47.990 din. <br>
  Procesor: Intel Core-i5 4460 3.2GHz<br>
  RAM: 8GB DDR4<br>
  HDD : 1TB HDD<br>
  Graficka: Intel HD Graphics 4600<br> </p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="25">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/2. Altos Enigma.jpg">
</section>
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 20%;">Altos Striker</span><br>
  Cena: 49.999 din. <br>
  Procesor: Intel Core-i3 4160 3.6GHz<br>
  RAM: 8GB DDR4<br>
  HDD : 1TB HDD<br>
  Graficka: AMD Radeon R7 250 1GB<br> </p>
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="26">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/3. Altos Striker.jpg">
  </section>
  
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p style="font-size: 14px;" class="textproizvod"><span id="proizvodnaziv" style="font-size: 18px;font-style: italic;margin-left: 20%;">A-Comp Raptor</span><br>
  Cena: 49.999 din. <br>
  Procesor: AMD Athlon™ X4 Quad-Core 845<br>
  RAM: 8GB DDR4<br>
  HDD: SSD 120GB + HDD 500GB<br>
  Graficka: AMD Radeon RX460 2GB<br> </p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="27">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/4. A-Comp Raptor.jpg">
</section>

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p style="font-size: 15px;" class="textproizvod"><span id="proizvodnaziv" style="font-size: 18px;font-style: italic;margin-left: 20%;">Altos Hawk</span><br>
  Cena: 55.500 din. <br>
  Procesor: AMD Athlon™ X4 Quad-Core 840<br>
  RAM: 8GB DDR4<br>
  HDD : 1TB<br>
  Graficka: AMD Radeon RX460 2GB<br> </p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="28">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/5. Altos Hawk.jpg">
</section>

</section>

<section class="col-md-3 col-sm-3 col-xs-12" id="red">

  <section class="col-md-12 col-sm-12 col-xs-12" id="section">
  <p class="textproizvod"><span style="font-size: 20px;font-style: italic;">Laptop Acer ES1-533</span> <br>
 Cena: 34.990 din. <br>
 Procesor: Intel Quad Core N4200 2.5GHz<br>
 RAM: 4GB DDR3<br>
 HDD: 500GB SATA<br>
 Ekran: 15.6" LED</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="29">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/1. Acer ES1-533.jpg">
</section>
  
  
</section>

</section>


<section class="row" id="box">
<section class="col-md-9 col-sm-9 col-xs-12" id="red">

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span style="font-size: 17px;font-style: italic;">Laptop HP 15-ay084nm</span> <br>
 Cena: 36.990 din. <br>
 Procesor: Intel Dual Core N3060 2.0GHz<br>
 RAM: 4GB DDR3<br>
 HDD: 1TB SATA<br>
 Ekran: 15.6" LED</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="30">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/2. HP 15-ay084nm.jpg">
</section>

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span style="font-size: 17px;font-style: italic;">Laptop MacBook Pro 13</span> <br>
 Cena: 272.490 din. <br>
 Procesor: Intel i5 Dual Core 6267U 2.9GHz<br>
 RAM: 8GB DDR3<br>
 HDD: 256GB SSD<br>
 Ekran: 13.3" IPS Retina LED</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="31">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/3. MacBook Pro 13.jpg">
</section>

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
   <p class="textproizvod"><span style="font-size: 17px;font-style: italic;">Laptop Asus GL552VW</span> <br>
 Cena: 114.990 din. <br>
 Procesor: Intel Core i7 6700HQ 2.6GHz<br>
 RAM: 8GB DDR3<br>
 HDD: 1TB SATA<br>
 Ekran: 15.6" LED</p>
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="32">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/GL552VW-81-.png">
  </section>
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span style="font-size: 17px;font-style: italic;">Laptop Lenovo Legion</span> <br>
 Cena: 124.990 din. <br>
 Procesor: Intel Core i7 7700HQ 2.8GHz<br>
 RAM: 8GB DDR3<br>
 HDD: 1TB SATA<br>
 Ekran: 15.6" LED</p>
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="33">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/4. Lenovo Legion.jpg">
</section>
  
</section>

<section class="col-md-3 col-sm-3 col-xs-12" id="red">

  <section class="col-md-12 col-sm-12 col-xs-12" id="section">
  <p class="textproizvod"><span style="font-size: 20px;font-style: italic;">Tablet Apple iPad mini4</span> <br>
 Cena: 61.000 din. <br>
 Procesor: Apple A9 Dual-core 1.84 GHz<br>
 RAM: 2GB<br>
 Rezolucija ekrana: 1536 x 2048<br>
 Ekran: 9.7"</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="34">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/1. Apple iPad Cellular.jpg">
</section>
  
  
</section>

</section>


<section class="row" id="box">
<section class="col-md-9 col-sm-9 col-xs-12" id="red">

<section class="col-md-3 col-sm-3 col-xs-3" id="section">
 <p style="font-size: 15px;" class="textproizvod"><span style="font-size: 17px;font-style: italic;">Tablet Apple iPad Pro</span> <br>
 Cena: 120.000 din. <br>
 Procesor: Apple A9X Dual-core 2.16 GHz<br>
 RAM: 2GB<br>
 Rezolucija ekrana: 1536 x 2048<br>
 Ekran: 9.7"</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="35">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/2. Apple iPad mini.jpg">
</section>

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
 <p style="font-size: 15px;" class="textproizvod"><span style="font-size: 17px;font-style: italic;">Tablet Prestigio Wize</span> <br>
 Cena: 15.990 din. <br>
 Procesor: MediaTek Quad-Core 1.3GHz<br>
 RAM: 1GB<br>
 Rezolucija ekrana: 800x1280<br>
 Ekran: 10.1"</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="36">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/3. Prestigio Wize.jpg">
  </section>
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
 <p style="font-size: 14px;" class="textproizvod"><span style="font-size: 16px;font-style: italic;">Tablet Alcatel OneTouch Pixi 3</span> <br>
 Cena: 13.990 din. <br>
 Procesor: MediaTek Quad-Core 1.3GHz<br>
 RAM: 1GB<br>
 Rezolucija ekrana: 800x1280<br>
 Ekran: 10.1"</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="37">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/4. Alcatel OneTouch Pixi 3.jpg">
</section>

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
 <p style="font-size: 14px;" class="textproizvod"><span style="font-size: 16px;font-style: italic;">Tablet Lenovo Andy LiteTab</span> <br>
 Cena: 13.990 din. <br>
 Procesor: MediaTek Quad-Core 1.3GHz<br>
 RAM: 1GB<br>
 Rezolucija ekrana: 1024 x 600<br>
 Ekran: 7"</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="38">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/5. Lenovo Andy LiteTab.jpg">
</section>
  
</section>

<section class="col-md-3 col-sm-3 col-xs-12" id="red">

  <section class="col-md-12 col-sm-12 col-xs-12" id="section">
  <p class="textproizvod"><span style="font-size: 20px;font-style: italic;">Tablet Lenovo Andy LiteTab</span> <br>
  Cena: 9.500 din. <br>
  Dijagonala: 18.5"<br>
  Rezolucija: 1366x768 HD<br>
  Vreme Odziva: 5ms<br>
  Osvetljenje: LED<br> </p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="39">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/1. LG VESA.jpg">
</section>
  
  
</section>



</div>
<br><br>
		
		<div class="w3-center">
<div class="w3-bar w3-border">
  <a href="proizvodi.jsp" class="w3-bar-item w3-button">&laquo;</a>
  <a href="proizvodi.jsp" class="w3-bar-item w3-button">1</a>
  <a href="proizvodi2.jsp" class="w3-bar-item w3-button">2</a>
  <a href="proizvodi3.jsp" class="w3-bar-item w3-button">3</a>
  <a href="proizvodi3.jsp" class="w3-bar-item w3-button">&raquo;</a>
</div>
</div>
		<!--  ////////////////OVDE JE DNO KOSTURA //////////////////// -->
    </div>
  		</div>
  			</div>


<div class="futer" align="center">
 
 <p>© AVIATO | 2017. | Sva prava zadržana.</p>
 
 </div>
</body>

</html>
 
    