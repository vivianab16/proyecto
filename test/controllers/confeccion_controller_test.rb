require 'test_helper'

class ConfeccionControllerTest < ActionController::TestCase
  setup do
    @confeccion = confeccion(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:confeccion)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create confeccion" do
    assert_difference('Confeccion.count') do
      post :create, confeccion: { ficha_id: @confeccion.ficha_id, programa_id: @confeccion.programa_id }
    end

    assert_redirected_to confeccion_path(assigns(:confeccion))
  end

  test "should show confeccion" do
    get :show, id: @confeccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @confeccion
    assert_response :success
  end

  test "should update confeccion" do
    patch :update, id: @confeccion, confeccion: { ficha_id: @confeccion.ficha_id, programa_id: @confeccion.programa_id }
    assert_redirected_to confeccion_path(assigns(:confeccion))
  end

  test "should destroy confeccion" do
    assert_difference('Confeccion.count', -1) do
      delete :destroy, id: @confeccion
    end

    assert_redirected_to confeccion_index_path
  end
end
