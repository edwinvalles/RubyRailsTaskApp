class Entry < ApplicationRecord
    validates :name, presence: true,
                    uniqueness: true
    validates :details, presence: true,
                    length: { minimum: 5}

    belongs_to :category
    belongs_to :user
end