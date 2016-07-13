require 'test_helper'

class CelebsControllerTest < ActionController::TestCase
  setup do
    @celeb = celebs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:celebs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create celeb" do
    assert_difference('Celeb.count') do
      post :create, celeb: { celeb_category_id: @celeb.celeb_category_id, first_name: @celeb.first_name, full_name: @celeb.full_name, last_name: @celeb.last_name }
    end

    assert_redirected_to celeb_path(assigns(:celeb))
  end

  test "should show celeb" do
    get :show, id: @celeb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @celeb
    assert_response :success
  end

  test "should update celeb" do
    patch :update, id: @celeb, celeb: { celeb_category_id: @celeb.celeb_category_id, first_name: @celeb.first_name, full_name: @celeb.full_name, last_name: @celeb.last_name }
    assert_redirected_to celeb_path(assigns(:celeb))
  end

  test "should destroy celeb" do
    assert_difference('Celeb.count', -1) do
      delete :destroy, id: @celeb
    end

    assert_redirected_to celebs_path
  end
end
