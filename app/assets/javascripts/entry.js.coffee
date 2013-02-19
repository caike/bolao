toggleMessage = (obj, klass) ->
  $(obj).next(klass)
    .addClass('success')
    .show()

  setTimeout(->
    $(obj).next(klass).hide()
  , 1900)


jQuery ($) ->
  $('.entry-actions')
    .find('button').on 'click', ->
      toggleMessage(@, '.entry-message')

