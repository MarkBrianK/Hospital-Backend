class Patient < ApplicationRecord
    # belongs_to :doctor
    has_many :reg_forms, through: :reg_form_patients
    belongs_to :doctor
    # accepts_nested_attributes_for :reg_form_patients
end
