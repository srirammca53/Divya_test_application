class Patient < ActiveRecord::Base
	validates :first_name, :last_name, :phone_number, :age, :care_Specialization , presence: true
	validates :first_name, length: { maximum: 100 },:format     => { :with => /\A[a-zA-Z]*\Z/  , :message => ' cannot contain special characters & numerics' }
    validates :last_name, length: { maximum: 100 }, :format     => { :with => /\A[a-zA-Z]*\Z/  , :message => ' cannot contain special characters & numerics' }
    validates :middle_name, length: { maximum: 100 }, :format     => { :with => /\A[a-zA-Z]*\Z/  , :message => ' cannot contain special characters & numerics' }
    validates :phone_number,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 10 }  
    validates :age, :inclusion => { :in => 1...100, :message => "The age must be between 1 and 100" }
    validates :address, length: { maximum: 300 }
   has_many :patient_attachments
   accepts_nested_attributes_for :patient_attachments
end