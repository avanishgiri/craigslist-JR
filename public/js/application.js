$(document).ready(function() {
  $("input[value='New Post']").click(function(e){
    // e.preventDefault();
    $('.toggle_post').toggle();
    // $(this).attr("disabled", true);
  });
});
