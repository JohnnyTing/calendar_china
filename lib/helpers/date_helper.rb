module DateHelper
  def current_year
    ::Date.current.year
  end

  def adjust_date(date)
    case date
    when String
      date
    when ::Date, DateTime
      format_date(date)
    when Integer
      format_date(Time.at(date))
    end
  end

  def format_date(date)
    date.strftime('%F')
  end

  def current_date
    format_date(::Date.current)
  end
end
