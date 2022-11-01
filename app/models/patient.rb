class Patient < ApplicationRecord
    # belongs_to :doctor
    has_many :reg_forms, through: reg
end
