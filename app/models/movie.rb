class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director,
             counter_cache: :filmography_count

  has_many   :roles,
             dependent: :destroy

  # Indirect associations

  has_many   :actors,
             through: :roles,
             source: :actor

  # Validations

  # Scopes

  def to_s
    id
  end
end
