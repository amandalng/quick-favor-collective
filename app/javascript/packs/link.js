$("tr[data-link]").click(function() {
  window.location = $(this).data("link")
  $(document).on('page:change', function() {
    window.location = $(this).data("link")
  });
})
