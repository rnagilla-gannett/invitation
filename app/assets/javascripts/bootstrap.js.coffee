jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

  $('.background-clouds').pan({fps: 10, dir: 'right'});
  $('#lunaplane').sprite({fps: 10, no_of_frames: 3})
  #$('#bird').pan({fps: 10, dir: 'left'});

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

  $('#btn-rsvp').click ->
    window.open('guest_lists/new','popup','scrollbars=1,resizable=1,width=700,height=440')
  $('div#lunaplane a').bind 'click', (e) ->
    $('html, body').stop().animate({scrollTop: $($(this).attr('href')).offset().top}, 1000);
    event.preventDefault();
  $('div.nav a').bind 'click', (e) ->
    $('html, body').stop().animate({scrollTop: $($(this).attr('href')).offset().top}, 2000);
    event.preventDefault();
  # $('.rsvp_cancel').click ->
  #   window.close()