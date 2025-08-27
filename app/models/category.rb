class Category < ApplicationRecord
  has_many :products

  before_validation :set_slug, on: :create

  validates :name, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true

  def to_param
    slug
  end

  private

  def set_slug
    self.slug ||= name.parameterize if name.present?
  end
end
