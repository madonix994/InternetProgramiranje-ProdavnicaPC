<%@page import="java.util.ArrayList"%>
<%@page import="rs.Artikal"%>
<%@page import="rs.Kupac"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Administrator</title>

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

#divuserslika
{
	margin-left:5%;
	margin-top:-2%;
	width:40%;
	padding: 2%;
}
#ulogovaniime
{
	width:41%;
	position:absolute;
	right: 5%;
	font-size: 24px;
	top:15%;
}
.tooltip3 .odjavatext {
    visibility: hidden;
    width: 240px;
    background-color: dodgerblue;;
    color: white;
    text-align: center;
    font-size:15px;
    border-radius: 6px;
    margin-top:60px;
    margin-left:25%;
    border-top-right-radius:20px;
    border-top-left-radius:20px;
    border:1px solid skyblue;
   
    /* Position the tooltip */
    position: absolute;
    z-index: 1;
}

.tooltip3:hover .odjavatext {
    visibility: visible;
}
#odjavadugme
{
	margin-left:35%;
	margin-top:3%;
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
	margin-left:35.7%;
	width: 130px;
	height: 41px;
	background: url(slike/papir.png);
	color:white;
	font-weight:bold;
	font-size: 18px;
	border-radius: 15px;
}
#racunidiv
{
	position: absolute;
	margin-left: 7%;
	margin-top: 25%;
	width: 15%;
	text-align: center;
}
#racunidivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
}
#racunidivslika:hover
{
	border: 2px solid green;
	padding: 2px;
}
#porukediv
{
	position: absolute;
	margin-left: 29.5%;
	margin-top: 2%;
	width: 15%;
	text-align: center;
}
#porukedivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
}
#porukedivslika:hover
{
	border: 2px solid green;
	padding: 2px;
}




#artiklidiv
{
	position: absolute;
	margin-left: 75%;
	margin-top: 2%;
	width: 14%;
	text-align: center;
}
#artiklidivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 7px;
}
#artiklidivslika:hover
{
	border: 2px solid green;
	padding: 8px;
}


#kupcidiv
{
	position: absolute;
	margin-left: 75%;
	margin-top: 25%;
	width: 14.5%;
	text-align: center;
	height: 12%;
}
#kupcidivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 7px;
}
#kupcidivslika:hover
{
	border: 2px solid green;
	padding: 8px;
}



#kategorijediv
{
	position: absolute;
	margin-left: 53%;
	margin-top: 2%;
	width: 14%;
	text-align: center;
}
#kategorijedivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 15px;
}
#kategorijedivslika:hover
{
	border: 2px solid green;
	padding: 17px;
}

#radnicidiv
{
	position: absolute;
	margin-left: 7%;
	margin-top: 2%;
	width: 15%;
	text-align: center;
}
#radnicidivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 6px;
}
#radnicidivslika:hover
{
	border: 2px solid green;
	padding: 8px;
}
#isporukediv
{
	position: absolute;
	margin-left: 28.5%;
	margin-top: 25%;
	width: 17%;
	text-align: center;
}
#isporukedivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 7px;	
}
#isporukedivslika:hover
{
	border: 2px solid green;
	padding: 9px;
}
#dobavljacidiv
{
	position: absolute;
	margin-left: 52.5%;
	margin-top: 25%;
	width: 15%;
	text-align: center;
}
#dobavljacidivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 5px;
}
#dobavljacidivslika:hover
{
	border: 2px solid green;
	padding: 7px;
}


#unosradnikadiv
{
	position: absolute;
	left: 2.7%;
	top: 82%;
	width: 15%;
	text-align: center;
}
#unosradnikadivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 5px;
}
#unosradnikadivslika:hover
{
	border: 2px solid green;
	padding: 7px;
}

#unoskategorijediv
{
	position: absolute;
	left: 21.7%;
	top: 82%;
	width: 16%;
	height:11.8%;
	text-align: center;
}
#unoskategorijedivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 300px;
	padding: 5px;
}
#unoskategorijedivslika:hover
{
	border: 2px solid green;
	padding: 7px;
}

