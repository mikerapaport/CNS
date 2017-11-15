jQuery('#child_program').on('change', function() {
  if (jQuery(this).val() == '10 Month') {
    jQuery('#month').show();
    jQuery('#summer').hide();
  } else if (jQuery(this).val() == 'Summer') {
    jQuery('#summer').show();
    jQuery('#month').hide();
  } else {
    jQuery('#month').hide();
    jQuery('#summer').hide();
  }
});
