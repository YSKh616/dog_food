$(function() {
  $('.material_add_button').on('click', function() {
    var material_num = $('.edit_raw_material_list').length;
    var input =
      '<div class="edit_raw_material_list">'
      + '<span>'
      + '<input placeholder="材料を入力" class="edit_name" size="12" type="text" name="recipe[raw_materials_attributes]['+ material_num + '][material]"  id="recipe_raw_materials_attributes_'+ material_num +'_material" required>'
      + '</span>'
      + '<span>'
      + '<input placeholder="分量を入力" class="edit_quantity" size="12" type="text" name="recipe[raw_materials_attributes]['+ material_num + '][quantity]"  id="recipe_raw_materials_attributes_'+ material_num +'_quantity" required>'
      + '</span>'
      + '</div>'
      $('.raw_material_list').append(input);
      material_num ++;
  });
});
