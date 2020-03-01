class Patient
  attr_accessor :name  
  @@all = []

  def initialize(name)
    @name = name 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end 
  
  def new_appointment 
    Appointment.all.select {|appt| appt.patient == self}
  end 
  
end 