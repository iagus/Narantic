$(document).ready(function() {

  ////// MatchHeight
  $('.last-update').matchHeight();

  ///// Form styling
  $(function() {
    $('form').find('select, input:file, input:checkbox, input:radio').formikation();
  });
})
