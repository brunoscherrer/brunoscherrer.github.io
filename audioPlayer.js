function audioPlayer(){

    var songs = document.getElementsByClassName('song');
    
    var currentSong = 0;
    $("#audioPlayer")[0].src = $("#playlist .song")[0];

    // Start song when click
    
    $("#playlist .song").click(
	function(e){
            e.preventDefault();
            $("#audioPlayer")[0].src = this;
            $("#audioPlayer")[0].play();
            $("#playlist .song").removeClass("current-song");
	    for (var i = 0; i < songs.length; i++) {
		if (songs[i].href == this) break;
	    }
            currentSong = i;
	    //console.log("currentSong="+currentSong);
            $(this).addClass("current-song");
	}
    );

    // Go to next song when song finished (and loop)
    
    $("#audioPlayer")[0].addEventListener("ended",
					  function(){
					      currentSong++;
					      if(currentSong == $("#playlist .song").length)
						  currentSong = 0;
					      //console.log("currentSong="+currentSong);
					      $("#playlist .song").removeClass("current-song");
					      $("#playlist .song:eq("+currentSong+")").addClass("current-song");
					      $("#audioPlayer")[0].src = $("#playlist .song")[currentSong].href;
					      $("#audioPlayer")[0].play();
					  }
					 );
}
