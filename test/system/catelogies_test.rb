require "application_system_test_case"

class CatelogiesTest < ApplicationSystemTestCase
  setup do
    @catelogy = catelogies(:one)
  end

  test "visiting the index" do
    visit catelogies_url
    assert_selector "h1", text: "Catelogies"
  end

  test "creating a Catelogy" do
    visit catelogies_url
    click_on "New Catelogy"

    fill_in "Micropost", with: @catelogy.micropost_id
    fill_in "Name", with: @catelogy.name
    click_on "Create Catelogy"

    assert_text "Catelogy was successfully created"
    click_on "Back"
  end

  test "updating a Catelogy" do
    visit catelogies_url
    click_on "Edit", match: :first

    fill_in "Micropost", with: @catelogy.micropost_id
    fill_in "Name", with: @catelogy.name
    click_on "Update Catelogy"

    assert_text "Catelogy was successfully updated"
    click_on "Back"
  end

  test "destroying a Catelogy" do
    visit catelogies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Catelogy was successfully destroyed"
  end
end
