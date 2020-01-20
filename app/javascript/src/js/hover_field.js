$(function(){
  // 拡大・縮小
  $('.hover_scale').hover(
    function(event){
      $(event.currentTarget).css({transform: "scale(1)"});
    },
    function (event) {
      $(event.currentTarget).css({transform: "scale(0.8)"});
    }
  );

  // 赤
  $('.hover_border_red').hover(
    function(event){
      $(event.currentTarget).addClass('border border-danger');
    },
    function (event) {
      $(event.currentTarget).removeClass('border border-danger');
    }
  );

  // 青
  $('.hover_border_blue').hover(
    function(event){
      $(event.currentTarget).addClass('border border-primary');
    },
    function (event) {
      $(event.currentTarget).removeClass('border border-primary');
    }
  );

  // 黒
  $('.hover_border_dark').hover(
    function(event){
      $(event.currentTarget).addClass('border border-dark');
    },
    function (event) {
      $(event.currentTarget).removeClass('border border-dark');
    }
  );
});