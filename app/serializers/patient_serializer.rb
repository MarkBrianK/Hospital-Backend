class PatientSerializer
  include JSONAPI::Serializer
  attributes :
  has_many :reg_forms
end
