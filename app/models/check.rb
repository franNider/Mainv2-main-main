class Check < ApplicationRecord
    validates :descripcion, presence: true

    validates :perro, presence: true,
    format: {
      with: /\A[a-z-A-Z]+\z/,
      message: :invalid
    }
    
    validates :dia, presence: true,
  format: {
    with: /\A[0-9]+\z/,
    message: :invalid
  }

  validates :año, presence: true,
  format: {
    with: /\A[0-9]+\z/,
    message: :invalid
  }
  validates :mes, presence: true,
  format: {
    with: /\A[0-9]+\z/,
    message: :invalid
  }
end
