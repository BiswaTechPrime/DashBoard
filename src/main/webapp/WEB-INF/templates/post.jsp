<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    		 		 <script src="resources/preloading/preloading1.js"></script>

<script type="javascript">
$(function () {
    $('.button-checkbox').each(function () {

        // Settings
        var $widget = $(this),
            $button = $widget.find('button'),
            $checkbox = $widget.find('input:checkbox'),
            color = $button.data('color'),
            settings = {
                on: {
                    icon: 'glyphicon glyphicon-check'
                },
                off: {
                    icon: 'glyphicon glyphicon-unchecked'
                }
            };

        // Event Handlers
        $button.on('click', function () {
            $checkbox.prop('checked', !$checkbox.is(':checked'));
            $checkbox.triggerHandler('change');
            updateDisplay();
        });
        $checkbox.on('change', function () {
            updateDisplay();
        });

        // Actions
        function updateDisplay() {
            var isChecked = $checkbox.is(':checked');

            // Set the button's state
            $button.data('state', (isChecked) ? "on" : "off");

            // Set the button's icon
            $button.find('.state-icon')
                .removeClass()
                .addClass('state-icon ' + settings[$button.data('state')].icon);

            // Update the button's color
            if (isChecked) {
                $button
                    .removeClass('btn-default')
                    .addClass('btn-' + color + ' active');
            }
            else {
                $button
                    .removeClass('btn-' + color + ' active')
                    .addClass('btn-default');
            }
        }

        // Initialization
        function init() {

            updateDisplay();

            // Inject the icon if applicable
            if ($button.find('.state-icon').length == 0) {
                $button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i>Â ');
            }
        }
        init();
    });
});


jQuery(document).ready(function($) {
        $('#myCarousel').carousel({
                interval: 5000
        });
 
        //Handles the carousel thumbnails
        $('[id^=carousel-selector-]').click(function () {
        var id_selector = $(this).attr("id");
        try {
            var id = /-(\d+)$/.exec(id_selector)[1];
            console.log(id_selector, id);
            jQuery('#myCarousel').carousel(parseInt(id));
        } catch (e) {
            console.log('Regex failed!', e);
        }
    });
        // When the carousel slides, auto update the text
        $('#myCarousel').on('slid.bs.carousel', function (e) {
                 var id = $('.item.active').data('slide-number');
                $('#carousel-text').html($('#slide-content-'+id).html());
        });
});

var placeSearch, autocomplete;
var componentForm = {
  route: 'long_name',
  locality: 'long_name',
  administrative_area_level_2:'long_name',
  administrative_area_level_1: 'short_name',
  country: 'long_name',
  postal_code: 'short_name'
};

function initAutocomplete() {
  // Create the autocomplete object, restricting the search to geographical
  // location types.
  autocomplete = new google.maps.places.Autocomplete(
      /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
      {types: ['geocode']});

  // When the user selects an address from the dropdown, populate the address
  // fields in the form.
  autocomplete.addListener('place_changed', fillInAddress);
}

// [START region_fillform]
function fillInAddress() {
  var place = autocomplete.getPlace();
  for (var component in componentForm) {
    document.getElementById(component).value = '';
    document.getElementById(component).disabled = false;
    
  }
 for (var i = 0; i < place.address_components.length; i++) {
    var addressType = place.address_components[i].types[0];
    if (componentForm[addressType]) {
      var val = place.address_components[i][componentForm[addressType]];
      document.getElementById(addressType).value = val;
     }
  }
}

function geolocate() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var geolocation = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };
      var circle = new google.maps.Circle({
        center: geolocation,
        radius: position.coords.accuracy
      });
      autocomplete.setBounds(circle.getBounds());
    });
  }
}

     
 </script>
  <script type="text/javascript">
        window.onload = function () {
            var fileUpload = document.getElementById("fileupload");
            fileUpload.onchange = function () {
                if (typeof (FileReader) != "undefined") {
                    var dvPreview = document.getElementById("dvPreview");
                    dvPreview.innerHTML = "";
                    var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.gif|.png|.bmp)$/;
                    for (var i = 0; i < fileUpload.files.length; i++) {
                        var file = fileUpload.files[i];
                        if (regex.test(file.name.toLowerCase())) {
                            var reader = new FileReader();
                            reader.onload = function (e) {
                                var img = document.createElement("IMG");
                                img.height = "200";
                                img.width = "200";
                               img.src = e.target.result;
                               // var template="<img src="+e.target.result+"/><span class="glyphicon glyphicon-remove" onclick="imgRemove(this)"></span></li>";

                                dvPreview.appendChild(img);
                            }
                            reader.readAsDataURL(file);
                        } else {
                            alert(file.name + " is not a valid image file.");
                            dvPreview.innerHTML = "";
                            //dvPreview.innerHTML+="template";
                            return false;
                        }
                    }
                } else {
                    alert("This browser does not support HTML5 FileReader.");
                }
            }
        };
        
      /*   function imgRemove(ths)
        {
            $(ths).parent().remove();
        }
 */
        
        $(function submit(){
            $("input[type='submit']").click(function(){
                var $fileUpload = $("input[type='file']");
                if (parseInt($fileUpload.get(0).files.length)>2){
                 alert("You can only upload a maximum of 2 files");
                }
            });    
        });
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script>
        
        
<script type="text/javascript">
var activeEl = 0;
$(function() {
    var items = $('.btn-nav');
    $( items[activeEl] ).addClass('active');
    $( ".btn-nav" ).click(function() {
        $( items[activeEl] ).removeClass('active');
        $( this ).addClass('active');
        activeEl = $( ".btn-nav" ).index( this );
        
    });
});

