jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

  $('.background-clouds').pan({fps: 10, dir: 'right'});
  $('.luna_plane_flying').sprite({fps: 10, no_of_frames: 3})

  fadeIn = () ->
  $("#rs").animate({left: "+=100";top: "+=100"}, 100000)
	
  fadeOut = () ->
  $("#rs").animate({left: "+10",top: "+10"}, 100000);

  fadeIn = () ->
  $("#rs").animate({left: "+=100";top: "+=100"}, 100000)
  
  fadeOut = () ->
  $("#rs").animate({left: "+10",top: "+10"}, 100000);

  fadeIn = () ->
  $("#rs").animate({left: "+=100";top: "+=100"}, 100000)
  
  fadeOut = () ->
  $("#rs").animate({left: "+10",top: "+10"}, 100000);


jQuery ->
  $('#rs').sprite({fps: 8, no_of_frames: 1})
  					.spRandom({
  						top: 20,
  						left: 50,
  						right: 90,
  						bottom: 80,
  						speed: 3500,
  						pause: 1000
  					});