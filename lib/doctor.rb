class Doctor

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def new_appointment(date = today, patient)
  Appointment.new(date, patient, self)
end

def appointments
  Appointment.all.each do |appoint|
    appoint.doctor == self
  end
end

def patients
  appointments.map {|appoint| appoint.patient}
end

end
