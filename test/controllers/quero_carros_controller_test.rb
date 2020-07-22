require 'test_helper'

class QueroCarrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quero_carro = quero_carros(:one)
  end

  test "should get index" do
    get quero_carros_url
    assert_response :success
  end

  test "should get new" do
    get new_quero_carro_url
    assert_response :success
  end

  test "should create quero_carro" do
    assert_difference('QueroCarro.count') do
      post quero_carros_url, params: { quero_carro: { descricao: @quero_carro.descricao, marca: @quero_carro.marca, modelo: @quero_carro.modelo, nome: @quero_carro.nome, preco: @quero_carro.preco, telefone: @quero_carro.telefone } }
    end

    assert_redirected_to quero_carro_url(QueroCarro.last)
  end

  test "should show quero_carro" do
    get quero_carro_url(@quero_carro)
    assert_response :success
  end

  test "should get edit" do
    get edit_quero_carro_url(@quero_carro)
    assert_response :success
  end

  test "should update quero_carro" do
    patch quero_carro_url(@quero_carro), params: { quero_carro: { descricao: @quero_carro.descricao, marca: @quero_carro.marca, modelo: @quero_carro.modelo, nome: @quero_carro.nome, preco: @quero_carro.preco, telefone: @quero_carro.telefone } }
    assert_redirected_to quero_carro_url(@quero_carro)
  end

  test "should destroy quero_carro" do
    assert_difference('QueroCarro.count', -1) do
      delete quero_carro_url(@quero_carro)
    end

    assert_redirected_to quero_carros_url
  end
end
