class Location < ApplicationRecord
    has_many :recoveries
    has_many :relaxes
    has_many :rests
end
