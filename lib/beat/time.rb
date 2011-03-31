module Beat
  class Time < ::Time
    def to_beats
      self.class.at(self.utc)
    end

    def beats
      (hour * (1000.0/24.0)) + (min * (1000.0/1440.0)) + (sec * (1000.0/86400.0))
    end

    def beat_date_string
      strftime("%Y-%mm-%dd")
    end

    def beat_datetime_string
      strftime("%Y-%mm-%dd @#{"%0.2f" % beats}")
    end
  end
end
