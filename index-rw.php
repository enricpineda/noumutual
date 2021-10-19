<?php
session_start();
if (!isset($_SESSION['userMC'])) {
header("Location: https://mc-mutual.com");
//$_SESSION['userMC']="mutual";
}
$contingut = $_GET["contingut"];
?>
<!doctype html>
<html class="no-js" lang="en">
  <head>
	  <!-- Global site tag (gtag.js) - Google Analytics -->


   <base href="https://mcmutual.kiefernholz.xyz/">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Biblioteca Digital de Medicina MC Mutual</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <link rel="stylesheet" href="css/mutual.css" />
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100,700' rel='stylesheet' type='text/css'>
    <script src="js/vendor/modernizr.js"></script>
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1528823-22"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
gtag('set', {'user_id': '<?php echo $_SESSION['userMC'];?>'}); // Definiu l'identificador d'usuari amb el user_id amb què hàgiu iniciat la sessió.
  gtag('config', 'UA-1528823-22');
</script>
  </head>
  <body>

   <!--menupral per a mòbils -->

   <div id="menuPralMob">
   <div class="row">
   	<div class="small-12 columns">
   <img src="img/icona_menu.svg" id="botonetMenu" />
   </div>
   <div class="small-12 columns" id="elMenuMob">
   <ul>
   	<li><a href="sobre-biblio/">Sobre la biblioteca</a></li>
   	<li><a href="contacto/">Contacto</a></li>
   	<li><a href="privacidad/">Política de privacidad</a></li>
   </ul>
   </div>
   </div>
   </div>

   <!-- Encapçalament -->
   <div class="row" id="header">
   <div class="small-12 medium-12 large-6 columns">
   	<a href="./"><img src="img/logo_biblio.png" /></a>
   </div>

   <div class="small-12 medium-12 large-6 columns">

   <ul id="menupral">
   	<li><a href="sobre-biblio/">Sobre la biblioteca</a></li>
   	<li><a href="contacto/">Contacto</a></li>
   	<li><a href="privacidad/">Política de privacidad</a></li>
   </ul>

   </div>

   </div>

   <div id="banner">
   <!--<img src="img/nou_header.jpg" />-->
   <h1>Biblioteca digital</h1>
   </div>


   <div class="row" id="contingutPral">



  <div class="small-12 columns">

    <!-- contingut -->


    <h2 class="subheader">Inicio</h2>
    <p><strong>Alerta:</strong> debido al ataque informático recibido por la Universitat Autònoma de Barcelona, hemos creado un acceso temporal a las revistas contratadas por MC Mutual. Mientras, estamos trabajando para restablecer el acceso normal a la biblioteca lo antes posible. Rogamos disculpen las molestias.</p>

    <h3>Listado de revistas contratadas</h3>
    <ul>
