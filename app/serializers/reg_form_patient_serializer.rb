class RegFormPatientSerializer
  include JSONAPI::Serializer
  attributes :patient_id, :reg_form_id
  belongs_to :patient
  belongs_to :reg_form
end
