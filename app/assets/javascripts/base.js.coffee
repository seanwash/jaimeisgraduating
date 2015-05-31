window.App = {}

ready = ->
  $(document).on 'page:fetch.transition', ->
    $('.container').addClass('animated fadeOut').one 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend'

  $(document).on 'page:change.transition', ->
    $('.container').addClass('animated fadeIn').one 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend'

  $(document).on 'page:restore.transition', ->
    $('.container').removeClass('animated fadeOut fadeIn')


  $('textarea').editable
    inlineMode: false
    placeholder: 'Your message here'
    buttons: ['bold', 'italic', 'underline', 'createLink', 'fullscreen']


  scrollDownEl = $('.scroll-down')
  if scrollDownEl.length
    scrollDownEl.on 'click', (e) ->
      offsetTop = $('#main').offset().top

      $('html,body').animate scrollTop: offsetTop , 1000


$(document).on 'ready page:load', ready
