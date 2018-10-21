<%@page import="rs.Artikal"%>
<%@page import="java.util.ArrayList"%>
<%@page import="rs.Kupac"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>O Nama</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"> </script>

<script>

$(document).ready(function() {
    
	$("#content").mouseover(function(){
		$(".desni").animate({
			
			left:'0px',
			marginBottom:"0px",
			marginTop:"0px",
			
			
			},2000); 
	$(".levi").animate({
			
			left:'0px',
			marginBottom:"0px",
			marginTop:"0px"
			
			},2000);
			 });
	
	
});


</script>


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
.licna2
{
	display: none;
}


/*-------------------------------------------------------------------------------------------------------------------------*/
															/*SADRZAJ!*/
/*-------------------------------------------------------------------------------------------------------------------------*/

.prvidiv{
	margin-bottom:50px;
	background-color:#FFFFFF;
	width:90%;
	padding:20px;
	margin-left:50px;
	border:2px solid #CCCCCC;
	border-radius:25px;
	font-family:Tahoma, Geneva, sans-serif;
	font-size:20px;
	text-align:justify;
	height:1500px;
	box-shadow: 0px 0px 15px black;
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

.prvidiv h1{
	text-align:center;
	color:#0099FF;}


	
/*Podesavanje slike profila!*/	
.prvidiv .licna{
	height:200px;
	width:200px;
	margin-left:100px;
	margin-right:100px;
	}



/*Podesavanje kontakt slicica!*/
.kontakti{
	padding-top:15px;
	padding-left:30px;
	padding-right:10px;
	height:70px;
	width:70px;
	}
	

	
/*Podesavanje prvog div-a sa profil slicicom i citatom!*/
#bez{
padding-bottom:0px;
padding-top:40px;
height:350px;
width:420px;
color:white;
border-right:none;
text-align:center;
	}

	
	
/*Podesavanje drugog div-a sa informacijama o clanu!*/
#bez1{
	padding-top:30px;
color:white;
margin-top:-390px;
margin-left:410px;
width:420px;
	}



/*Podesavanje treceg div-a sa kontakt slicicama!*/	
#sa{ 
border-left:dotted;
height:400px;
margin-top:-399px;
margin-left:875px;
width:120px;
height:400px;
color:white;
background:url(slike/papir.jpg);
	border-radius:20px;}	



/*Podesavanje levih div-ova tj. kartica!*/
.levi{ 
position:relative;
width:1000px;
right:935px;
clear:both;
height:400px;
}	


/*Podesavanje desnih div-ova tj. kartica!*/
.desni{
position:relative;
width:950px;
margin-bottom:30px;
margin-top:-30px;
left:900px;
clear:both;
height:400px;
float:right;
	}


/*Podesavanje treceg div-a sa profil slicicom i citatom!*/
#bez2{
height:400px;
margin-top:-330px;
margin-left:430px;
width:350px;
height:350px;
color:white;
text-align:center;
	}




/*Podesavanje drugog div-a sa informacijama o clanu!*/
#bez3{
	border-right:none;
	margin-top:-400px;
	width:400px;
	margin-left:0px;
	color:white;
	}
	
	
	
	
/*Podesavanje prvog div-a sa kontakt slicicama!*/	
#sa1{ 
border-right:dotted;
width:130px;
height:380px;
margin-top:0px;
border-radius:20px;
border-right:dotted;
color:white;
background:url(slike/papir.jpg);
margin-left:10px;}




/*Podesavanje levog div-a sa prvim i drugim div-om u svrhe boje kartice!*/	
#boja{
	width:872px;
	height:400px;
	background:url(slike/papir.jpg);
	border-radius:20px;
	border-right:dotted;
	color:white;}
	
	
	
	
