<%@page import="rs.Kupac"%>
<%@page import="java.util.ArrayList"%>
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
	if(lk!=null && lk.size()>0){%>
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



<h2 style="color: dodgerblue;text-align: center;">POGLEDAJTE SVE NAŠE PROIZVODE</h2><br>
<section class="row" id="box">
<section class="col-md-9 col-sm-9 col-xs-12" id="red">

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
 <p class="textproizvod"><span style="font-size: 20px;font-style: italic;">Laptop Dell Inspiron</span> <br>
 Cena: 60.000 din. <br>
 Procesor: Intel Core i3-3217U 1.8GHz<br>
 RAM: 4GB DDR3<br>
 HDD: 500GB SATA<br>
 Ekran: 15.6" LED</p> 
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="1">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/Dell Inspiron.jpg">
   
  </section>
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 20%;">GLADIUS</span><br>
  Cena: 174.440 din. <br>
  Procesor: AMD Ryzen 3.0 GHz<br>
  RAM: 8GB DDR4<br>
  HDD 1: 120GB SSD<br>
  HDD 2: 1TB HDD<br> </p>
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="2">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/Gladius.jpg">
  </section>
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 20%;">KAMELEON</span><br>
  Cena: 31.500 din. <br>
  Procesor: Intel Pentium 3.50 GHz<br>
  RAM: 4GB DDR4<br>
  HDD : 1TB HDD<br>
  Graficka: Integrisana HD 610<br> </p>
   <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="3">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/Kameleon.png">
  
 </section>
 
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 10%;">HP PRO DISPLAY</span><br>
  Cena: 22.000 din. <br>
  Dijagonala: 21.5"<br>
  Rezolucija: 1920 x 1080 Full HD<br>
  Zvucnici : DA<br>
  Osvetljenje: LED<br> </p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="4">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/hp pro display.png">
</section>

  
</section>




<section class="col-md-3 col-sm-3 col-xs-0" id="red" >
<section class="col-md-12 col-sm-12 col-xs-12" id="velika">
<p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 10%;">HP ENVY All-in-One</span><br>
  <br>Cena: 357.770 din. <br>
  Procesor: Intel Core i7 3.8 GHz <br>
  RAM: 16GB DDR4<br>
  Graficka:NVIDIA GeForce GTX 950M 4 GB<br>
  HDD : 1TB HDD<br>
  Dijagonala: 27"<br>
  Ekran osetljiv na dodir: DA<br>
  Periferije: HP ENVY bežični miš + HP ENVY bežična tastatura<br>
  Rezolucija: 3840 x 2160 <br>
  Operativni sistem: Windows 10 Home 64bit</p>
<form action="Controller" method="post" class="kupovanje">

  <input type="hidden" name="artikal_id" value="16">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod1" src="slike/hpEnvy.png">



</section>

</section>


</section>

<section class="row" id="box">
<section class="col-md-9 col-sm-9 col-xs-12" id="red">
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 10%;">Monitor Dell 23</span><br>
  Cena: 27.000 din. <br>
  Dijagonala: 23"<br>
  Rezolucija: 1920 x 1080 Full HD<br>
  Zvucnici : DA<br>
  Osvetljenje: LED<br> </p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="5">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/dell23.png">
</section>
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span style="font-size: 18px;font-style: italic;">Laptop Acer Aspire </span> <br>
 Cena: 36000<br>
 Procesor: Intel QuadCore 2.0GHz<br>
 RAM: 4GB DDR3<br>
 HDD: 500GB SATA<br>
 Ekran: 15.6" LED</p>
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="6">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/acer aspire e1-510.jpg">
  </section>
  
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span style="font-size: 18px;font-style: italic;">Tablet Apple iPad Pro</span> <br>
 Cena: 120.000 din. <br>
 Procesor: Apple A9X Dual-core 2.16 GHz<br>
 RAM: 2GB<br>
 Rezolucija: 1536 x 2048<br>
 Ekran: 9.7"</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="7">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/appleipadpro.png">
</section>

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span style="font-size: 20px;font-style: italic;">Tablet eStar Beauty</span> <br>
 Cena: 6.800 din. <br>
 Procesor: Cortex A7 Quad-core 1.2GHz<br>
 RAM: 512MB<br>
 Rezolucija: 1024 x 600<br>
 Ekran: 7"</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="8">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/eSTAR.png">
</section>
</section>


</section>


<section class="row" id="box">
<section class="col-md-9 col-sm-9 col-xs-12" id="red">

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
 <p class="textproizvod"><span style="font-size: 20px;font-style: italic;">Tablet Tesla L7.1</span> <br>
 Cena: 13.500 din. <br>
 Procesor: MediaTek Quad-core 1.3GHz<br>
 RAM: 1GB<br>
 Rezolucija: 1024 x 600<br>
 Ekran: 7"</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="9">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/TESLA L7.1.png">
</section>

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span style="font-size: 18px;font-style: italic;">Samsung Galaxy Tab E</span> <br>
 Cena: 22.100 din. <br>
 Procesor: Cortex A7 1.3GHz<br>
 RAM: 1.5GB<br>
 Rezolucija: 1024 x 600<br>
 Ekran: 9.6"</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="10">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/SAMSUNG Galaxy Tab E.png">
</section>

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span style="font-size: 16px;font-style: italic;">Tablet Apple iPad mini4</span> <br>
 Cena: 61.000 din. <br>
 Procesor: Apple A9 Dual-core 1.84 GHz<br>
 RAM: 2GB<br>
 Rezolucija: 1536 x 2048<br>
 Ekran: 9.7"</p>
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="11">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/Apple iPad mini 4.png">
  </section>
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
   <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 20%;">Game Archer II</span><br>
  Cena: 46.000 din. <br>
  Procesor: AMD Athlon 3.50 GHz<br>
  RAM: 8GB DDR4<br>
  HDD : 1TB HDD<br>
  Graficka: AMD Radeon R7 250<br> </p>
  <form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="12">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/gamearcher2.png">
</section>
  
</section>

<section class="col-md-3 col-sm-3 col-xs-12" id="red">

  <section class="col-md-12 col-sm-12 col-xs-12" id="section">
  <p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 20%;">Game White</span><br>
  Cena: 99.000 din. <br>
  Procesor: Intel core i5 2.7 GHz<br>
  RAM: 8GB DDR4<br>
  HDD : 1TB HDD<br>
  Graficka: AMD Radeon RX 470<br> </p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="13">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/gamewhite.png">
</section>
  
  
</section>

</section>


<section class="row" id="box">
<section class="col-md-9 col-sm-9 col-xs-12" id="red">

<section class="col-md-3 col-sm-3 col-xs-3" id="section">
<p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 20%;">Supernova</span><br>
  Cena: 255.500 din. <br>
  Procesor: Intel core i5 3.6GHz<br>
  RAM: 16GB DDR4<br>
  HDD : 240GB SSD<br>
  Graficka: AMD Radeon RX 480<br> </p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="14">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/supernova.png">
</section>

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
<p class="textproizvod"><span id="proizvodnaziv" style="font-size: 20px;font-style: italic;margin-left: 20%;">HP Pro Desk</span><br>
  Cena: 137.770 din. <br>
  Procesor: Intel core i7 3.6GHz<br>
  RAM: 8GB DDR4<br>
  HDD : 1TB<br>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="15">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/hpprodesk.jpg">
  </section>
  
  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span style="font-size: 20px;font-style: italic;">Laptop MacBook Air</span> <br>
 Cena: 184.500 din. <br>
 Procesor: Intel Core i5 2.7GHz<br>
 RAM: 4GB DDR3<br>
 HDD: 256GB SSD<br>
 Ekran: 11" LED</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="17">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/MacBook Air.jpg">
</section>

  <section class="col-md-3 col-sm-3 col-xs-3" id="section">
  <p class="textproizvod"><span style="font-size: 18px;font-style: italic;">Laptop Idea Pad MiiX</span> <br>
 Cena: 36.100 din. <br>
 Procesor: Intel Quad-Core 1.9GHz<br>
 RAM: 2GB DDR3<br>
 HDD: 32GB<br>
 Ekran: 10.1" LED</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="18">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/Lenovo IdeaPad Miix.jpg">
</section>
  
</section>

<section class="col-md-3 col-sm-3 col-xs-12" id="red">

  <section class="col-md-12 col-sm-12 col-xs-12" id="section">
  <p class="textproizvod"><span style="font-size: 20px;font-style: italic;">Laptop Idea Pad V110</span> <br>
 Cena: 35.100 din. <br>
 Procesor: Intel Dual-Core 1.1GHz<br>
 RAM: 4GB DDR3<br>
 HDD: 500GB<br>
 Ekran: 15.6" LED</p>
<form action="Controller" method="post" class="kupovanje">
  <input type="hidden" name="artikal_id" value="19">
  <input class="dugmekupi" type="submit" name="akcija" title="Kupi ovaj proizvod" value="Kupi">
  </form>
  <img class="proizvod" src="slike/LENOVO IdeaPad V110.png">
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

