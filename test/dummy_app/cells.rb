# frozen_string_literal: true

require 'cell/partial'

class ViewModelCell < Cell::ViewModel
  include SimpleCalendar::Cells
  include Partial

  self.view_paths = ['test/dummy_app/views']

  def render_calendar
    text = ''
    calendar start_date: DateTime.parse('22.09.2000 01:00') do |date|
      text += "#{date.strftime('%e')},"
    end
    text
  end

  def render_week_calendar
    text = ''
    week_calendar start_date: DateTime.parse('22.09.2000 01:00') do |date|
      text += "#{date.strftime('%e')},"
    end
    text
  end

  def render_month_calendar
    text = ''
    month_calendar start_date: DateTime.parse('22.09.2000 01:00') do |date|
      text += "#{date.strftime('%e')},"
    end
    text
  end
end
