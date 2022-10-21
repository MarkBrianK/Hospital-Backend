class Pharmacy < ApplicationRecord
    has_many :tickets
    has_many :patients,  through: :tickets
end
