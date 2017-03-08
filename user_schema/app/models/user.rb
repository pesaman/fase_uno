class User < ActiveRecord::Base
# Implementa los métodos y validaciones de tu modelo aquí. 
  
  
 #  #La dirección de email deberá contener una @ y al menos un . , con al menos un caracter antes de la @, un caracter entre la @ y el primer . y al menos dos caracteres después del . final.
   yvalidates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }
  
 #  #Dos usuarios no deberán tener el mismo email, este debe de ser único.
   validates :email, :uniqueness => true
   validate :validate_phone
  #validates :phone { :with =>(?:\+?|\b)[0-9]{10}\b}

  #validates :phone, :format => { :with =>(?:\+?|\b)[0-9]{10}\b}

  #Los usuarios deberán de ser mayores de edad.
  #old_enough = ("10/23/2000".to_date + 18.years) < Date.today



   def name
     "#{first_name} #{last_name}"
   end

  def age
    age = (Time.now.year - birthday.year) - 1
  end
  
  def validate_phone

  end


 end