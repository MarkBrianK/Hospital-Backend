class Pharmacy < ApplicationRecord
    has_many :tickets
    has_many :patients_through_tickets
end
