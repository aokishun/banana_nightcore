
const music_number = ["1","2","3","4"];
for (let i = 0; i< music_number.length; i++ ){
  function openVideo(){
  $('#player' + music_number[i]).css('display', 'block');
  }

  $(function(){
  $("#play" + music_number[i]).on("click", function(){
  videoControl("playVideo");
  });

  $("#pause" + music_number[i]).on("click", function(){
  videoControl("pauseVideo");
  });

  $("#stop" + music_number[i]).on("click", function(){
  videoControl("stopVideo");
  });

  $("#clear" + music_number[i]).on("click", function(){
  videoControl("clearVideo");
  });

  function videoControl(action){
  var $playerWindow = $('#popup-YouTube-player' + music_number[i])[0].contentWindow;
  $playerWindow.postMessage('{"event":"command","func":"'+action+'","args":""}', '*');
  }
  });
}
//----------------------
