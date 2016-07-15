require 'test_helper'

class VoiceOverTypesControllerTest < ActionController::TestCase
  setup do
    @voice_over_type = voice_over_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voice_over_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voice_over_type" do
    assert_difference('VoiceOverType.count') do
      post :create, voice_over_type: { name: @voice_over_type.name }
    end

    assert_redirected_to voice_over_type_path(assigns(:voice_over_type))
  end

  test "should show voice_over_type" do
    get :show, id: @voice_over_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voice_over_type
    assert_response :success
  end

  test "should update voice_over_type" do
    patch :update, id: @voice_over_type, voice_over_type: { name: @voice_over_type.name }
    assert_redirected_to voice_over_type_path(assigns(:voice_over_type))
  end

  test "should destroy voice_over_type" do
    assert_difference('VoiceOverType.count', -1) do
      delete :destroy, id: @voice_over_type
    end

    assert_redirected_to voice_over_types_path
  end
end