$scope.proceed = function() {



};

</script>





<style type="text/css">


html,
body {
/*css for full size background image http://p1.pichost.me/i/66/1910857.jpg*/
  background: url() no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
     background-size: cover;
    height: 100%;
     background-color: #D05340;
  color: #fffff;
  text-align: left;
  text-shadow: 0 1px 2px rgba(0,0,0,.5);
 
}

/* Extra markup and styles for table-esque vertical and horizontal centering */
.site-wrapper {
  display: table;
  width: 100%;
  height: 100%; /* For at least Firefox */
  min-height: 100%;
  -webkit-box-shadow: inset 0 0 100px rgba(0,0,0,.5);
          box-shadow: inset 0 0 100px rgba(0,0,0,.5);
}
.site-wrapper-inner {
  display: table-cell;
  vertical-align: top;
}
.cover-container {
  margin-right: auto;
  margin-left: auto;
}


/* Related to SIde MENU Text */

.btn-nav {
    color: #e92d00;
    background-color: #fff;
    border: 1px solid #e0e1db;
    -webkit-box-sizing: border-box; /* Safari/Chrome, other WebKit */
    -moz-box-sizing: border-box;    /* Firefox, other Gecko */
    box-sizing: border-box;         /* Opera/IE 8+ */
}
.btn-nav:hover {
    color: #1dcaff;
    cursor: pointer;
    -webkit-transition: color 1s; /* For Safari 3.1 to 6.0 */
    transition: color 1s;
}
.btn-nav.active {
    background: grey;
    color: #1dcaff;
    padding: 2px;
    border-top: 6px solid #1dcaff;
	border-bottom: 6px solid #1dcaff ;
    border-left: 0;
    border-right: 0;
    box-sizing:border-box;
    -moz-box-sizing:border-box;
    -webkit-box-sizing:border-box;
    -webkit-transition: border 0.3s ease-out, color 0.3s ease 0.5s;
    -moz-transition: border 0.3s ease-out, color 0.3s ease 0.5s;
    -ms-transition: border 0.3s ease-out, color 0.3s ease 0.5s; /* IE10 is actually unprefixed */
    -o-transition: border 0.3s ease-out, color 0.3s ease 0.5s;
    transition: border 0.3s ease-out, color 0.3s ease 0.5s;
    -webkit-animation: pulsate 1.2s linear infinite;
    animation: pulsate 1.2s linear infinite;
}
.btn-nav.active:before {
	content: '';
    position: absolute;
	border-style: solid;
	border-width: 6px 6px 0;
	border-color:  #1dcaff transparent;
	display: block;
	width: 0;
	z-index: 0;
	margin-left: -6px;
	top: 0;
	left: 50%;
}
.btn-nav .glyphicon {
    padding-top: 8px;
	font-size: 30px;
}
.btn-nav.active p {
    margin-bottom: 8px;
}
@-webkit-keyframes pulsate {
 50% { color: #000; }
}
@keyframes pulsate {
 50% { color: #000; }
}
@media (max-width: 100%) {
    .btn-group {
        display: block !important;
        float: none !important;
        width: 100% !important;
        max-width: 100% !important;
    }
}
@media (max-width: 100%) {
    .btn-nav .glyphicon {
        padding-top: 12px;
        font-size: 26px;
    }
}
  
/**************************************************************************************************/

/* USER PROFILE PAGE */
 .card {
    margin-top: 20px;
    padding: 30px;
    background-color: rgba(214, 224, 226, 0.2);
    -webkit-border-top-left-radius:1px;
    -moz-border-top-left-radius:1px;
    border-top-left-radius:1px;
    -webkit-border-top-right-radius:1px;
    -moz-border-top-right-radius:1px;
    border-top-right-radius:1px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.card.hovercard {
    position: relative;
    padding-top: 0;
    overflow: hidden;
    text-align: center;
    background-color: #fff;
    background-color: rgba(255, 255, 255, 1);
}
.card.hovercard .card-background {
    min-width: relative;
     height: relative;
      margin-top: 10%;
     margin-bottom: -10%;
}

.card-background img.fb-image-lg{
   
    background-size: cover;
    background-repeat:   no-repeat;
    background-position: center center;
    filter: blur(25px);
    margin-left: -10%;
    margin-top: -10%;
    margin-right: -10%;
    min-width: relative;
}

.card.hovercard .useravatar {
    position: absolute;
    bottom: 2px;
    left: relative;
}
.card.hovercard .useravatar img {
    width: 100px;
    height: 100px;
    max-width: 100px;
    max-height: 100px;
    -webkit-border-radius: 10%;
    -moz-border-radius: 10%;
    border-radius: 10%;
    border: 1px solid rgba(255, 255, 255, 0.5);
}
.card.hovercard .card-info {
    position: absolute;
    bottom: 14px;
    left: relative;
}
.card.hovercard .card-info .card-title {
    padding:0 5px;
    font-size: 30px;
    line-height: 1;
    color: #0084b4;
    background-color: rgba(255, 255, 255, 0.1);
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
}
.card.hovercard .card-info {
    overflow: hidden;
    font-size: 12px;
    line-height: 20px;
    color: #737373;
    text-overflow: ellipsis;
}
.card.hovercard .bottom {
    padding: 0 20px;
    margin-bottom: 1px;
}
.btn-pref .btn {
    -webkit-border-radius:0 !important;
}



@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,600);

.form-group{
   position: relative;
   width: auto;
    }

.form-control{
    width: relative;
}
form {
    width: relative;
    margin: 0;
}
form > div {
	position: relative;
	overflow: hidden;
}
form input, form textarea {
	width: 100%;
	border: 1px solid brown;
	background: none;
	position: relative;
	top: 0;
	left: 0;
	z-index: 1;
	padding: 8px 12px;
	outline: 0;
}
form input:valid, form textarea:valid {
	background: white;
}
form input:focus, form textarea:focus {
	border-color: #357EBD;
}
form input:focus + label, form textarea:focus + label {
	background: #0084b4;
	color: white;
	font-size: 70%;
	padding: 1px 6px;
	z-index: 2;
	text-transform: uppercase;
}
form label {
	-webkit-transition: background 0.2s, color 0.2s, top 0.2s, bottom 0.2s, right 0.2s, left 0.2s;
	transition: background 0.2s, color 0.2s, top 0.2s, bottom 0.2s, right 0.2s, left 0.2s;
	position: absolute;
	color: #999;
	padding: 7px 6px;
	font-weight: normal;
}
form textarea {
	display: block;
	resize: vertical;
}
form.go-bottom input, form.go-bottom textarea {
	padding: 12px 12px 12px 12px;
}
form.go-bottom label {
	top: 0;
	bottom: 0;
	left: 0;
	width: 100%;
}
form.go-bottom input:focus, form.go-bottom textarea:focus {
	padding: 4px 6px 20px 6px;
}
form.go-bottom input:focus + label, form.go-bottom textarea:focus + label {
	top: 100%;
	margin-top: -16px;
}
form.go-right label {
	border-radius: 0 5px 5px 0;
	height: 100%;
	top: 0;
	right: 100%;
	width: 100%;
	margin-right: -100%;
}
form.go-right input:focus + label, form.go-right textarea:focus + label {
	right: 0;
	margin-right: 0;
	width: 40%;
	padding-top: 5px;
}

html,
body {
/*css for full size background image http://p1.pichost.me/i/66/1910857.jpg*/
  background: url() no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
    height: 100%;
  background-color: #d9d9d9;
  color: #fff;
  text-align: left;
  text-shadow: 0 1px 2px rgba(0,0,0,.5);
 
}

/* Extra markup and styles for table-esque vertical and horizontal centering */
.site-wrapper {
  display: table;
  width: 10%;
  height: 10%; /* For at least Firefox */
  min-height: 10%;
  -webkit-box-shadow: inset 0 0 100px rgba(0,0,0,.5);
          box-shadow: inset 0 0 100px rgba(0,0,0,.5);
}
.site-wrapper-inner {
  display: table-cell;
  vertical-align: top;
}
.cover-container {
  margin-right: auto;
  margin-left: auto;
}


body {
    padding-top: 0px;
}

.material-button-anim {
  position: relative;
  padding: 10px 15px 27px;
  text-align: center;
  max-width: relative;
  margin: 0 auto 20px;
}

.material-button {
    position: relative;
    top: 0;
    z-index: 1;
    width: 70px;
    height: 70px;
    font-size: 1.5em;
    color: #fff;
    background: #2C98DE;
    border: none;
    border-radius: 10%;
    box-shadow: 0 3px 6px rgba(0,0,0,.275);
    outline: none;
}
.material-button-toggle {
    z-index: 5;
    width: 90px;
    height: 90px;
    margin: 0 auto;
}
.material-button-toggle span {
    -webkit-transform: none;
    transform:         none;
    -webkit-transition: -webkit-transform .175s cubic-bazier(.175,.67,.83,.67);
    transition:         transform .175s cubic-bazier(.175,.67,.83,.67);
}
.material-button-toggle.open {
    -webkit-transform: scale(1.3,1.3);
    transform:         scale(1.3,1.3);
    -webkit-animation: toggleBtnAnim .175s;
    animation:         toggleBtnAnim .175s;
}
.material-button-toggle.open span {
    -webkit-transform: rotate(45deg);
    transform:         rotate(45deg);
    -webkit-transition: -webkit-transform .175s cubic-bazier(.175,.67,.83,.67);
    transition:         transform .175s cubic-bazier(.175,.67,.83,.67);
}

#options {
  height: 70px;
}
.option {
    position: relative;
}
.option .option1,
.option .option2,
.option .option3 {
    filter: blur(5px);
    -webkit-filter: blur(5px);
    -webkit-transition: all .175s;
    transition:         all .175s;
}
.option .option1 {
    -webkit-transform: translate3d(90px,90px,0) scale(.8,.8);
    transform:         translate3d(90px,90px,0) scale(.8,.8);
}
.option .option2 {
    -webkit-transform: translate3d(0,90px,0) scale(.8,.8);
    transform:         translate3d(0,90px,0) scale(.8,.8);
}
.option .option3 {
    -webkit-transform: translate3d(-90px,90px,0) scale(.8,.8);
    transform:         translate3d(-90px,90px,0) scale(.8,.8);
}
.option.scale-on .option1, 
.option.scale-on .option2,
.option.scale-on .option3 {
    filter: blur(0);
    -webkit-filter: blur(0);
    -webkit-transform: none;
    transform:         none;
    -webkit-transition: all .175s;
    transition:         all .175s;
}
.option.scale-on .option2 {
    -webkit-transform: translateY(-28px) translateZ(0);
    transform:         translateY(-28px) translateZ(0);
    -webkit-transition: all .175s;
    transition:         all .175s;
}

@keyframes toggleBtnAnim {
    0% {
        -webkit-transform: scale(1,1);
        transform:         scale(1,1);
    }
    25% {
        -webkit-transform: scale(1.4,1.4);
        transform:         scale(1.4,1.4); 
    }
    75% {
        -webkit-transform: scale(1.2,1.2);
        transform:         scale(1.2,1.2);
    }
    100% {
        -webkit-transform: scale(1.3,1.3);
        transform:         scale(1.3,1.3);
    }
}
@-webkit-keyframes toggleBtnAnim {
    0% {
        -webkit-transform: scale(1,1);
        transform:         scale(1,1);
    }
    25% {
        -webkit-transform: scale(1.4,1.4);
        transform:         scale(1.4,1.4); 
    }
    75% {
        -webkit-transform: scale(1.2,1.2);
        transform:         scale(1.2,1.2);
    }
    100% {
        -webkit-transform: scale(1.3,1.3);
        transform:         scale(1.3,1.3);
    }
}


.hide-bullets {
    list-style:none;
    margin-left: -40px;
    margin-top:20px;
}

.thumbnail {
    padding: 0;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
    width: 100%;
}



.recipients .panel-body {
    overflow: auto;
    max-height: 200px; 
}
.recipients .recipient {
    display: block;
    float: left;
    width: 140px;
    margin: 0 5px 5px 0;
    font-size: 0.85em;
    overflow: hidden;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis;
    white-space: nowrap; 
}
.recipients .recipient img {
    float: left;
    height: 28px;
    margin-right: 5px; 
}
.recipients .recipient .email {
    font-size: 0.9em;
    color: #999;
    overflow: hidden;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis;
    white-space: nowrap; 
}

img {
  filter: gray; /* IE6-9 */
  -webkit-filter: grayscale(1); /* Google Chrome, Safari 6+ & Opera 15+ */
    -webkit-box-shadow: 0px 2px 6px 2px rgba(0,0,0,0.75);
    -moz-box-shadow: 0px 2px 6px 2px rgba(0,0,0,0.75);
    box-shadow: 0px 2px 6px 2px rgba(0,0,0,0.75);
    margin-bottom:20px;
}

img:hover {
  filter: none; /* IE6-9 */
  -webkit-filter: grayscale(0); /* Google Chrome, Safari 6+ & Opera 15+ */
 
}



.form-control
        {
            font-family: Arial;
            font-size: 10pt;
        }



</style>
  
  

  
  
  
 
 


<style type="text/css">
#top {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 999;
  width: 100%;
  height: 80px;
  background-color: blue;
  
  
}

