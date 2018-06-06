class Asana < ApplicationRecord
  extend FriendlyId
    friendly_id :sanskrit_name, use: :slugged
end
