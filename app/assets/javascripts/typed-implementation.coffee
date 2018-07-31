ready = ->
  Typed.new '.element',
    strings: [
      'Test phrase'
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready