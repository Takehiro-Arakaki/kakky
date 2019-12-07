$(function(){
  $('.answer').click(function(event){
    $(event.currentTarget).children('p').slideDown();
  },function(event){
    $(event.currentTarget).children('p').slideUp();
  });
});