require "application_system_test_case"

class DaysOfTheWeeksTest < ApplicationSystemTestCase
  setup do
    @days_of_the_week = days_of_the_weeks(:one)
  end

  test "visiting the index" do
    visit days_of_the_weeks_url
    assert_selector "h1", text: "Days Of The Weeks"
  end

  test "creating a Days of the week" do
    visit days_of_the_weeks_url
    click_on "New Days Of The Week"

    fill_in "Friday", with: @days_of_the_week.friday
    fill_in "Monday", with: @days_of_the_week.monday
    fill_in "Saturday", with: @days_of_the_week.saturday
    fill_in "Sunday", with: @days_of_the_week.sunday
    fill_in "Thursday", with: @days_of_the_week.thursday
    fill_in "Tuesday", with: @days_of_the_week.tuesday
    fill_in "Wednesday", with: @days_of_the_week.wednesday
    click_on "Create Days of the week"

    assert_text "Days of the week was successfully created"
    click_on "Back"
  end

  test "updating a Days of the week" do
    visit days_of_the_weeks_url
    click_on "Edit", match: :first

    fill_in "Friday", with: @days_of_the_week.friday
    fill_in "Monday", with: @days_of_the_week.monday
    fill_in "Saturday", with: @days_of_the_week.saturday
    fill_in "Sunday", with: @days_of_the_week.sunday
    fill_in "Thursday", with: @days_of_the_week.thursday
    fill_in "Tuesday", with: @days_of_the_week.tuesday
    fill_in "Wednesday", with: @days_of_the_week.wednesday
    click_on "Update Days of the week"

    assert_text "Days of the week was successfully updated"
    click_on "Back"
  end

  test "destroying a Days of the week" do
    visit days_of_the_weeks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Days of the week was successfully destroyed"
  end
end