#unosisporukediv
{
	position: absolute;
	left: 41.7%;
	top: 82%;
	width: 17%;
	text-align: center;
}
#unosisporukedivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 300px;
	padding: 5px;
}
#unosisporukedivslika:hover
{
	border: 2px solid green;
	padding: 7px;
}
#unosdobavljacadiv
{
	position: absolute;
	left: 62.7%;
	top: 82%;
	width: 15%;
	text-align: center;
}
#unosdobavljacadivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 5px;
}
#unosdobavljacadivslika:hover
{
	border: 2px solid green;
	padding: 7px;
}


#unosartikladiv
{
	position: absolute;
	left: 81.7%;
	top: 82%;
	width: 15%;
	text-align: center;
	height: 12%;
}
#unosartikladivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 5px;
}
#unosartikladivslika:hover
{
	border: 2px solid green;
	padding: 7px;
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
#divuserslika
{
	display: none;
}
#ulogovaniime
{
	display: none;
}

hr
{
	display: none;
}
#racunidiv
{
	position: absolute;
	margin-left: 10%;
	margin-top: 25%;
	width: 15%;
	text-align: center;
}
#racunidivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
}
#racunidivslika:hover
{
	border: 2px solid green;
	padding: 2px;
}
#porukediv
{
	position: absolute;
	margin-left: 42%;
	margin-top: -4%;
	width: 15%;
	text-align: center;
}
#porukedivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
}
#porukedivslika:hover
{
	border: 2px solid green;
	padding: 2px;
}
#kategorijediv
{
	position: absolute;
	margin-left: 72%;
	margin-top: -4%;
	width: 15%;
	text-align: center;
}
#kategorijedivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 15px;
}
#kategorijedivslika:hover
{
	border: 2px solid green;
	padding: 17px;
}
#radnicidiv
{
	position: absolute;
	margin-left: 10%;
	margin-top: -4%;
	width: 15%;
	text-align: center;
}
#radnicidivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 6px;
}
#radnicidivslika:hover
{
	border: 2px solid green;
	padding: 8px;
}

#isporukediv
{
	position: absolute;
	margin-left: 41%;
	margin-top: 25%;
	width: 17%;
	text-align: center;
}
#isporukedivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 7px;	
}
#isporukedivslika:hover
{
	border: 2px solid green;
	padding: 9px;
}
#dobavljacidiv
{
	position: absolute;
	margin-left: 72%;
	margin-top: 25%;
	width: 15%;
	text-align: center;
}
#dobavljacidivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 5px;
}
#dobavljacidivslika:hover
{
	border: 2px solid green;
	padding: 7px;
}
#unosradnikadiv
{
	position: absolute;
	left: 8%;
	top: 65%;
	width: 15%;
	text-align: center;
}
#unosradnikadivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 5px;
}
#unosradnikadivslika:hover
{
	border: 2px solid green;
	padding: 7px;
}

#unoskategorijediv
{
	position: absolute;
	left: 30%;
	top: 65%;
	width: 16%;
	height:11.8%;
	text-align: center;
}
#unoskategorijedivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 300px;
	padding: 5px;
}
#unoskategorijedivslika:hover
{
	border: 2px solid green;
	padding: 7px;
}

#unosisporukediv
{
	position: absolute;
	left: 53%;
	top: 65%;
	width: 17%;
	text-align: center;
}
#unosisporukedivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 300px;
	padding: 5px;
}
#unosisporukedivslika:hover
{
	border: 2px solid green;
	padding: 7px;
}
#unosdobavljacadiv
{
	position: absolute;
	left: 77%;
	top: 65%;
	width: 15%;
	text-align: center;
}
#unosdobavljacadivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 5px;
}
#unosdobavljacadivslika:hover
{
	border: 2px solid green;
	padding: 7px;
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
#divuserslika
{
	display: none;
}
#ulogovaniime
{
	display: none;
}

hr
{
	display: none;
}
#racunidiv
{
	position: absolute;
	margin-left: 10%;
	margin-top: 25%;
	width: 15%;
	text-align: center;
}
#racunidivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
}
#racunidivslika:hover
{
	border: 2px solid green;
	padding: 2px;
}
#porukediv
{
	position: absolute;
	margin-left: 42%;
	margin-top: -4%;
	width: 15%;
	text-align: center;
}
#porukedivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
}
#porukedivslika:hover
{
	border: 2px solid green;
	padding: 2px;
}
#kategorijediv
{
	position: absolute;
	margin-left: 72%;
	margin-top: -4%;
	width: 15%;
	text-align: center;
}
#kategorijedivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 15px;
}
#kategorijedivslika:hover
{
	border: 2px solid green;
	padding: 17px;
}
#radnicidiv
{
	position: absolute;
	margin-left: 10%;
	margin-top: -4%;
	width: 15%;
	text-align: center;
}
#radnicidivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 6px;
}
#radnicidivslika:hover
{
	border: 2px solid green;
	padding: 8px;
}

