jQuery('#child_status').on('change', function() {
  if (jQuery(this).val() == 'Infant') {
    jQuery('#infant').show();
    jQuery('#early_childhood').hide();
    jQuery('#post_pre-k').hide();
    jQuery('#afterschool').hide();
  } else if (jQuery(this).val() == 'Early Childhood') {
    jQuery('#early_childhood').show();
    jQuery('#infant').hide();
    jQuery('#post_pre-k').hide();
    jQuery('#afterschool').hide();
  } else if (jQuery(this).val() == 'Post HCS Pre-K') {
    jQuery('#post_pre-k').show();
    jQuery('#infant').hide();
    jQuery('#early_childhood').hide();
    jQuery('#afterschool').hide();
  } else if (jQuery(this).val() == 'HCS After-school') {
    jQuery('#afterschool').show();
    jQuery('#infant').hide();
    jQuery('#early_childhood').hide();
    jQuery('#post_pre-k').hide();
  } else {
    jQuery('#infant').hide();
    jQuery('#early_childhood').hide();
    jQuery('#post_pre-k').hide();
    jQuery('#afterschool').hide();
  }
});
