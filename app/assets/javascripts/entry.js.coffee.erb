toggleMessage = (obj, klass) ->
  $(obj).next(klass)
    .addClass('success')
    .show()

  setTimeout(->
    $(obj).next(klass).hide()
  , 1900)

voteInfoFor = (button) ->
  category = $(button)
    .closest('p').prev()
  nominee = category
    .find('input[type=radio]:checked')
  {
    vote: {
      category_id: category.attr('id')
      nominee_id: nominee.attr('value')
    }
  }


jQuery ($) ->
  $('.entry-actions')
    .find('button').on 'click', ->
      button = @
      window.banana  = button
      $.ajax({
        url: '/votes'
        method: 'POST'
        data: voteInfoFor(button)
        success: -> toggleMessage(button, '.entry-message')
      })

