class Evidence < ApplicationRecord
  has_many :pages
  belongs_to :person, optional: true

  scope :for_category, ->(category) { where(category: category)}
end
