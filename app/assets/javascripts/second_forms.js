jQuery('#child_program').on('change', function(ev) {
  console.log(ev.target);
  var selector_val = jQuery('#child_program').val();
  if (selector_val == '10 Month') {
    jQuery('#month').show();
    jQuery('#month1').show();
    jQuery('#summer').hide();
    jQuery('#summer1').hide();
  } else if (selector_val == 'Summer') {
    jQuery('#summer').show();
    jQuery('#summer1').show();
    jQuery('#month').hide();
    jQuery('#month1').hide();
  } else {
    jQuery('#month').hide();
    jQuery('#summer').hide();
    jQuery('#month1').hide();
    jQuery('#summer1').hide();
  }
});
