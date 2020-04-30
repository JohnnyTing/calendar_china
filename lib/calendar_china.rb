require "calendar_china/version"
require 'calendar_china/methods'
require 'active_support/all'
require 'json'
require_relative 'helpers/date_helper'

module CalendarChina
  class Error < StandardError; end
  class Date
    include CalendarChina::Methods
    include DateHelper

    attr_accessor :china_year, :china_date
    def initialize(year = current_year, date = current_date)
      @china_year = year
      @china_date = right_date(date)
    end
  end
end
