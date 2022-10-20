class Doctor < ApplicationRecord
    has_many :patients, through: :tickets
end
