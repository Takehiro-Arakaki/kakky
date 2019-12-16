$(function(){
  $('.hover_scale').hover(
    function(event){
      $(event.currentTarget).css({transform: "scale(1)"});
    },
    function (event) {
      $(event.currentTarget).css({transform: "scale(0.8)"});
    }
  );

  $('.hover_border').hover(
    function(event){
      $(event.currentTarget).addClass('border border-danger');
    },
    function (event) {
      $(event.currentTarget).removeClass('border border-danger');
    }
  );
});