jQuery('#child_program').on('change', function(ev) {
  // console.log(ev.target);
  var selector_val = jQuery('#child_program').val();
  if (selector_val == '10 Month') {
    jQuery('#month').show();
    jQuery('#summer').hide();
  } else if (selector_val == 'Summer') {
    jQuery('#summer').show();
    jQuery('#month').hide();
  } else {
    jQuery('#month').hide();
    jQuery('#summer').hide();
  }
});
