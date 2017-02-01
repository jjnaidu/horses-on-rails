$('.delete_horse').bind('ajax:success', function() {
  $(this).closest('.horse-container').remove()
})
