class Patient

attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.patient = self
    @appointments << appointment
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.map { |appointment| appointment.doctor }
  end

end
