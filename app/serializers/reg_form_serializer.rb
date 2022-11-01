class RegFormSerializer
  include JSONAPI::Serializer
  attributes :reg_number, :lab_number, :bill, :bill_status
  has_one :patient
end
