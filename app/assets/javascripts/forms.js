jQuery('#child_status').on('change', function(ev) {
  // console.log(ev.target);
  var selector_val = jQuery('#child_status').val();
  if (selector_val == 'Infant') { //this needs to change; use the arg for func
    jQuery('#infant').show();
    jQuery('#early_childhood').hide();
    jQuery('#post_pre-k').hide();
    jQuery('#afterschool').hide();
  } else if (selector_val == 'Early Childhood') {
    jQuery('#early_childhood').show();
    jQuery('#infant').hide();
    jQuery('#post_pre-k').hide();
    jQuery('#afterschool').hide();
  } else if (selector_val == 'Post HCS Pre-K') {
    jQuery('#post_pre-k').show();
    jQuery('#infant').hide();
    jQuery('#early_childhood').hide();
    jQuery('#afterschool').hide();
  } else if (selector_val == 'HCS After-school') {
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
