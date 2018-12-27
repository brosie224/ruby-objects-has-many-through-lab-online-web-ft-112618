def Patient

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def new_appointment(doctor, date)
  Appointment.new(date, self, doctor)
end

def appointments
  Appointment.all.each do |appoint|
    appoint.patient == self
end

end
