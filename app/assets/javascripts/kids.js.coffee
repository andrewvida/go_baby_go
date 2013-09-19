# because of turbolinks, the datepicker function
# can not just be attached to document.ready like:
# $ ->
#   $('#kid_birthdate').datepicker
#   dateFormat: 'yy-mm-dd'
# so this has to be done.

picker = ->
  $('#kid_birthdate').datepicker
    dateFormat: 'yy-mm-dd'

$(document).ready(picker)
$(document).on('page:load', picker)
