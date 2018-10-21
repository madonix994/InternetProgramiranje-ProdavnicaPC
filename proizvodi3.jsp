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
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 10%;">Monitor Philips 193V5</span><br>
  Cena: 8.990 din. <br>
  Dijagonala: 18.5"<br>
  Rezolucija: 1366x768 HD<br>
  Zvucnici : NE<br>
  Osvetljenje: LED<br> </p>
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="40">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/2.  Philips 193V5.jpg">
  </section>
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 17px;font-style: italic;margin-left: 10%;">Monitor Asus VB199T</span><br>
  Cena: 18.990 din. <br>
  Dijagonala: 19"<br>
  Rezolucija: 1280x1024 HD<br>
  Zvucnici : NE<br>
  Osvetljenje: LED<br> </p>
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="41">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/3. Asus VB199T.jpg">
  </section>
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 17px;font-style: italic;margin-left: 10%;">Monitor Asus VS207</span><br>
  Cena: 10.690 din. <br>
  Dijagonala: 19.5"<br>
  Rezolucija: 1366x768 HD<br>
  Zvucnici : NE<br>
  Osvetljenje: LED<br> </p>
   <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="42">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/4. Asus VS207.jpg">
  
 </section>
 
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 17px;font-style: italic;margin-left: 10%;">Monitor Dell P2014H</span><br>
  Cena: 20.990 din. <br>
  Dijagonala: 19.5"<br>
  Rezolucija: 1600x900 HD<br>
  Zvucnici : NE<br>
  Osvetljenje: LED<br> </p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="43">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/5. Dell P2014H.jpg">
</section>

  
</section>




<section class="col-md-3 col-sm-3 col-xs-12" id="red">

  <section class="col-md-12 col-sm-12 col-xs-12" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 20%;">A-Comp Frost</span><br>
  Cena: 39.999 din. <br>
  Procesor: Intel core i3 3.7 GHz<br>
  RAM: 4GB DDR4<br>
  HDD : 128GB SSD<br>
  Graficka: Intel HD Graphics<br> </p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="44">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/6. A-Comp Frost.jpg">
</section>
  
  
</section>


</section>

<section class="row" id="box">
<section class="col-md-9 col-sm-9 col-xs-12" id="red">

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 20%;">Altos Gamer X4</span><br>
  Cena: 42.999 din. <br>
  Procesor: AMD Athlon Quad-Core 3.1 GHz<br>
  RAM: 8GB DDR4<br>
  HDD : 1TB SATA<br>
  Graficka: AMD Radeon R7 250 1GB<br> </p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="45">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/7. Altos Gamer X4.jpg">
</section>
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span style="font-size: 17px;font-style: italic;">Laptop Cube i7-T Plus</span> <br>
 Cena: 29.990 din. <br>
 Procesor: Intel Atom Dual-Core Z8300 1.8GHz<br>
 RAM: 2GB DDR3<br>
 HDD: 32GB SSD<br>
 Ekran: 11.6" LED</p>
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="46">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/5. Cube i7-T Plus.jpg">
  </section>
  
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span style="font-size: 20px;font-style: italic;">Laptop HP 1040 G3</span> <br>
 Cena: 239.650 din. <br>
 Procesor: Intel Core i7 6500U 2.5GHz<br>
 RAM: 8GB DDR3<br>
 HDD: 256GB SSD<br>
 Ekran: 14" LED</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="47">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/6. HP 1040 G3.jpg">
</section>

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
 <p style="font-size: 15px;" class="textproizvod"><span style="font-size: 17px;font-style: italic;">Laptop HP 15-ay053nm White</span> <br>
 Cena: 41.290 din. <br>
 Procesor: Intel Quad-Core N3710 2.56GHz<br>
 RAM: 4GB DDR3<br>
 HDD: 500GB SATA<br>
 Ekran: 15.6" LED</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="48">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/7.  HP 15-ay053nm White.jpg">
</section>

</section>

<section class="col-md-3 col-sm-3 col-xs-12" id="red">

  <section class="col-md-12 col-sm-12 col-xs-12" id="section">
  <p class="textproizvod"><span style="font-size: 20px;font-style: italic;">Tablet Denver TAQ</span> <br>
 Cena: 5.990 din. <br>
 Procesor: 1.3GHz Quad-Core<br>
 RAM: 1GB<br>
 Rezolucija ekrana: 1024x600<br>
 Ekran: 7"</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="49">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/6. Denver TAQ.jpg">
</section>
  
  
</section>

</section>


<section class="row" id="box">
<section class="col-md-9 col-sm-9 col-xs-12" id="red">

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span style="font-size: 17px;font-style: italic;">Tablet Xwave XPad M9</span> <br>
 Cena: 9.990 din. <br>
 Procesor: 1.3GHz Quad-Core Cortex-A7<br>
 RAM: 1GB<br>
 Rezolucija ekrana: 1024x600<br>
 Ekran: 7"</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="50">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/7. Xwave XPad M9.jpg">
</section>

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
 <p class="textproizvod"><span style="font-size: 17px;font-style: italic;">Tablet VIVAX TPC-802</span> <br>
 Cena: 11.490 din. <br>
 Procesor: 1.3GHz Quad-Core Cortex-A7<br>
 RAM: 1GB<br>
 Rezolucija: 1024x800<br>
 Ekran: 8"</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="51">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/8. VIVAX TPC-802.jpg">
</section>

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 10%;">Asus VC239H</span><br>
  Cena: 21.990 din. <br>
  Dijagonala: 23"<br>
  Rezolucija: 1920x1080 Full HD<br>
  Vreme Odziva: 5ms<br>
  Osvetljenje: LED<br> </p>
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="52">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/6. Asus VC239H.jpg">
  </section>
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 10%;">Asus VS247HR</span><br>
  Cena: 18.990 din. <br>
  Dijagonala: 23.6"<br>
  Rezolucija: 1920x1080 Full HD<br>
  Vreme Odziva: 2ms<br>
  Osvetljenje: LED<br> </p>
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="53">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/7. Asus VS247HR.jpg">
</section>
  
</section>

<section class="col-md-3 col-sm-3 col-xs-12" id="red">

  <section class="col-md-12 col-sm-12 col-xs-12" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 10%;">Asus MG278Q</span><br>
  Cena: 71.990 din. <br>
  Dijagonala: 27"<br>
  Rezolucija: 2560 x 1440 Full HD<br>
  Vreme Odziva: 1ms<br>
  Osvetljenje: LED<br> </p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="54">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/8.  Asus MG278Q.jpg">
</section>
  
  
</section>

</section>


<section class="row" id="box">
<section class="col-md-9 col-sm-9 col-xs-12" id="red">

<section class="col-md-3 col-sm-3 col-xs-3" id="section">
<p class="textproizvod"><span style="font-size: 17px;font-style: italic;">Laptop ASUS N752VX</span> <br>
 Cena: 123.390 din. <br>
 Procesor: Intel Core i7-7005U 3.5GHz<br>
 RAM: 16GB DDR3<br>
 HDD: 1TB SATA<br>
 Ekran: 17.3" HD LED</p> 
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="55">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/8. ASUS N752VX.jpg">
</section>

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
<p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 20%;">A-COMP Clasic</span><br>
  Cena: 19.999 din. <br>
  Procesor: Intel Dual-Core 4160 2.8GHz<br>
  RAM: 4GB DDR4<br>
  HDD : 320GB HDD<br>
  Graficka: Intel HD Graphics<br> </p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="56">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/8. A-COMP Clasic.jpg">
  </section>
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 20%;">A-COMP Player</span><br>
  Cena: 41.999 din. <br>
  Procesor: Intel Dual-Core 4160 3.3GHz<br>
  RAM: 4GB DDR4<br>
  HDD : 320GB HDD<br>
  Graficka: AMD Radeon R7 250 1GB<br> </p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="57">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/9. A-COMP Player.jpg">
</section>

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span style="font-size: 17px;font-style: italic;">Tablet Stark Groove 7G</span> <br>
 Cena: 8.990 din. <br>
 Procesor: Cortex A7 1.3GHz Quad-Core<br>
 RAM: 1GB<br>
 Rezolucija ekrana: 1024x600<br>
 Ekran: 7"</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="58">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/9. Stark Groove 7G.jpg">
</section>
  
</section>

<section class="col-md-3 col-sm-3 col-xs-12" id="red">

  <section class="col-md-12 col-sm-12 col-xs-12" id="section">
  <p class="textproizvod"><span style="font-size: 20px;font-style: italic;">Laptop MacBook Pro 15</span> <br>
 Cena: 427.800 din. <br>
 Procesor: Intel Core i7-6820HQ 3.6GHz<br>
 RAM: 16GB DDR3<br>
 HDD: 512 SSD<br>
 Ekran: 15.4" HD LED</p> 
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="59">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/9. MacBook Pro 15.jpg">
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
