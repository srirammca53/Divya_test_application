class PatientAttachment < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
   belongs_to :patient
end
