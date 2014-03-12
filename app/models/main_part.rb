class MainPart < ActiveRecord::Base
  validates :name_parts, :brand, :code_part, :code_parts_advanced , presence: true
end
