# frozen_string_literal: true

require 'cells'
require 'cells-erb'
require 'cells-rails'
require 'simple_calendar_cells'

require 'action_controller/railtie'
require 'action_view/railtie'
require 'active_record'

# config
app = Class.new(Rails::Application)
app.config.secret_token = '9cbb08e8eae0c70d4719f5f625d3f8d7e19d63ceaaba66e3728555aeb6caa1b596653ef5f171cbbdaf45d11b874267676329b288597c6f3c542f684bf62d40b8'
# app.config.session_store :cookie_store, key: '_myapp_session'
# app.config.active_support.deprecation = :log
app.config.eager_load = false
app.config.root = File.dirname(__FILE__)
# Rails.backtrace_cleaner.remove_silencers!
app.initialize!

require 'dummy_app/cells'

# routes
app.routes.draw do
  get '/calendar', to: 'schedules#calendar'
  get '/week_calendar', to: 'schedules#week_calendar'
  get '/month_calendar', to: 'schedules#month_calendar'
end

# ActiveRecord::Base.logger = Logger.new(STDOUT)

ActionView::Base.class_eval do
  include ::Cell::RailsExtensions::ActionView
end
ActionController::Base.class_eval do
  include ::Cell::RailsExtensions::ActionController
end

# controllers
class SchedulesController < ActionController::Base
  def calendar
    render inline: <<~ERB
      <%= cell(:view_model, nil).(:render_calendar) %>
    ERB
  end

  def week_calendar
    render inline: <<~ERB
      <%= cell(:view_model, nil).(:render_week_calendar) %>
    ERB
  end

  def month_calendar
    render inline: <<~ERB
      <%= cell(:view_model, nil).(:render_month_calendar) %>
    ERB
  end
end

# helpers
Object.const_set(:ApplicationHelper, Module.new)
