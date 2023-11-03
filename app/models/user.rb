class User < ApplicationRecord
  has_secure_password
  
  has_one :profile, dependent: :destroy

  after_create :set_profile
  has_many :dog , dependent: :destroy

  validates :email, presence: true, uniqueness: true,
  format: { with: /\A([\w+-].?)+@[a-z\d-]+(.[a-z]+)*.[a-z]+\z/i,
    message: "formato del mail invalido"
  }

  validates :dni, 
  presence: true,
  uniqueness: true,
  format: {
    with: /\A[0-9]+\z/,
    message: "debe tener solo números"
  }

  validates :password, presence: true
  validates :nombre, presence: true,
  format: {
    with: /\A[a-z-A-Z]+\z/,
    message: "solo se permiten letras en el nombre"
  }
  validates :apellido, presence: true,
  format: {
      with: /\A[a-z-A-Z]+\z/,
      message: "solo se permiten letras en el apellido"
    }
  validates :rol, presence: true

  before_save :downcase_attributes

  private
  def set_profile
    @profile = Profile.new
  end
  def downcase_attributes
      self.email = email.downcase
  end
end