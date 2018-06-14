require "application_system_test_case"

class ListItemsTest < ApplicationSystemTestCase
  setup do
    @list_item = list_items(:one)
  end

  test "visiting the index" do
    visit list_items_url
    assert_selector "h1", text: "List Items"
  end

  test "creating a List item" do
    visit list_items_url
    click_on "New List Item"

    fill_in "Complete", with: @list_item.complete
    fill_in "Counter", with: @list_item.counter
    fill_in "Difficultylvl", with: @list_item.difficultyLvl
    fill_in "Experiencepoints", with: @list_item.experiencePoints
    fill_in "Task", with: @list_item.task
    click_on "Create List item"

    assert_text "List item was successfully created"
    click_on "Back"
  end

  test "updating a List item" do
    visit list_items_url
    click_on "Edit", match: :first

    fill_in "Complete", with: @list_item.complete
    fill_in "Counter", with: @list_item.counter
    fill_in "Difficultylvl", with: @list_item.difficultyLvl
    fill_in "Experiencepoints", with: @list_item.experiencePoints
    fill_in "Task", with: @list_item.task
    click_on "Update List item"

    assert_text "List item was successfully updated"
    click_on "Back"
  end

  test "destroying a List item" do
    visit list_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "List item was successfully destroyed"
  end
end
