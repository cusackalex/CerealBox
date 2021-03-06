var newCourseContent = {

  submitListen: function() {
    $('div.new-content').on('submit', 'form', function(event) {
      var form = $(this);
      form.siblings('div.new-content-errors').remove();
    });

    $(document).on('ajax:success', 'div.new-content form', function(event, newContent) {

      $('div.current-content').prepend(newContent);
      $(this).find('input:text').val('');
    });
    $(document).on('ajax:error', 'div.new-content form',
      function(event, xhr, status, error) {
        var form = $(this);
        form.before(xhr.responseText);
    });
  }

};
