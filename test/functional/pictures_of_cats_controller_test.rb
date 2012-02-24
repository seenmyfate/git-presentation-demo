require 'test_helper'

class PicturesOfCatsControllerTest < ActionController::TestCase
  setup do
    @pictures_of_cat = pictures_of_cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pictures_of_cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pictures_of_cat" do
    assert_difference('PicturesOfCat.count') do
      post :create, pictures_of_cat: @pictures_of_cat.attributes
    end

    assert_redirected_to pictures_of_cat_path(assigns(:pictures_of_cat))
  end

  test "should show pictures_of_cat" do
    get :show, id: @pictures_of_cat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pictures_of_cat
    assert_response :success
  end

  test "should update pictures_of_cat" do
    put :update, id: @pictures_of_cat, pictures_of_cat: @pictures_of_cat.attributes
    assert_redirected_to pictures_of_cat_path(assigns(:pictures_of_cat))
  end

  test "should destroy pictures_of_cat" do
    assert_difference('PicturesOfCat.count', -1) do
      delete :destroy, id: @pictures_of_cat
    end

    assert_redirected_to pictures_of_cats_path
  end
end
