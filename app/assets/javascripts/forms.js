jQuery('#child_program').on('change', function(ev) {
  // console.log(ev.target);
  var selector_val = jQuery('#child_status').val();
  var program_val = jQuery('#child_program').val();
  if (program_val == '10 Month') {
    if (selector_val == 'Infant') {
      // jQuery('#infant_yearly').show();
      jQuery('#yearly').show();
      jQuery('#infant').show();
      jQuery('#post_pre-k').hide();
      jQuery('#afterschool').hide();
      // jQuery('#early_childhood_yearly').hide();
    } else if (selector_val == 'Post HCS Pre-K') {
      jQuery('#post_pre-k').show();
      jQuery('#yearly').hide();
      jQuery('#infant').hide();
      // jQuery('#infant_yearly').hide();
      jQuery('#afterschool').hide();
      // jQuery('#early_childhood_yearly').hide();
    } else if (selector_val == 'HCS After-school') {
      jQuery('#afterschool').show();
      jQuery('#yearly').hide();
      jQuery('#infant').hide();
      // jQuery('#infant_yearly').hide();
      jQuery('#post_pre-k').hide();
      // jQuery('#early_childhood_yearly').hide();
    } else if (selector_val == 'Early Childhood') {
      // jQuery('#early_childhood_yearly').show();
      jQuery('#yearly').show();
      jQuery('#infant').hide();
      // jQuery('#infant_yearly').hide();
      jQuery('#post_pre-k').hide();
      jQuery('#afterschool').hide();
    }
    jQuery('#summer').hide();
    // jQuery('#infant_summer').hide();
    // jQuery('#early_childhood_summer').hide();
    jQuery('#afterschool_summer').hide();
  } else if (program_val == 'Summer') {
    if (selector_val == 'Infant') {
      // jQuery('#infant_summer').show();
      jQuery('#summer').show();
      jQuery('#infant').show();
      jQuery('#afterschool_summer').hide();
    } else if (selector_val == 'HCS After-school') {
      jQuery('#summer').show();
      jQuery('#afterschool_summer').show();
      // jQuery('#infant_summer').hide();
      jQuery('#infant').hide();
    } else if (selector_val == 'Early Childhood') {
      jQuery('#early_childhood_summer').show();
      jQuery('#summer').show();
      jQuery('#afterschool_summer').hide();
      // jQuery('#infant_summer').hide();
      jQuery('#infant').hide();
    } else {
      jQuery('#summer').hide();
      // jQuery('#infant_summer').hide();
      jQuery('#early_childhood_summer').hide();
      jQuery('#afterschool_summer').hide();
    }
    jQuery('#yearly').hide();
    // jQuery('#infant_yearly').hide();
    // jQuery('#early_childhood_yearly').hide();
    jQuery('#post_pre-k').hide();
    jQuery('#afterschool').hide();
  } else {
    jQuery('#yearly').hide();
    jQuery('#summer').hide();
    jQuery('#infant').hide();
    // jQuery('#infant_yearly').hide();
    // jQuery('#infant_summer');
    // jQuery('#early_childhood_yearly').hide();
    // jQuery('#early_childhood_summer').hide();
    jQuery('#post_pre-k').hide();
    jQuery('#afterschool').hide();
    jQuery('#afterschool_summer').hide();
  }
});

jQuery('#child_status').on('change', function(ev) {
  // console.log(ev.target);
  var selector_val = jQuery('#child_status').val();
  var program_val = jQuery('#child_program').val();
  if (program_val == '10 Month') {
    if (selector_val == 'Infant') {
      // jQuery('#infant_yearly').show();
      jQuery('#yearly').show();
      jQuery('#infant').show();
      jQuery('#post_pre-k').hide();
      jQuery('#afterschool').hide();
      // jQuery('#early_childhood_yearly').hide();
    } else if (selector_val == 'Post HCS Pre-K') {
      jQuery('#post_pre-k').show();
      jQuery('#yearly').hide();
      jQuery('#infant').hide();
      // jQuery('#infant_yearly').hide();
      jQuery('#afterschool').hide();
      // jQuery('#early_childhood_yearly').hide();
    } else if (selector_val == 'HCS After-school') {
      jQuery('#afterschool').show();
      jQuery('#yearly').hide();
      jQuery('#infant').hide();
      // jQuery('#infant_yearly').hide();
      jQuery('#post_pre-k').hide();
      // jQuery('#early_childhood_yearly').hide();
    } else if (selector_val == 'Early Childhood') {
      // jQuery('#early_childhood_yearly').show();
      jQuery('#yearly').show();
      jQuery('#infant').hide();
      // jQuery('#infant_yearly').hide();
      jQuery('#post_pre-k').hide();
      jQuery('#afterschool').hide();
    }
    jQuery('#summer').hide();
    // jQuery('#infant_summer').hide();
    // jQuery('#early_childhood_summer').hide();
    jQuery('#afterschool_summer').hide();
  } else if (program_val == 'Summer') {
    if (selector_val == 'Infant') {
      // jQuery('#infant_summer').show();
      jQuery('#summer').show();
      jQuery('#infant').show();
      jQuery('#afterschool_summer').hide();
    } else if (selector_val == 'HCS After-school') {
      jQuery('#summer').show();
      jQuery('#afterschool_summer').show();
      // jQuery('#infant_summer').hide();
      jQuery('#infant').hide();
    } else if (selector_val == 'Early Childhood') {
      jQuery('#early_childhood_summer').show();
      jQuery('#summer').show();
      jQuery('#afterschool_summer').hide();
      // jQuery('#infant_summer').hide();
      jQuery('#infant').hide();
    } else {
      jQuery('#summer').hide();
      // jQuery('#infant_summer').hide();
      jQuery('#early_childhood_summer').hide();
      jQuery('#afterschool_summer').hide();
    }
    jQuery('#yearly').hide();
    // jQuery('#infant_yearly').hide();
    // jQuery('#early_childhood_yearly').hide();
    jQuery('#post_pre-k').hide();
    jQuery('#afterschool').hide();
  } else {
    jQuery('#yearly').hide();
    jQuery('#summer').hide();
    jQuery('#infant').hide();
    // jQuery('#infant_yearly').hide();
    // jQuery('#infant_summer');
    // jQuery('#early_childhood_yearly').hide();
    // jQuery('#early_childhood_summer').hide();
    jQuery('#post_pre-k').hide();
    jQuery('#afterschool').hide();
    jQuery('#afterschool_summer').hide();
  }
});
