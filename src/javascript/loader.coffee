$ ->
  $('#hideAll .loader').css(marginTop: window.innerHeight*0.4)
  $(window).load ()-> $('#hideAll').css(display:'none')
