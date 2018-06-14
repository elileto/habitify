require 'test_helper'

class DaysOfTheWeeksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @days_of_the_week = days_of_the_weeks(:one)
  end

  test "should get index" do
    get days_of_the_weeks_url
    assert_response :success
  end

  test "should get new" do
    get new_days_of_the_week_url
    assert_response :success
  end

  test "should create days_of_the_week" do
    assert_difference('DaysOfTheWeek.count') do
      post days_of_the_weeks_url, params: { days_of_the_week: { friday: @days_of_the_week.friday, monday: @days_of_the_week.monday, saturday: @days_of_the_week.saturday, sunday: @days_of_the_week.sunday, thursday: @days_of_the_week.thursday, tuesday: @days_of_the_week.tuesday, wednesday: @days_of_the_week.wednesday } }
    end

    assert_redirected_to days_of_the_week_url(DaysOfTheWeek.last)
  end

  test "should show days_of_the_week" do
    get days_of_the_week_url(@days_of_the_week)
    assert_response :success
  end

  test "should get edit" do
    get edit_days_of_the_week_url(@days_of_the_week)
    assert_response :success
  end

  test "should update days_of_the_week" do
    patch days_of_the_week_url(@days_of_the_week), params: { days_of_the_week: { friday: @days_of_the_week.friday, monday: @days_of_the_week.monday, saturday: @days_of_the_week.saturday, sunday: @days_of_the_week.sunday, thursday: @days_of_the_week.thursday, tuesday: @days_of_the_week.tuesday, wednesday: @days_of_the_week.wednesday } }
    assert_redirected_to days_of_the_week_url(@days_of_the_week)
  end

  test "should destroy days_of_the_week" do
    assert_difference('DaysOfTheWeek.count', -1) do
      delete days_of_the_week_url(@days_of_the_week)
    end

    assert_redirected_to days_of_the_weeks_url
  end
end
