require "application_system_test_case"

class QueroCarrosTest < ApplicationSystemTestCase
  setup do
    @quero_carro = quero_carros(:one)
  end

  test "visiting the index" do
    visit quero_carros_url
    assert_selector "h1", text: "Quero Carros"
  end

  test "creating a Quero carro" do
    visit quero_carros_url
    click_on "New Quero Carro"

    fill_in "Descricao", with: @quero_carro.descricao
    fill_in "Marca", with: @quero_carro.marca
    fill_in "Modelo", with: @quero_carro.modelo
    fill_in "Nome", with: @quero_carro.nome
    fill_in "Preco", with: @quero_carro.preco
    fill_in "Telefone", with: @quero_carro.telefone
    click_on "Create Quero carro"

    assert_text "Quero carro was successfully created"
    click_on "Back"
  end

  test "updating a Quero carro" do
    visit quero_carros_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @quero_carro.descricao
    fill_in "Marca", with: @quero_carro.marca
    fill_in "Modelo", with: @quero_carro.modelo
    fill_in "Nome", with: @quero_carro.nome
    fill_in "Preco", with: @quero_carro.preco
    fill_in "Telefone", with: @quero_carro.telefone
    click_on "Update Quero carro"

    assert_text "Quero carro was successfully updated"
    click_on "Back"
  end

  test "destroying a Quero carro" do
    visit quero_carros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quero carro was successfully destroyed"
  end
end