#isporukediv
{
	position: absolute;
	margin-left: 41%;
	margin-top: 25%;
	width: 17%;
	text-align: center;
}
#isporukedivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 7px;	
}
#isporukedivslika:hover
{
	border: 2px solid green;
	padding: 9px;
}
#dobavljacidiv
{
	position: absolute;
	margin-left: 72%;
	margin-top: 25%;
	width: 15%;
	text-align: center;
}
#dobavljacidivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 5px;
}
#dobavljacidivslika:hover
{
	border: 2px solid green;
	padding: 7px;
}
#unosradnikadiv
{
	position: absolute;
	left: 8%;
	top: 65%;
	width: 15%;
	text-align: center;
}
#unosradnikadivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 5px;
}
#unosradnikadivslika:hover
{
	border: 2px solid green;
	padding: 7px;
}

#unoskategorijediv
{
	position: absolute;
	left: 30%;
	top: 65%;
	width: 16%;
	height:11.8%;
	text-align: center;
}
#unoskategorijedivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 300px;
	padding: 5px;
}
#unoskategorijedivslika:hover
{
	border: 2px solid green;
	padding: 7px;
}

#unosisporukediv
{
	position: absolute;
	left: 53%;
	top: 65%;
	width: 17%;
	text-align: center;
}
#unosisporukedivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 300px;
	padding: 5px;
}
#unosisporukedivslika:hover
{
	border: 2px solid green;
	padding: 7px;
}
#unosdobavljacadiv
{
	position: absolute;
	left: 77%;
	top: 65%;
	width: 15%;
	text-align: center;
}
#unosdobavljacadivslika
{
	border: 2px solid dodgerblue;
	border-radius: 5px;
	height: 100%;
	max-height: 200px;
	padding: 5px;
}
#unosdobavljacadivslika:hover
{
	border: 2px solid green;
	padding: 7px;
}


}

