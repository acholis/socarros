require 'test_helper'

class InteressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interess = interesses(:one)
  end

  test "should get index" do
    get interesses_url
    assert_response :success
  end

  test "should get new" do
    get new_interess_url
    assert_response :success
  end

  test "should create interess" do
    assert_difference('Interesse.count') do
      post interesses_url, params: { interess: { nome: @interess.nome, proposta: @interess.proposta, telefone: @interess.telefone, visita: @interess.visita } }
    end

    assert_redirected_to interess_url(Interesse.last)
  end

  test "should show interess" do
    get interess_url(@interess)
    assert_response :success
  end

  test "should get edit" do
    get edit_interess_url(@interess)
    assert_response :success
  end

  test "should update interess" do
    patch interess_url(@interess), params: { interess: { nome: @interess.nome, proposta: @interess.proposta, telefone: @interess.telefone, visita: @interess.visita } }
    assert_redirected_to interess_url(@interess)
  end

  test "should destroy interess" do
    assert_difference('Interesse.count', -1) do
      delete interess_url(@interess)
    end

    assert_redirected_to interesses_url
  end
end
