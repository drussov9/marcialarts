require 'test_helper'

class MarcialartsControllerTest < ActionController::TestCase
  setup do
    @marcialart = marcialarts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marcialarts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marcialart" do
    assert_difference('Marcialart.count') do
      post :create, marcialart: { aplica: @marcialart.aplica, dominio: @marcialart.dominio, image: @marcialart.image, link: @marcialart.link, nombre: @marcialart.nombre, origen: @marcialart.origen }
    end

    assert_redirected_to marcialart_path(assigns(:marcialart))
  end

  test "should show marcialart" do
    get :show, id: @marcialart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marcialart
    assert_response :success
  end

  test "should update marcialart" do
    patch :update, id: @marcialart, marcialart: { aplica: @marcialart.aplica, dominio: @marcialart.dominio, image: @marcialart.image, link: @marcialart.link, nombre: @marcialart.nombre, origen: @marcialart.origen }
    assert_redirected_to marcialart_path(assigns(:marcialart))
  end

  test "should destroy marcialart" do
    assert_difference('Marcialart.count', -1) do
      delete :destroy, id: @marcialart
    end

    assert_redirected_to marcialarts_path
  end
end
