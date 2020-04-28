class Location < ApplicationRecord
    has_many :recoveries, :relaxes, :rests
end
