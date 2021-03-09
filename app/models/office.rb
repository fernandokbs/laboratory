class Office < ApplicationRecord
    validates :name, :direction, :phone, :city, :manager, :position, presence: true
end