<li><a href="https://medicaljournalssweden.se/jrm/index" target="_blank">Journal of Rehabilitation Medicine</a></li>
<li><a href="https://journals.sagepub.com/home/jhs" target="_blank">Journal of Hand surgery (European)</a></li>
<li><a href="https://www.thespinejournalonline.com/issue/S1529-9430(21)X0007-1" target="_blank">Spine</a></li>
<li><a href="https://journals.lww.com/jaaos/pages/default.aspx" target="_blank">Journal of the American Academy of Orthopaedic Surgeons</a></li>
<li> <a href="https://www.arthroscopyjournal.org/current?page=1" target="_blank">Arthroscopy</a></li>
<li><a href="https://www.jhandsurg.org/current" target="_blank">Journal of Hand Surgery (American vol.)</a></li>
<li><a href="https://www.jshoulderelbow.org/" target="_blank">Journal of Shoulder & Elbow Surgery</a></li>
<li><a href="https://www.journals.elsevier.com/orthopedic-clinics-of-north-america" target="_blank">Orthopedic Clinics of North America</a></li>
<li><a href="https://www.journals.elsevier.com/physical-medicine-and-rehabilitation-clinics-of-north-america" target="_blank">Physical Medicine & Rehabilitation Clinics</a></li>
<li><a href="https://www.journals.elsevier.com/revue-de-chirurgie-orthopedique-et-traumatologique" target="_blank">Revue de Chirurgie Orthopédique</a></li>
<li><a href="https://journals.lww.com/clinorthop/pages/default.aspx" target="_blank">Clinical Orthopaedics & Related Research (edició americana)</a></li>
<li> <a href="https://academic.oup.com/ptj/issue" target="_blank">Physical therapy</a></li>
    </ul>
    <h4>Contacto</h4>
    <p><strong>
        <a href="mailto:avives@mc-mutual.com">Albert Vives Julines</a></strong><br />
        Departamento Gestión del Conocimiento Sanitario</p>
        <p><strong>
            <a href="mailto:mescobar@mc-mutual.com">Ángeles Escobar Moreno</a></strong><br />
            Departamento Gestión de Asistencia Sanitaria e ITCP</p>
            <p><strong>
                <a href="mailto:srodriguezm@mc-mutual.com">Sebastián Rodríguez Molano</a></strong><br />
              Departamento Supervisión de Contingencia Común</p>
                <p><strong>
                    <a href="mailto:jaguilera@mc-mutual.com">Juan Antonio Aguilera Repiso</a></strong><br />
                    Servicio COT. Unidad de Raquis. Clínicas MC Mutual Barcelona.</p>
    <p><strong>
        <a href="mailto:iportah@mc-mutual.com">Irene Porta Huguet</a></strong><br />
        Departamento RSE y Comunicación</p>
        <p><strong>
            <a href="mailto:clorente@mc-mutual.com">César Lorente Parra</a></strong><br />
            Servicio de documentación</p>
    </div>

   </div>
   <div id="foot">

   <div class="row" id="footPetit">
   <div class="small-6 medium-6 columns"><img src="img/logo_mini_2.gif" /></div>
   <div class="small-6 medium-6 columns"><img src="img/logo_fse.jpg" /></div>
   <div class="small-12 medium-12 columns"><p>© Fundació Salut i Envelliment & MC MUTUAL, 2004<br />
Fecha de creación: 19-04-2004 | Actualización: 02-05-2016
</p><p>
Site creado por la <a href="http://salut-envelliment.uab.cat/" target="_blank">Fundació Salut i Envelliment</a></p></div>

   </div>


   <div class="row" id="footGran">
   <div class="small-4 medium-4 large-3 columns"><img src="img/logo_mini_2.gif" /></div>
   <div class="small-4 medium-4 large-6 columns"><p>© Fundació Salut i Envelliment & MC MUTUAL, 2004<br />
Fecha de creación: 19-04-2004 | Actualización: 02-05-2016
</p><p>
Site creado por la <a href="http://salut-envelliment.uab.cat/" target="_blank">Fundació Salut i Envelliment</a></p></div>
   <div class="small-4 medium-4 large-3 columns"><img src="img/logo_fse.jpg" /></div>
   </div>


    </div>


    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation.min.js"></script>
    <script>
      $(document).foundation();
      $("#botoMenuBDMobil").click(function() {

      	$("#CapaMenuBD").toggle("slow");
      });
      $("#botonetMenu").click(function(){
      	$("#elMenuMob").toggle("slow");
      });

      $("#buscadorRevistes").submit(function() {
        event.preventDefault();
      	var cerca=encodeURIComponent($("#buscadorRev").val());
      	//$("#resultsRev").load("https://salut-envelliment.uab.cat/noumutual/contingut/buscarev.php?search="+cerca);
        window.location.href="https://salut-envelliment.uab.cat/noumutual/buscarev/"+cerca+"/";
      });

      $("#patslink").click(function(){
      	$("#llistaPats").toggle("slow");
      });
    </script>
  </body>
</html>