/*Podesavanje desnog div-a sa drugim i trecim div-om u svrhe boje kartice!*/	
#boja1{
	width:800px;
	height:381px;
	background:url(slike/papir.jpg);
	color:white;
	border-radius:20px;
	border-left:dotted;
	color:white;
	margin-left:143px;
	margin-top:-10px;
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
.imenanas
{
	display: none;
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
.dugmekorpa
{
	width: 100%;
	text-decoration: none;
	color: white;
	background: url(slike/papir.png);
	border: none;
	height: 29px;
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
	text-align: center;
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
.levi
{
	display: none;
	
}
.desni
{
	display: none;
}
.licna2
{
	width: 90%;
	margin-left:5%;
	background-image: url(slike/papir.png);
}
.imenanas
{
	display:block;
	font-size:30px;
	font-weight:bold;
	text-align: center;
	margin-top: 10px;
	margin-bottom: 10px;
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
.levi
{
	display: none;
	
}
.desni
{
	display: none;
}
.licna2
{
	width: 90%;
	margin-left:5%;
	background-image: url(slike/papir.png);
}
.imenanas
{
	display:block;
	font-size:30px;
	font-weight:bold;
	text-align: center;
	margin-top: 10px;
	margin-bottom: 10px;
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
</style>
<link rel="icon" href="slike/plavo A.jpg">
</head>
<%
    HttpSession sesija=request.getSession();
    
   Kupac k1=(Kupac)sesija.getAttribute("ulogovan");%>
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
	<span class="hidespan" style="color:white;float: right;">Niste prijavljeni<a href="prijava.jsp" style="text-decoration: none; color:white;">(Prijavi se)</a></span>
	<%}else if(k1!=null){ %>
	<span class="hidespan" style="color:white;float: right;"><%=k1.getIme_kupca() %> <%=k1.getPrezime_kupca() %> <a href="Controller?akcija=OdjaviSe" style="text-decoration: none; color:white;">(Odjavi se)</a></span>
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
      
      	<h1 class="prvinaslov">O Nama</h1>
      <br>
     	<p> Naš tim <span style=" font-weight:bold; color:#0099FF">„AVIATO“</span> čini grupa mladih ljudi koji imaju potencijal da postano dobri IT stručnjaci, kako u polju web dizajna, tako i u polju programiranja. Tim se sastoji od 3 osobe, koje se trude da obavljaju i izvršavaju sve svoje obaveze za koje su zaduženi. Svaki član našeg tima biće predstavljen u okviru ove stranice. Naš tim se sastoji od 3 osobe, od kojih je svaka zadužena najmanje za jednu stavku u procesu kreiranja i održavanja web sajta. Uloge članova tima su različite, od sakupljanja informacija i analiza ciljnih grupa, preko kreativnog osmišljanja sadržaja do formiranja strukture sajta i stranica. Uloge su podeljene tako da svaki član tima podjednako učestvuje u svim poljima formiranja web sajta.</p>
      
      
      
      <br><br>
      <div class="levi">
      	<div id="boja">
      
      		<div id="bez"><img src="slike/rema.gif" class="licna" alt="Vukovic Marko">
  <pre>
<b> "Prvo će ti se smejati,
 potom će te ignorisati, 
 onda će se boriti protiv tebe, 
 zatim ćeš pobediti"</b>
  </pre>
     		 </div>
      		<div id="bez1">
<pre>
 <b>Ime i prezime:</b> Marko Vuković

 <b>Zanimanje:</b> Student FTN-a u Čačku

 <b>Broj Indeksa:</b> 15/2014

 <b>Datum Rodjenja:</b>12.11.1995 god.

 <b>Adresa:</b>Hasana Brkića 3 (Kragujevac)

 <b>Broj Telefona:</b> 061/155-33-11

 <b>e-mail:</b>  marko.vukovickg95@gmail.com
</pre>

			</div>
   		</div>
        
      		<div id="sa">
      
 <a href="https://www.facebook.com/marko.vukovic.505"><img src="slike/facebook.png" class="kontakti" alt="facebook"></a>
 <a href="https://sway.com/v4wQVOt4n6G1cSx4"><img src="slike/sway.png" class="kontakti" alt="sway"></a>
 <a href="https://www.instagram.com/mr.vukovic7/"><img src="slike/instagram.png" class="kontakti" alt="instagram"></a>
 <a href="mailto:marko.vukovickg95@gmail.com"><img src="slike/outlook.png" class="kontakti" alt="e-mail"></a>
 
 			</div>
 	</div>    
        
      <br><br>
      
		<div class="desni">
  
				<div id="sa1">
     <a href="https://www.facebook.com/stefan.djusic.58"> <img src="slike/facebook.png" class="kontakti" alt="facebook"><br> </a>
    <a href="https://sway.com/a4ePVUaVUNcSAsbJ"> <img src="slike/sway.png" class="kontakti" alt="sway"> <br></a>
    <a href="https://www.instagram.com/djuskoo95/"> <img src="slike/instagram.png" class="kontakti" alt="instagram"> <br> </a>
     <a href="mailto:djule95@live.com"><img src="slike/outlook.png" class="kontakti" alt="e-mail"></a>
      			</div>
     
			<div id="boja1">
				<div id="bez3">
      
<pre>

  <b>Ime i Prezime:</b> Stefan Đusić

  <b>Zanimanje:</b> Student FTN-a u Čačku

  <b>Broj indeksa:</b> 13/2014

  <b>Datum Rodjenja:</b>18.09.1995 god.

  <b>Adresa:</b> Đ. Andrejevića 5 (Kragujevac)

  <b>Broj telefona:</b> 062/625-059

  <b>e-mail:</b> djule95@live.com

</pre>

				</div>


				<div id="bez2">
 <img src="slike/djus.gif" class="licna" alt="Djusic Stefan">
  <pre>
 <b>"In the end, people will judge
  you anyway, so don't live your
  life impressing others, live 
  your life impressing yourself"</b>
  </pre>
 
 				</div>
			</div>
 		</div>
  
  <br><br>
 
  	<div class="levi">
  		<div id="boja">
   
    		<div id="bez">
    		<img src="slike/peja.gif" class="licna" alt="Kolovic Predrag">
  <pre>
  <b>“Ako ne ti, ko?
  Ako ne sad, kad?”</b>
  </pre>
     		</div>
      
      		<div id="bez1">
<pre>
  
  <b>Ime i prezime:</b> Predrag Kolović

  <b>Zanimanje:</b> Student FTN-a u Čačku

  <b>Broj Indeksa:</b> 320/2015

  <b>Datum rođenja:</b> 15.03.1994

  <b>Adresa:</b> Moše Pijade 17/18 (Kraljevo)

  <b>Broj telefona:</b> 061/422-96-96

  <b>e-mail:</b> madonix994@gmail.com

</pre>

			</div>
		</div>
  
     		<div id="sa">
      
 <a href="https://www.facebook.com/predrag.kolovic?fref=hovercard">  <img src="slike/facebook.png" class="kontakti" alt="facebook"></a>
     <a href="https://sway.com/S507tWyhvM5rxBb5"> <img src="slike/sway.png" class="kontakti" alt="sway"> </a>
     <a href="https://www.instagram.com/madonix994/"> <img src="slike/instagram.png" class="kontakti" alt="instagram"> </a>
     <a href="mailto:madonix994@gmail.com">  <img src="slike/outlook.png" class="kontakti" alt="e-mail"></a>
 
 			</div>
  

	</div>
		<img src="slike/djus.gif" class="licna2" alt="Djusic Stefan">
		 	<p class="imenanas">Stefan Đusić</p>
		<img src="slike/rema.gif" class="licna2" alt="Vukovic Marko">
			<p class="imenanas">Marko Vuković</p>
		<img src="slike/peja.gif" class="licna2" alt="Kolovic Predrag">
			<p class="imenanas">Predrag Kolović</p> 
    </div>
    
  </div>
  
</div>


<div class="futer" align="center">
 
 <p>© AVIATO | 2017. | Sva prava zadržana.</p>
 
    </div>
</body>
</html>

