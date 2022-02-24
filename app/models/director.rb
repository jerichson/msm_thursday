class Director < ApplicationRecord
  # Direct associations

  has_many   :filmography,
             class_name: "Movie",
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    id
  end
end
