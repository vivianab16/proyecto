require 'test_helper'

class MobiliariosControllerTest < ActionController::TestCase
  setup do
    @mobiliario = mobiliarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mobiliarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mobiliario" do
    assert_difference('Mobiliario.count') do
      post :create, mobiliario: { ficha_id: @mobiliario.ficha_id, programa_id: @mobiliario.programa_id }
    end

    assert_redirected_to mobiliario_path(assigns(:mobiliario))
  end

  test "should show mobiliario" do
    get :show, id: @mobiliario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mobiliario
    assert_response :success
  end

  test "should update mobiliario" do
    patch :update, id: @mobiliario, mobiliario: { ficha_id: @mobiliario.ficha_id, programa_id: @mobiliario.programa_id }
    assert_redirected_to mobiliario_path(assigns(:mobiliario))
  end

  test "should destroy mobiliario" do
    assert_difference('Mobiliario.count', -1) do
      delete :destroy, id: @mobiliario
    end

    assert_redirected_to mobiliarios_path
  end
end