@import url(http://fonts.googleapis.com/css?family=Oswald);

body {
background:#ffffff;
}
.holder {
position:relative;
width:30px;
height:30px;
display: block;
}

#layer-1 {
-webkit-animation-name: spin;
-webkit-animation-duration: 4000ms;
-webkit-animation-iteration-count: infinite;
-webkit-animation-timing-function: linear;
-moz-animation-name: spin;
-moz-animation-duration: 4000ms;
-moz-animation-iteration-count: infinite;
-moz-animation-timing-function: linear;
-ms-animation-name: spin;
-ms-animation-duration: 4000ms;
-ms-animation-iteration-count: infinite;
-ms-animation-timing-function: linear;

animation-name: spin;
animation-duration: 4000ms;
animation-iteration-count: infinite;
animation-timing-function: linear;
}
@-ms-keyframes spin {
    from { -ms-transform: rotate(0deg); }
    to { -ms-transform: rotate(360deg); }
}
@-moz-keyframes spin {
    from { -moz-transform: rotate(0deg); }
    to { -moz-transform: rotate(360deg); }
}
@-webkit-keyframes spin {
    from { -webkit-transform: rotate(0deg); }
    to { -webkit-transform: rotate(360deg); }
}
@keyframes spin {
    from {
        transform:rotate(0deg);
    }
    to {
        transform:rotate(360deg);
    }
}

