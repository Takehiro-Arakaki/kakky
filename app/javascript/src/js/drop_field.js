$(function(){
  $('.drop').hover(function(event){
    $(event.currentTarget).children('p').slideDown();
  },function(event){
    $(event.currentTarget).children('p').hide();
  });
});