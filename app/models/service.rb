class Service < ApplicationRecord
  belongs_to :organ
  belongs_to :classification
  belongs_to :type_service
  belongs_to :tabulator
end
