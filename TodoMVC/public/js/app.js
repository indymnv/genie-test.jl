
$(function() {
  $('input[type="checkbox"]').on('change', function() {
    axios({
      method: 'post',
      url: '/todos/' + $(this).attr('value') + '/toggle',
      data: {}
    })
    .then(function(response) {
      $('#todo_' + response.data.id.value).first().checked
         = response.data.completed;
    });
  });
});

