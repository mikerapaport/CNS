jQuery('#child_program').on('change', function(ev) {
  // console.log(ev.target);
  var selector_val = jQuery('#child_status').val();
  var program_val = jQuery('#child_program').val();
  if (selector_val == 'Infant') {
    if (program_val == '10 Month'){
      jQuery('#infant').show();
      jQuery('#infant_summer').hide();
    } else if (program_val == 'Summer') {
      jQuery('#infant_summer').show();
      jQuery('#infant').hide();
    }
    jQuery('#early_childhood').hide();
    jQuery('#early_childhood_summer').hide();
    jQuery('#post_pre-k').hide();
    jQuery('#afterschool').hide();
    jQuery('#afterschool_summer').hide();
  } else if (selector_val == 'Early Childhood') {
    if (program_val == '10 Month'){
      jQuery('#early_childhood').show();
      jQuery('#early_childhood_summer').hide();
    } else if (program_val == 'Summer') {
      jQuery('#early_childhood_summer').show();
      jQuery('#early_childhood').hide();
    }
    jQuery('#infant').hide();
    jQuery('#infant_summer').hide();
    jQuery('#post_pre-k').hide();
    jQuery('#afterschool').hide();
    jQuery('#afterschool_summer').hide();
  } else if (selector_val == 'Post HCS Pre-K') {
    if (program_val == '10 Month') {
      jQuery('#post_pre-k').show();
    }
    jQuery('#infant').hide();
    jQuery('#infant_summer').hide();
    jQuery('#early_childhood').hide();
    jQuery('#early_childhood_summer').hide();
    jQuery('#afterschool').hide();
    jQuery('#afterschool_summer').hide();
  } else if (selector_val == 'HCS After-school') {
    if (program_val == '10 Month'){
      jQuery('#afterschool').show();
      jQuery('#afterschool_summer').hide();
    } else if (program_val == 'Summer') {
      jQuery('#afterschool_summer').show();
      jQuery('#afterschool').hide();
    }
    jQuery('#infant').hide();
    jQuery('#infant_summer').hide();
    jQuery('#early_childhood').hide();
    jQuery('#early_childhood_summer').hide();
    jQuery('#post_pre-k').hide();
  } else {
    jQuery('#infant').hide();
    jQuery('infant_summer').hide();
    jQuery('#early_childhood').hide();
    jQuery('#early_childhood_summer').hide();
    jQuery('#post_pre-k').hide();
    jQuery('#afterschool').hide();
    jQuery('#afterschool_summer').hide();
  }
});

jQuery('#child_status').on('change', function(ev) {
  var selector_val = jQuery('#child_status').val();
  var program_val = jQuery('#child_program').val();
  if (selector_val == 'Infant') {
    if (program_val == '10 Month'){
      jQuery('#infant').show();
      jQuery('#infant_summer').hide();
    } else if (program_val == 'Summer') {
      jQuery('#infant_summer').show();
      jQuery('#infant').hide();
    }
    jQuery('#early_childhood').hide();
    jQuery('#early_childhood_summer').hide();
    jQuery('#post_pre-k').hide();
    jQuery('#afterschool').hide();
    jQuery('#afterschool_summer').hide();
  } else if (selector_val == 'Early Childhood') {
    if (program_val == '10 Month'){
      jQuery('#early_childhood').show();
      jQuery('#early_childhood_summer').hide();
    } else if (program_val == 'Summer') {
      jQuery('#early_childhood_summer').show();
      jQuery('#early_childhood').hide();
    }
    jQuery('#infant').hide();
    jQuery('#infant_summer').hide();
    jQuery('#post_pre-k').hide();
    jQuery('#afterschool').hide();
    jQuery('#afterschool_summer').hide();
  } else if (selector_val == 'Post HCS Pre-K') {
    if (program_val == '10 Month') {
      jQuery('#post_pre-k').show();
    }
    jQuery('#infant').hide();
    jQuery('#infant_summer').hide();
    jQuery('#early_childhood').hide();
    jQuery('#early_childhood_summer').hide();
    jQuery('#afterschool').hide();
    jQuery('#afterschool_summer').hide();
  } else if (selector_val == 'HCS After-school') {
    if (program_val == '10 Month'){
      jQuery('#afterschool').show();
      jQuery('#afterschool_summer').hide();
    } else if (program_val == 'Summer') {
      jQuery('#afterschool_summer').show();
      jQuery('#afterschool').hide();
    }
    jQuery('#infant').hide();
    jQuery('#infant_summer').hide();
    jQuery('#early_childhood').hide();
    jQuery('#early_childhood_summer').hide();
    jQuery('#post_pre-k').hide();
  } else {
    jQuery('#infant').hide();
    jQuery('infant_summer').hide();
    jQuery('#early_childhood').hide();
    jQuery('#early_childhood_summer').hide();
    jQuery('#post_pre-k').hide();
    jQuery('#afterschool').hide();
    jQuery('#afterschool_summer').hide();
  }
});