.shape-4, .shape-5, .shape-6 {

}
.shape-1, .shape-4 {
opacity: 0.2;
}
.shape-2, .shape-5 {
opacity: 0.5;
}
.shape-3, .shape-6 {
opacity: 0.5;
}
h1 {
font-family: 'Oswald', sans-serif;
font-weight: 300;
font-size: 25px;
letter-spacing: -3.5px;
color: #f6f3f3;
position: absolute;
top:60%;
left:45%;
}
h1 span {
color: #f6095d;
}
</style>

</head>

<body>
<!-- Preloader -->
    <div id="preloader">
        <div id="status"><i class="fa fa-spinner fa-spin"></i></div>
    </div>
  <div id="top">
            
                 <div class="holder">
  
<svg version="1.1" id="layer-1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 width="100px" height="100px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
	
	<defs>
        <linearGradient id="grad1" x1="0%" y1="0%" x2="0%" y2="100%">
            <stop offset="50%" stop-color="#f94214"/>
            <stop offset="100%" stop-color="#f94214" stop-opacity="0" />
        </linearGradient>
        <linearGradient id="grad2" x1="100%" y1="0%" x2="0%" y2="100%">
            <stop offset="50%" stop-color="#c9f914"/>
            <stop offset="100%" stop-color="#c9f914" stop-opacity="0" />
        </linearGradient>
        <linearGradient id="grad3" x1="100%" y1="100%" x2="0%" y2="0%">
            <stop offset="50%" stop-color="#00FF00"/>
            <stop offset="100%" stop-color="#00FF00" stop-opacity="0" />
        </linearGradient>
    </defs>

