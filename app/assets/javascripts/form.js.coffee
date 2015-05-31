ready = ->
  $('textarea').editable
    inlineMode: false
    buttons: ['bold', 'italic', 'underline', 'createLink', 'fullscreen']


$(document).on 'ready page:load', ready
