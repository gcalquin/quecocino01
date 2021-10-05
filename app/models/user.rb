class User < ApplicationRecord
    has_many :pantries
    has_many :receipes
end
