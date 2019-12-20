$(function(){
  $('.hover_scale').hover(
    function(event){
      $(event.currentTarget).css({transform: "scale(1)"});
    },
    function (event) {
      $(event.currentTarget).css({transform: "scale(0.8)"});
    }
  );

  $('.hover_border_red').hover(
    function(event){
      $(event.currentTarget).addClass('border border-danger');
    },
    function (event) {
      $(event.currentTarget).removeClass('border border-danger');
    }
  );

  $('.hover_border_blue').hover(
    function(event){
      $(event.currentTarget).addClass('border border-primary');
    },
    function (event) {
      $(event.currentTarget).removeClass('border border-primary');
    }
  );
});