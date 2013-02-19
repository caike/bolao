jQuery($) ->
  ($ '.entry-actions').
    find('button').on 'click', ->
      alert('what')
      $('.entry-message').toggle()

