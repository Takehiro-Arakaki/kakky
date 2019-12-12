$(function(){
  $('label').click(function(event){
    console.log($(event))
    $(event.currentTarget).addClass('active')
    $(event.currentTarget).siblings().removeClass('active')
  });
});



