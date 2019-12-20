# frozen_string_literal: true

require 'cells'
require 'simple_calendar/view_helpers'
require 'simple_calendar/cells/version'
require 'cell/partial'

ActiveSupport.on_load :action_view do
  module SimpleCalendar
    module Helpers
      module CellsHelper
        include SimpleCalendar::ViewHelpers
        include ActionView::Helpers::OutputSafetyHelper
        include ActionView::Helpers::TranslationHelper
        include Cell::ViewModel::Partial

        def calendar(options = {}, &block)
          partial = { partial: options[:partial] || '../views/simple_calendar/calendar' }
          options = options.reverse_merge(partial)
          super
        end

        def month_calendar(options = {}, &block)
          partial = { partial: options[:partial] || '../views/simple_calendar/month_calendar' }
          options = options.reverse_merge(partial)
          super
        end

        def week_calendar(options = {}, &block)
          partial = { partial: options[:partial] || '../views/simple_calendar/week_calendar' }
          options = options.reverse_merge(partial)
          super
        end
      end
    end
  end
end

require 'simple_calendar/cells'
