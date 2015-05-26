window.App ||= {}

class App.Base
  constructor: ->
    $(document).on 'page:fetch.transition', ->
      console.log 'page:fetch.transition'
      $('.container').addClass('animated fadeOut').one 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend'

    $(document).on 'page:change.transition', ->
      console.log 'page:change.transition'
      $('.container').addClass('animated fadeIn').one 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend'

    $(document).on 'page:restore.transition', ->
      console.log 'page:restore.transition'
      $('.container').removeClass('animated fadeOut fadeIn')

    return @

window.App.Base = App.Base
new window.App.Base
