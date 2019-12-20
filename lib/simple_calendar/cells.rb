# frozen_string_literal: true

module SimpleCalendar
  module Cells
    extend ActiveSupport::Concern

    included do
      include SimpleCalendar::Helpers::CellsHelper
    end
  end
end
