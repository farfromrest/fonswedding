function stripeResponseHandler(status, response) {
  var $form = $('#payment-form');
  if (status !== 200) {
    $('.payment-errors').text(response.error.message).show();
    $form.find('.submit-button').prop('disabled', false);
  } else {
    var token = response.id;
    var brand = response.card.brand;
    var last4 = response.card.last4;
    $form.append($('<input type="hidden" name="stripeToken">').val(token));
    $form.append($('<input type="hidden" name="stripeCCBrand">').val(brand));
    $form.append($('<input type="hidden" name="stripeCCLast4">').val(last4));
    $form.get(0).submit();
  }
};

$(function() {
  var $form = $('#payment-form');

  $form.submit(function(event) {
    event.preventDefault();
    $('.payment-errors').hide();
    $form.find('.submit-button').prop('disabled', true);
    Stripe.card.createToken($form, stripeResponseHandler);
    return false;
  });

  $('#amount').change(function(event) {
    if (event.currentTarget.value === 'other') {
      $form.find('.other-amount-field').show();
      $('#otherAmount').removeAttr('disabled');
    } else {
      $form.find('.other-amount-field').hide();
      $('#otherAmount').attr('disabled', 'disabled');
    }
  });

});
