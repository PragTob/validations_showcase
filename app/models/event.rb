class Event < ApplicationRecord
  before_validation :set_datetimes_to_date

  DATE_TIMES = [
    :crew_arrives_at,
    :performers_arrive_at,
    :open_at,
    :starts_at,
    :ends_at
  ]

  def set_datetimes_to_date
    base_date = date

    DATE_TIMES.each do |time_attribute|
      original = public_send(time_attribute)
      if original
        adjusted_time = base_date.change hour: original.hour, min: original.min
        self.public_send("#{time_attribute}=", adjusted_time)
      end
    end
  end
end
