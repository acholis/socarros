require "application_system_test_case"

class InteressesTest < ApplicationSystemTestCase
  setup do
    @interess = interesses(:one)
  end

  test "visiting the index" do
    visit interesses_url
    assert_selector "h1", text: "Interesses"
  end

  test "creating a Interesse" do
    visit interesses_url
    click_on "New Interesse"

    fill_in "Nome", with: @interess.nome
    fill_in "Proposta", with: @interess.proposta
    fill_in "Telefone", with: @interess.telefone
    fill_in "Visita", with: @interess.visita
    click_on "Create Interesse"

    assert_text "Interesse was successfully created"
    click_on "Back"
  end

  test "updating a Interesse" do
    visit interesses_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @interess.nome
    fill_in "Proposta", with: @interess.proposta
    fill_in "Telefone", with: @interess.telefone
    fill_in "Visita", with: @interess.visita
    click_on "Update Interesse"

    assert_text "Interesse was successfully updated"
    click_on "Back"
  end

  test "destroying a Interesse" do
    visit interesses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Interesse was successfully destroyed"
  end
end
