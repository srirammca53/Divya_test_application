json.array!(@patients) do |patient|
  json.extract! patient, :id, :first_name, :last_name, :middle_name, :date_of_birth, :age, :address, :phone_number, :care_Specialization
  json.url patient_url(patient, format: :json)
end
