
$(document).on('turbolinks:load', function() {
  $('.ui.dropdown').dropdown();

  $('.menu > .ui.dropdown').dropdown({
    on: 'hover'
  });
})