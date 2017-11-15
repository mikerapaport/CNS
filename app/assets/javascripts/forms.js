// jQuery("select").change(function () {
//   jQuery('.optional').css('display', 'none');
//   jQuery("select option:selected").each(function () {
//     if (jQuery(this).val() == "Infant") {
//       jQuery('.infant').css('display', 'block');
//     }
//   })
// })
jQuery(document).ready(function() {
  jQuery(':status').on('change', function() {
    if (jQuery(this).val() == 'Infant') {
      jQuery('#infant').show();
    } else if (jQuery(this).val() == 'Early Childhood') {
      jQuery('#early_childhood').show();
    } else if (jQuery(this).val() == 'Post HCS Pre-K') {
      jQuery('#post_pre-k').show();
    } else if (jQuery(this).val() == 'HCS After-school') {
      jQuery('#afterschool').show();
    } else {
      jQuery('#infant').hide();
      jQuery('#early_childhood').hide();
      jQuery('#post_pre-k').hide();
      jQuery('#afterschool').hide();
    }
  }).change();
}
