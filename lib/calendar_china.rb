require 'calendar_china/version'
require 'calendar_china/methods'
require 'active_support/all'
require 'json'
require_relative 'helpers/date_helper'

module CalendarChina
  class Error < StandardError; end

  # China's Calendar. For more details, see the calendar_china/methods.rb
  #
  # NOTE: need to update the lib/data/{xxxx}.json on time.
  # retrieve these json file from https://github.com/NateScarlet/holiday-cn, and thanks to NateScarlet
  class Date
    include CalendarChina::Methods
    include DateHelper

    attr_accessor :china_year, :china_date

    # By default, initialize current year and date.
    # you also can specify the fields. Below is some examples for usage:
    # ccd = CalendarChina::Date.new("2020", "2020-01-01")
    # ccd.is_holiday? => true
    # ccd.is_rest? => true
    # ccd.is_workday? => false
    # ccd.next_workday => {:date=>"2020-01-02", :days=>0}
    def initialize(year = current_year, date = current_date)
      @china_year = year
      @china_date = adjust_date(date)
    end
  end
end