<path class="shape-1" fill="url(#grad1)" d="M237.773,56.673c-98.48,0-178.314,79.834-178.314,178.315c0,98.48,79.834,178.314,178.314,178.314
	c98.481,0,178.314-79.834,178.314-178.314C416.088,136.507,336.255,56.673,237.773,56.673z M237.774,384.817
	c-82.749,0-149.829-67.079-149.829-149.829c0-82.75,67.081-149.831,149.829-149.831c82.751,0,149.828,67.082,149.828,149.831
	C387.603,317.738,320.525,384.817,237.774,384.817z"/>
<path class="shape-2" fill="url(#grad2)" d="M247.303,76.867c-98.481,0-178.315,79.834-178.315,178.317
	c0,98.479,79.834,178.314,178.315,178.314c98.481,0,178.314-79.836,178.314-178.314C425.617,156.701,345.784,76.867,247.303,76.867z
	 M247.304,405.013c-82.749,0-149.83-67.08-149.83-149.829c0-82.751,67.081-149.833,149.83-149.833s149.828,67.081,149.828,149.833
	C397.132,337.933,330.053,405.013,247.304,405.013z"/>
<path class="shape-3" fill="url(#grad3)" d="M262.227,56.672c-98.48,0-178.314,79.834-178.314,178.315
	c0,98.48,79.834,178.315,178.314,178.315c98.481,0,178.314-79.835,178.314-178.315C440.541,136.506,360.708,56.672,262.227,56.672z
	 M262.227,384.817c-82.748,0-149.829-67.079-149.829-149.83c0-82.75,67.081-149.831,149.829-149.831
	c82.752,0,149.829,67.082,149.829,149.831C412.056,317.738,344.979,384.817,262.227,384.817z"/>
<path class="shape-4" fill="url(#grad1)" d="M264.227,438.497c98.48,0,178.314-79.834,178.314-178.315c0-98.48-79.834-178.314-178.314-178.314
	c-98.481,0-178.314,79.834-178.314,178.314C85.912,358.663,165.745,438.497,264.227,438.497z M264.226,110.353
	c82.749,0,149.829,67.079,149.829,149.829s-67.08,149.831-149.829,149.831c-82.751,0-149.828-67.082-149.828-149.831
	C114.397,177.432,181.475,110.353,264.226,110.353z"/>
