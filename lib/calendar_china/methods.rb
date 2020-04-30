module CalendarChina
  module Methods
    def is_holiday?(date = china_date)
      holidays.include?(date)
    end

    def is_workday?(date = china_date)
      special_work_days.include?(date) || !(is_holiday?(date) || date.to_date.on_weekend?)
    end

    def is_rest?(date = china_date)
      !is_workday?(date)
    end

    def next_workday(date = china_date)
      result = {}
      st = date.to_date.deep_dup
      current_date = date.to_date
      loop do
        next_date = current_date.next
        date_str = format_date(next_date)
        if is_workday?(date_str)
          days = (next_date - st).to_i
          result[:date] = date_str
          result[:days] = days - 1
          break
        else
          current_date = next_date
        end
      end
      result
    end

    private

    def metadata
      return @metadata if @metadata

      path = File.expand_path("../../data/#{china_year}.json", __FILE__)
      @metadata = JSON.parse(File.read(path))['days']
      @metadata
    end

    def holidays
      @holidays ||= metadata.map do |data|
        data['date'] if data['isOffDay']
      end.compact
    end

    def special_work_days
      @special_work_days ||= metadata.map do |data|
        data['date'] unless data['isOffDay']
      end.compact
    end

  end
end
