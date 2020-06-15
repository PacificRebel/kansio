require "application_system_test_case"

class EtusivusTest < ApplicationSystemTestCase
  setup do
    @etusivu = etusivus(:one)
  end

  test "visiting the index" do
    visit etusivus_url
    assert_selector "h1", text: "Etusivus"
  end

  test "creating a Etusivu" do
    visit etusivus_url
    click_on "New Etusivu"

    click_on "Create Etusivu"

    assert_text "Etusivu was successfully created"
    click_on "Back"
  end

  test "updating a Etusivu" do
    visit etusivus_url
    click_on "Edit", match: :first

    click_on "Update Etusivu"

    assert_text "Etusivu was successfully updated"
    click_on "Back"
  end

  test "destroying a Etusivu" do
    visit etusivus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Etusivu was successfully destroyed"
  end
end
