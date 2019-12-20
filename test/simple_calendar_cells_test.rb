# frozen_string_literal: true

require 'test_helper'

class SimpleCalendarCellsTest < ActionController::TestCase
  tests SchedulesController

  setup do
    @routes = Rails.application.routes
  end

  test 'rendering view model cell for calendar' do
    get :calendar
    assert_equal "22,23,24,25,\n", @response.body
  end

  test 'rendering view model cell for week_calendar' do
    get :week_calendar
    assert_equal "18,19,20,21,22,23,24,\n", @response.body
  end

  test 'rendering view model cell for month_calendar' do
    get :month_calendar
    assert_equal "28,29,30,31, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30, 1,\n", @response.body
  end
end
