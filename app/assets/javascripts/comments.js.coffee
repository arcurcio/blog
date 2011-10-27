# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# $(function() {
#   $('#new_comment').bind('ajax:success', function(e, data, status, xhr) {
#     data = $(data).hide();
#     $('#comments').append(data);
#     data.fadeIn();
#   });
# });

$ ->
  $("#new_comment").bind "ajax:success", (e, data, status, xhr) ->
    data = $(data).hide()
    $("#comments").append data
    data.fadeIn()

