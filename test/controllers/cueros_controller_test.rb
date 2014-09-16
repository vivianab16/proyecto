require 'test_helper'

class CuerosControllerTest < ActionController::TestCase
  setup do
    @cuero = cueros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cueros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cuero" do
    assert_difference('Cuero.count') do
      post :create, cuero: { ficha_id: @cuero.ficha_id, programa_id: @cuero.programa_id }
    end

    assert_redirected_to cuero_path(assigns(:cuero))
  end

  test "should show cuero" do
    get :show, id: @cuero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cuero
    assert_response :success
  end

  test "should update cuero" do
    patch :update, id: @cuero, cuero: { ficha_id: @cuero.ficha_id, programa_id: @cuero.programa_id }
    assert_redirected_to cuero_path(assigns(:cuero))
  end

  test "should destroy cuero" do
    assert_difference('Cuero.count', -1) do
      delete :destroy, id: @cuero
    end

    assert_redirected_to cueros_path
  end
end
