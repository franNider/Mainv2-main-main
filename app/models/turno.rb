class Turno < ApplicationRecord

    validates :estado, presence: true,
    format: {
      with: /\A[a-z-A-Z]+\z/,
      message: :invalid
    }

    validates :nombre, presence: true,
    format: {
      with: /\A[a-z-A-Z]+\z/,
      message: :invalid
    }

    validates :apellido, presence: true,
    format: {
      with: /\A[a-z-A-Z]+\z/,
      message: :invalid
    }

    validates :motivo, presence: true,
    format: {
      with: /\A[a-z-A-Z]+\z/,
      message: :invalid
    }

    validates :fecha, presence: true,

end
