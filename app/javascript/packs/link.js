
$("tr[data-link]").click(function() {
  $(document).on('page:change', function() {
    window.location = $(this).data("link")
  });
})