#slider
{
	width: 95%;
	margin-left: 2.7%;
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

.divPoruke{
	margin-bottom: 10%;
	text-align: center;
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
	
	<%if(k==null){ %>
	<span class="hidespan" style="color:white;float: right;">Niste prijavljeni<a href="prijava.jsp" style="text-decoration: none; color:white;">(Prijavi se)</a></span>
	<%}else if(k!=null){ %>
	<span class="hidespan" style="color:white;float: right;"><%=k.getIme_kupca() %> <%=k.getPrezime_kupca() %> <a href="Controller?akcija=OdjaviSe" style="text-decoration: none; color:white;">(Odjavi se)</a></span>
	<%} %>
		
</header>
 
<div id="content">
<br><br>


	<div class="prvidiv">
    	<h1 class="prvinaslov">DOBRODOŠLI ADMINISTRATOR!</h1><br>
		<br>
	<div class="divPoruke"><h3>${requestScope.msg }</h3></div>
		<br>
		<div class="w3-card-4 w3-blue" id="divuserslika">
    <div class="w3-container w3-center">
      <img src="slike/admin.jpg" style="width:100%">
    </div>
  </div>
  <div id="ulogovaniime">
  	<p style="text-align: center; color: darkblue; font-size: 28px;">Korisnički podaci:</p><hr color="blue">
	<p>Ime korisnika: Marko</p>
	<p>Prezime korisnika: Vuković</p>
	<p>Uloga korisnika: Administrator sajta</p>	
	<p>Adresa korisnika: Hasana Brkića 3</p>
	
	<div class="tooltip3">
	<button id="odjavadugme"><a href="Controller?akcija=OdjaviSe" style="text-decoration: none; color:white;">Odjavi se</a></button>
  <span class="odjavatext">Klikom na ovaj link, odjavljujete se sa našega sajta.</span><br><br>
</div>
</div>
		<br>
		<hr>
		<div id="radnicidiv">
			<a href="ServletAdmin?akcija=radnici"><img id="radnicidivslika" width="100%" title="Prikaz Radnika" src="slike/radnici.png"></a>
		<p>Prikaz Radnika</p>
		</div>
		
		<div id="porukediv">
			<a href="ServletAdmin?akcija=poruke"><img id="porukedivslika" width="100%" title="Prikaz Poruka" src="slike/poruke.png"></a>
			<p>Prikaz Poruka</p>
		</div>
		
		<div id="kategorijediv">
			<a href="ServletAdmin?akcija=kategorije"><img id="kategorijedivslika" width="100%" title="Prikaz Kategorija" src="slike/kategorije.png"></a>
			<p>Prikaz Kategorija</p>
		</div>
			
		<div id="racunidiv">
			<a href="ServletAdmin?akcija=racuni"><img id="racunidivslika" width="100%" title="Prikaz Računa" src="slike/racuni.png"></a>
			<p>Prikaz Računa</p>
		</div>
		
		<div id="isporukediv">
			<a href="ServletAdmin?akcija=isporuka"><img id="isporukedivslika" width="86%" title="Prikaz Načina Isporuke" src="slike/isporuke2.png"></a>
			<p>Prikaz Načina Isporuke</p>
		</div>
		
		<div id="dobavljacidiv">
			<a href="ServletAdmin?akcija=dobavljaci"><img id="dobavljacidivslika" width="100%" title="Prikaz Dobavljača" src="slike/dobavljaci.png"></a>
			<p>Prikaz Dobavljača</p>
		</div>
		
		<div id="artiklidiv">
			<a href="ServletAdmin?akcija=artikli"><img id="artiklidivslika" width="100%" title="Prikaz Artikla" src="slike/artikli.png"></a>
		<p>Prikaz Artikla</p>
		</div>
		
		<div id="kupcidiv">
			<a href="ServletAdmin?akcija=kupci"><img id="kupcidivslika" width="100%" title="Prikaz Registrovanih Klijenata" src="slike/kupci.jpg"></a>
		<p>Prikaz Klijenata</p>
		</div>
		
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<hr color="blue">
		
		<div id="unosradnikadiv">
			<a href="unosNovogRadnika.jsp"><img id="unosradnikadivslika" width="100%" title="Unos novog Radnika" src="slike/noviradnikdole.png"></a>
			<p>Unos novog Radnika</p>
		</div>
		
		<div id="unoskategorijediv">
			<a href="unosNoveKategorije.jsp"><img id="unoskategorijedivslika" width="100%" title="Unos nove Kategorije" src="slike/novakategorijadole.png"></a>
			<p>Unos nove Kategorije</p>
		</div>
		
		<div id="unosisporukediv">
			<a href="unosNoveIsporuke.jsp"><img id="unosisporukedivslika" width="100%" title="Unos novog načina Isporuke" src="slike/novaisporukadole.jpg"></a>
			<p>Unos novog načina Isporuke</p>
		</div>
		
		<div id="unosdobavljacadiv">
			<a href="unosNovogDobavljaca.jsp"><img id="unosdobavljacadivslika" width="100%" title="Unos novog Dobavljača" src="slike/novidobavljacdole.png"></a>
			<p>Unos novog Dobavljača</p>
		</div>
		<div id="unosartikladiv">
			<a href="unosNovogArtikla.jsp"><img id="unosartikladivslika" width="100%" title="Unos novog Artikla" src="slike/artiklidole.png"></a>
			<p>Unos novog Artikla</p>
		</div>
		
		
		<br><br><br><br><br><br><br><br><br>
   
   		
   
   
   
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

