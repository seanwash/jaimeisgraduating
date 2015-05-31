ready = ->
  $('textarea').editable
    inlineMode: false
    placeholder: 'Your message here'
    buttons: ['bold', 'italic', 'underline', 'createLink', 'fullscreen']


$(document).on 'ready page:load', ready
