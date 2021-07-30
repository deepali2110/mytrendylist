
import { isCrossDomain } from '@rails/ujs';
import $ from 'jquery';
window.jQuery = $;
window.$ = $;  
    
  
    /*function initTimer() {
      if ($(".timer").length) {
        var target_date = new Date('July 27,2021').getTime();
  
        //var date = new Date();
        //date.setDate(date.getDate() + 3);
        //var target_date = date.getTime();
  
        //var for time units
        var days, hours, minutes, seconds;
        var d = $("#day");
        var h = $("#hour");
        var m = $("#minute");
        var s = $("#second");
  
        setInterval(function () {
          var current_date = new Date().getTime();
          var seconds_left = (target_date - current_date) / 1000;
  
          days = parseInt(seconds_left / 86400);
          seconds_left = seconds_left % 86400;
  
          hours = parseInt(seconds_left / 3600);
          seconds_left = seconds_left % 3600;
  
          minutes = parseInt(seconds_left / 60);
          seconds = parseInt(seconds_left % 60);
  
          //display time
          d.text(days);
          h.text(hours);
          m.text(minutes);
          s.text(seconds);
        }, 1000);
      }
    }*/
    var dest =new Date("August 10,2021" ).getTime();
    
    var x =setInterval(function(){
    var now = new Date().getTime();

    var diff = dest - now;

    var day = Math.floor(diff/(1000*60*60*24));
    var hour = Math.floor(diff%(1000*60*60*24)/(1000*60*60));
    var minute = Math.floor(diff%(1000*60*60)/(1000*60));
    var second = Math.floor(diff%(1000*60)/1000);

    document.getElementById("demo").innerHTML = day +"d: "+hour+"h: " +minute+"m: "+second+"s";

    },1000);

    
    


  
    //API Integration
    
/*var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
  if(this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("GET", "https://api.mirraw.com/api/v1/designs/3030919/similar_designs_unbxd");
xhr.setRequestHeader("Device-ID", "e47e310e9d303784");
xhr.setRequestHeader("app_source", "Android");
xhr.setRequestHeader("Sub-App", "");
xhr.setRequestHeader("app_version", "2.0.0");
xhr.setRequestHeader("COUNTRY", "IN");
xhr.setRequestHeader("Token", "a2487f5de1a4c4e5d99e459f7b8a4bc577238ff11792499235bfa86e71443a43");

xhr.send();*/

fetch("https://api.mirraw.com/api/v1/designs/3030919/similar_designs_unbxd").then((apidata) => {
 // console.log(apidata);
  return apidata.json();
}).then((actualdata) =>{
  console.log(actualdata.designs);
}).catch((error) =>{
  console.log('the error:${error}');
});


     