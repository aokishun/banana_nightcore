const music_number = ["1", "2", "3", "4"];
for (let i = 0; i < music_number.length; i++) {
  function openVideo() {
    $('#player' + music_number[i]).css('display', 'block');
  }

  $(function() {
    $("#play" + music_number[i]).on("click", function() {
      videoControl("playVideo");
    });

    $("#pause" + music_number[i]).on("click", function() {
      videoControl("pauseVideo");
    });

    $("#stop" + music_number[i]).on("click", function() {
      videoControl("stopVideo");
    });

    $("#clear" + music_number[i]).on("click", function() {
      videoControl("clearVideo");
    });

    function videoControl(action) {
      var $playerWindow = $('#popup-YouTube-player' + music_number[i])[0].contentWindow;
      $playerWindow.postMessage('{"event":"command","func":"' + action + '","args":""}', '*');
    }
  });
}
//----------------------
for (var i = 0; i < 4; i++) {
  document.write(
    '<div class="col-lg-3 col-md-6 col-sm-6 work">',
    '<dev class="work-box">');
  document.write('<img src="/assets/nightcore_' + Number(i + 1) + '.jpg" alt="">');

  document.write(
    '<div class="overlay" >',
    '<div class="overlay-caption">'
  );

  document.write(
    '<div id="player" style="display:none;">'
  )
  if (i == 0) {
    document.write('<iframe class="video" id="popup-YouTube-player1" width="0" height="0" src="https://www.youtube.com/embed/su0FCBRwVpE?enablejsapi=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');
  } else if (i == 1) {
    document.write('<iframe class="video" id="popup-YouTube-player2" width="0" height="0" src="https://www.youtube.com/embed/i6DgjSUiT0w?enablejsapi=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');
  } else if (i == 2) {
    document.write('<iframe class="video" id="popup-YouTube-player3" width="0" height="0" src="https://www.youtube.com/embed/TiVIFMbwxOc?enablejsapi=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');
  } else if (i == 3) {
    document.write('<iframe class="video" id="popup-YouTube-player4" width="0" height="0" src="https://www.youtube.com/embed/YaufeJA0HQA?enablejsapi=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');
  } else {
    document.write('<iframe class="video" id="popup-YouTube-player1" width="0" height="0" src="https://www.youtube.com/embed/su0FCBRwVpE?enablejsapi=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');
  }
  document.write(
    '</div>'
  );
  if (i == 0) {
    document.write(
      '<button id="play1" style="color:#808080; ">play</button>',
      '<button id="pause1" style="color:#808080; ">pause</button>',
      '<button id="stop1" style="color:#808080; ">stop</button>',
      '<button id="clear1" style="color:#808080; ">clear</button></br>',
      '<a href="https://www.youtube.com/watch?v=su0FCBRwVpE" style="color:black;">インドア系ならトラックメーカー</a>'
    );
  } else if (i == 1) {
    document.write(
      '<button id="play2" style="color:#808080; ">play</button>',
      '<button id="pause2" style="color:#808080; ">pause</button>',
      '<button id="stop2" style="color:#808080; ">stop</button>',
      '<button id="clear2" style="color:#808080; ">clear</button></br>',
      '<a href="https://www.youtube.com/watch?v=i6DgjSUiT0w" style="color:black;">眠れないほど</a>'
    );
  } else if (i == 2) {
    document.write(
      '<button id="play3" style="color:#808080; ">play</button>',
      '<button id="pause3" style="color:#808080; ">pause</button>',
      '<button id="stop3" style="color:#808080; ">stop</button>',
      '<button id="clear3" style="color:#808080; ">clear</button></br>',
      '<a href="https://www.youtube.com/watch?v=TiVIFMbwxOc" style="color:black;">God Is Girl</a>'
    );
  } else if (i == 3) {
    document.write(
      '<button id="play4" style="color:#808080; ">play</button>',
      '<button id="pause4" style="color:#808080; ">pause</button>',
      '<button id="stop4" style="color:#808080; ">stop</button>',
      '<button id="clear4" style="color:#808080; ">clear</button></br>',
      '<a href="https://www.youtube.com/watch?v=YaufeJA0HQA" style="color:black;">Truth or Dare</a>'
    );
  } else {
    document.write(
      '<button id="play1" style="color:#808080; ">play</button>',
      '<button id="pause1" style="color:#808080; ">pause</button>',
      '<button id="stop1" style="color:#808080; ">stop</button>',
      '<button id="clear1" style="color:#808080; ">clear</button></br>',
      '<a href="https://www.youtube.com/watch?v=su0FCBRwVpE" style="color:black;">インドア系ならトラックメーカー</a>'
    );
  }

  document.write(
    '<p><i class="fa fa-search-plus fa-2x"></i></p>',
    '</div>',
    '</div>',
    '</div>'
  );
}
