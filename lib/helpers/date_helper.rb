module DateHelper
  def current_year
    ::Date.current.year
  end

  def right_date(date)
    case date
    when String
      date
    when ::Date, DateTime
      date.strftime('%F')
    when Integer
      Time.at(date).strftime('%F')
    end
  end

  def format_date(date)
    date.strftime('%F')
  end

  def current_date
    ::Date.current.strftime('%F')
  end
end
