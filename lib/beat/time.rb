module Beat
  class Time < ::Time
    def to_beats
      self.class.at(self.utc)
    end

    def beats
      (hour * (1000.0/24.0)) + (min * (1000.0/1440.0)) + (sec * (1000.0/86400.0))
    end
  end
end
