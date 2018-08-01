ready = ->
  Typed.new '.element',
    strings: [
      'Thank you for visiting.'
      'This is my portfolio homepage.'
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready