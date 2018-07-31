require 'test_helper'

class CategoriesControllerTest < ActionDispatch::TestCase

  def setup
    @category = Category.create(name: "sports")
  end

  test "should get categories index" do
    get :index_category_path
    assert_response :success
  end

  test "should get new" do
    get :new_category_path
    assert_response :success
  end

  test "should get show" do
    get(:show_category_path, {'id' => @category.id})
    assert_response :success
  end

end