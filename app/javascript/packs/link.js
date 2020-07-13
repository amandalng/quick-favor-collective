$("tr[data-link]").click(function() {
  window.location = $(this).data("link")
  $(document).on('turbolinks:load', function() {
    window.location = $(this).data("link")
  });
})
