class Recipe < ApplicationRecord
    belongs_to: id_user
    has_one: category
end
