class Recipe < ApplicationRecord
    scope :premium, -> { where(is_premium: true) }
    scope :common, -> { where(is_premium: false) }

    belongs_to :category
    has_many :ingredients

    has_many :comments
    has_many :bookmarks, dependent: :destroy

    paginates_per 6
end