<path class="shape-5" fill="url(#grad2)" d="M252.697,421.303c98.48,0,178.314-79.834,178.315-178.316
	c0-98.479-79.834-178.314-178.315-178.314S74.383,144.508,74.383,242.986C74.383,341.469,154.216,421.303,252.697,421.303z
	 M252.696,93.157c82.749,0,149.83,67.08,149.83,149.829c0,82.752-67.081,149.832-149.83,149.832s-149.828-67.081-149.828-149.832
	C102.868,160.237,169.947,93.157,252.696,93.157z"/>
<path class="shape-6" fill="url(#grad3)" d="M232.773,438.498c98.48,0,178.314-79.834,178.314-178.315
	c0-98.48-79.834-178.315-178.314-178.315c-98.481,0-178.314,79.835-178.314,178.315C54.459,358.664,134.292,438.498,232.773,438.498
	z M232.773,110.353c82.748,0,149.829,67.079,149.829,149.83c-0.001,82.749-67.081,149.831-149.829,149.831
	c-82.752,0-149.829-67.082-149.829-149.831C82.944,177.432,150.021,110.353,232.773,110.353z"/>
</svg>

<h1><span>Bech</span>Do!!</h1>

</div>

 <a href="/cw/ll" class="top btn btn-link pull-right" style="top: 100%;color:white">Sign in</a>
  <a href="/cw/ll" class="top btn btn-link pull-right" style="top: 100%;color:white">Help</a>
 <a href="/cw/ll" class="top btn btn-link pull-right" style="top: 100%;color:white">About us</a>

       
        </div>
<br>
       
<header role="banner"  >
      <div class="container">
      
        
      
        <div class="navbar-header">
          <button data-toggle="collapse-side" data-target=".side-collapse" data-target-2=".side-collapse-container" type="button" class="navbar-toggle pull-left">
    	  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		  </button>
        <a class="navbar-brand" href="#" style="font-size: 40px ; color: green">BECH <span style="white"> DO!!!! </span> </a>
     
	
        <br>
     	 
     
        <br>
	
	
       <div class="container" style="padding-left: 900px" >
       
    
	
	
		<div>
 ${x} 
</div>
		
		
		
	
	</div>
	
	</div>
 </div>
