// 回答クリックした際にモーダルのcontentにidを渡す
$(function(){
  $('button.select_content').click(function(event){
    const question_select_id = $(event.currentTarget).next('span.select_content').html();
    $('#question_select_id').val(question_select_id);
  });
});
