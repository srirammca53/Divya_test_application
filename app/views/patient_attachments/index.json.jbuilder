json.array!(@patient_attachments) do |patient_attachment|
  json.extract! patient_attachment, :id, :patient_id, :avatar
  json.url patient_attachment_url(patient_attachment, format: :json)
end
