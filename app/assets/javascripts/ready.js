$(document).ready(function() {

  ////// MatchHeight
  $('.last-update').matchHeight();

  ///// Form styling
  $(function() {
    $('form').find('select, input:file, input:checkbox, input:radio').formikation();
  });

  //// Disable certain inputs
  $('#booking_user_id').prop('disabled', true);
  $('#ticket_user_id').prop('disabled', true);
})
