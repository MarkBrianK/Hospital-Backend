class RegFormPatientSerializer
  include JSONAPI::Serializer
  attributes
  belongs_to :patient
  belongs_to :reg_form
end
