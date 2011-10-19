$(function() {
  $('#new_comment').bind('ajax:success', function(e, data, status, xhr) {
    data = $(data).hide();
    $('#comments').append(data);
    data.fadeIn();
  });
});