</header>
 
 <script src="/CRUDSpring/js/jquery.js"></script>
        <script type="text/javascript">
  
        
        function showSub_Category(id){
        
        	alert(id);
        var xhttp;
        if (window.XMLHttpRequest) {
          // code for modern browsers
          xhttp = new XMLHttpRequest();
          } else {
          // code for IE6, IE5
          xhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xhttp.onreadystatechange = function() {
          if (xhttp.readyState == 4 && xhttp.status == 200) {
            document.getElementById("subcategory").innerHTML = xhttp.responseText;
          }
        };
        xhttp.open("GET","addSubCategory?categoryid="+id, true);
        xhttp.send();
      }
        
        
       function showItem(id){
            
        	alert(id);
        var xhttp;
        if (window.XMLHttpRequest) {
          // code for modern browsers
          xhttp = new XMLHttpRequest();
          } else {
          // code for IE6, IE5
          xhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xhttp.onreadystatechange = function() {
          if (xhttp.readyState == 4 && xhttp.status == 200) {
            document.getElementById("item").innerHTML = xhttp.responseText;
          }
        };
        xhttp.open("GET","addItem?subcategoryid="+id, true);
        xhttp.send();
      } 
       
       function showCity(id){
           
       	alert(id);
       var xhttp;
       if (window.XMLHttpRequest) {
         // code for modern browsers
         xhttp = new XMLHttpRequest();
         } else {
         // code for IE6, IE5
         xhttp = new ActiveXObject("Microsoft.XMLHTTP");
       }
       xhttp.onreadystatechange = function() {
         if (xhttp.readyState == 4 && xhttp.status == 200) {
           document.getElementById("demo").innerHTML = xhttp.responseText;
         }
       };
       xhttp.open("GET","addcity?stateid="+id, true);
       xhttp.send();
     }
       
       
       function search(){
       	
       
       	alert("serchingggggg");
       	var subcategory=document.getElementById("subcategory").value;
      location.href="aa?subcategory="+subcategory;
     /*  location.href="aa?subcategory="+subcategory+"&stateId="+s+"&cityId="+c; */
     }

       
       function showCity(id){
       
       	alert(id);
       var xhttp;
       if (window.XMLHttpRequest) {
         // code for modern browsers
         xhttp = new XMLHttpRequest();
         } else {
         // code for IE6, IE5
         xhttp = new ActiveXObject("Microsoft.XMLHTTP");
       }
       xhttp.onreadystatechange = function() {
         if (xhttp.readyState == 4 && xhttp.status == 200) {
           document.getElementById("demo").innerHTML = xhttp.responseText;
         }
       };
       xhttp.open("GET","addcitypost?stateid="+id, true);
       xhttp.send();
     }
       
       
      


        </script>
        
        
</header>
 

<div class="col-xs-16 col-md-12 " >
<div  class="btn-pref btn-group btn-group-justified " role="group">
<div class="card hovercard" style="background:white;height:relative">

 <div class="pagination">
       <div class="btn-group btn-group-justified  btn-group-horizontal">
            <div class="btn-group " role="group"> 
                <button id="b1" type="button" class="btn btn-nav"  data-toggle="tab">
                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                    <div class="visible-lg">Post An Ad</div>
                </button>
              </div>
       
           
           
          
   	</div>
</div>
<div class="container">
<div class="row">
<div class="panel">
      <div class="tab-content" >
        <div class="tab-pane fade in active" id="tab1">
      
         <form:form action="/cw/adAdder"  method="post" modelAttribute="product"  role="form" class="form-inline  go-right" style="color:#0084b4 ;background-color:#FAFAFF;border-radius:0px 22px 22px 22px; ">
        	<div class="container" style="padding-left: 70px">
        	<h2>Profile</h2>
			<div class="form-group col-md-6" >
			First Name:            
			<input id="Firstname" name="Firstname" type="text" class="form-control" style="width: 400px" placeholder="Firstname" required>
			<label for="Firstname"> First Name <span class="glyphicon glyphicon-user"> </span></label>
		</div>
     <div class="form-group col-md-6">
     Last Name:
    		<input id="Lastname" name="Lastname" type="text" class="form-control" style="width: 400px" placeholder="Lastname" required>
			<label for="Lastname">Last Name <span class="glyphicon glyphicon-user" ></span> </label>
		</div>
       
        <br>
        <br>
		<div class="form-group col-md-6">
		Phone No.:
			<input id="phone" name="phone" type="tel" class="form-control" style="width: 405px" placeholder="Mobile no.." required>
			<label for="fphone"> Phone no.<span class="glyphicon glyphicon-phone"></span></label>
		</div>
      
      
       
  
     
       
         <div class="form-group col-md-6">
         Email:
    		<input id="Email1" name="email" type="email" class="form-control" style="width: 400px ; margin-left: 2.5em" placeholder="Email" required>
			<label for="Email1"> Email <span class="glyphicon glyphicon-envelope"></span></label>
		</div>
		</div>
        <br>
        <hr>
        <br>
         <div class="container" style="padding-left: 70px">
        
            <h2>Address</h2>
        <br>
        <div class="form-group col-md-6">
        House No:
            <input id="Address" name="Address" type="text" class="form-control" style="width: 400px" placeHolder="Flat No./House No." required >
			<label for="Address">Flat NO/House No <span class="glyphicons glyphicon-home"></span></label>
		</div>
        <div class="form-group col-md-6" >
        Land Mark:
            <input id="LandMark" name="LandMark" type="text" class="form-control" style="width: 393px ; margin-left: 1.5em" placeHolder="Land Mark">
            <label for="LandMark">Land Mark <span class="glyphicons glyphicons-road"></span></label>
		</div>        
       
        <br/>
        <br/>
        
<!--         
        <div class="form-group col-md-3" >
        state:
           <input id="State" class="form-control" style="width: 250px ; margin-left: 2.5em" name="state" type="text" placeHolder=" Enter state" style=" moz-border-radius: 22px;border-radius: 7px;"  required>
           <label for="State">Enter State</label>
           </div>
       
        
       
        <div class="form-group col-md-3">
        city:
           <input id="City" class="form-control" style="width: 250px ; margin-left: 1.0em"" name="city" type="text" placeHolder="Enter City" style=" moz-border-radius: 22px;border-radius: 7px;" required >
              <label for="City">Enter City</label>
              </div> -->
              
               <div class="form-group col-md-3">  
			Select State:
                           <form:select class="form-control" style="width: 200px ; margin-left: 1.0em" path="state.id" id="state" onchange="showCity(this.value)">
                              <option selected>select state</option>
                             <form:options items="${statelist}" itemValue="id" itemLabel="name" />
                        
                           </form:select> 
    
                </div>
                           
                   
                    
		<div class="form-group col-md-3" id="demo" >
		
		<!--   Select City:
      <select class="form-control" style="width: 200px ; margin-left: 1.0em">
      <option value="none">select city</option>
      </select> -->
     Select City:
        <select class="form-control" style="width: 200px ; margin-left: 1.0em">
      <option value="none">select city</option>
      </select>
				
		
		</div>
		
         <div class="form-group col-md-3" >
         Pin-Code:
           <input id="PinCode" class="form-control" style="width: 250px" name="LocationPicker" type="text"  placeHolder="Pin Code"  required >
            <label for="PinCode">Pin-Code</label>
         </div> 
      
       
     
        <br><br><br>
        </div>
        <hr>
        <br>
        <div class="container" style="padding-left: 70px">
   <h2>Post An Ad</h2>
   <br>
   
    <div class="form-group col-md-4" style="padding-top: 30px">
    Ad Title
			<input type="text" id="message" name="title" class="form-control" style="width:320px ; margin-left: 2em" placeholder="Ad Title about the product.."  required>
			
		</div>
		
   <div class="form-group col-md-6" style="padding-bottom: 100px">
	Description
			<textarea id="message" name="description" class="form-control" style="width:500px;height: 100px;margin-left: 2em" placeholder="E.G;name of product,model,age etc...."  required></textarea>
			
		</div>
		</div>
	
		
		<br>
		<hr>
		<br/>
		
		 <h2>Select Categories And Items</h2>
		 <br>
		 <br>
	
 	<div class="row">
	
     	        <div class="form-group col-md-3">
                  Select Category:
                       <form:select class="form-control" style="width: 230px ; margin-left: 1.0em" path="category.id" onchange="showSub_Category(this.value)" id="category">
                      
                               <option selected>select categories</option>
                              <form:options items="${categorylist}" itemValue="id" itemLabel="name" />
                        
                      </form:select>
                      
                     <%--  <select name="category1"  onchange="showSub_Category(this.value)">
                        <option value="0">select</option>
                          <c:forEach items="${categorylist}" var="ob">
                          <option value="${ob.id}">${ob.name}</option>
                          </c:forEach>
                         </select> --%>
                     
               </div>  
               
      
               
	       <div class="form-group col-md-3" id="subcategory" >
		
		                      Select Sub-Category: 
		  
                     <select class="form-control" style="width: 230px ; margin-left: 1.0em" >
              
                        <option value="none">select </option>
          
                   </select>
             
		</div>
		     
            
              <div class="form-group col-md-3" id="item" >
                           
               Select Item:
                    <select class="form-control" style="width: 230px ; margin-left: 1.0em" >
              
                        <option value="none">select </option>
            
                   </select>
               
             </div>
        
            
      </div>   
   
       <br>
       <br>
       
 Enter Price:
        <br><br>
        <div class="form-group" >
           <input id="Price" class="form-control" style="width: 200px" name="Price" type="text" placeHolder="Enter Price" style=" moz-border-radius: 22px;border-radius: 7px;" required >
              <label for="Price">Enter Price</label>
              </div>

        <br>
        <br>
        <br>
        <br>
         <input type="submit" style="width: 200px"  value="Click to upload photo"> 
        
         </form:form>
         </div>
       
 </div>
 
 </div>
 
 </div>

 
    </div >
    
</div>
</div>
   

 
</div>
            
    	<!-- footer start -->
 <footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
         
                <div class="col-lg-3  col-md-3 col-sm-3 col-xs-6">
                    <h3> About us </h3>
                    <ul>
                        <li> <a href="#"> aaaa </a> </li>
                        <li> <a href="#"> bbbb</a> </li>
                        <li> <a href="#"> cccc</a> </li>
                        <li> <a href="#"> dddd </a> </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-3 col-xs-6">
                    <h3> Contact us </h3>
                    <ul>
                         <li> <a href="#"> aaaa </a> </li>
                        <li> <a href="#"> bbbb</a> </li>
                        <li> <a href="#"> cccc</a> </li>
                        <li> <a href="#"> dddd </a> </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-3 col-xs-6">
                    <h3>Careers </h3>
                    <ul>
                      <li> <a href="#"> aaaa </a> </li>
                        <li> <a href="#"> bbbb</a> </li>
                        <li> <a href="#"> cccc</a> </li>
                        <li> <a href="#"> dddd </a> </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-3 col-xs-6">
                    <h3> others </h3>
                    <ul>
                        <li> <a href="#"> aaaa </a> </li>
                        <li> <a href="#"> bbbb</a> </li>
                        <li> <a href="#"> cccc</a> </li>
                        <li> <a href="#"> dddd </a> </li>
                    </ul>
                </div>
               <!--  <div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 ">
                    <h3> social </h3>
                    <ul>
                        <li>
                            <div class="input-append newsletter-box text-center">
                                <input type="text" class="full text-center" placeholder="Email ">
                                <button class="btn  bg-gray" type="button"> SUBSCRIBE <i class="fa fa-long-arrow-right"> </i> </button>
                            </div>
                        </li>
                    </ul>
                    <ul class="social">
                        <li> <a href="#"> <i class=" fa fa-facebook">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-twitter">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-google-plus">   </i> </a> </li>
                      
                        <li> <a href="#"> <i class="fa fa-youtube">   </i> </a> </li>
                    </ul>
                </div> -->
            </div>
            <br>
            <br>
            
          <a class="button" href="#">Call Us-1800-123-1234</a>
          
          <div align=center><a href='http://www.counter12.com'><img src='http://www.counter12.com/img-zz22wA63-56.gif' border='0' alt='counter'></a><script type='text/javascript' src='http://www.counter12.com/ad.js?id=zz22wA63'></script></div>
      
        </div>
       
    </div>
   
    
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"> Copyright © BECHDO!!! 2016. All right reserved. </p>
            <div class="pull-right">
            </div>
        </div>
    </div>
  
</footer>
</body>
</html>