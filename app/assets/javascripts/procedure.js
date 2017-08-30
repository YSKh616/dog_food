$(function() {
  $('.procedure_add_button').on('click', function(){
    var procedure_num = $('.procedures_list').length;
    var procedure_list_num = procedure_num + 1;
    console.log(procedure_num)
    var input =
      '<div class="procedures_list">'
      + '<div class="procedure_header">'
      + '<a>' + '手順.' + procedure_list_num + '</a>'
      + '</div>'
      + '<div class="procedure_image">'
      + '<input type="file" name="recipe[procedures_attributes]['+ procedure_num +'][image]" id="recipe_procedures_attributes_'+ procedure_num + '_image">'
      + '</div>'
      + '<div class="procedure_description">'
      + '<input placeholder="手順の説明" type="text" name="recipe[procedures_attributes]['+ procedure_num +'][description]" id="recipe_procedures_attributes_'+ procedure_num + '_image" required>'
      + '</div>'
      + '<button class="delete_button" id="delete_button_id">'
      + '削除'
      + '</button>'
      + '</div>'
      $('.procedure_box').append(input);
      procedure_num ++;
  });
  $(document).on('click','#delete_button_id', function(){
    $('#delete_button_id').parent().remove();
  })
});
