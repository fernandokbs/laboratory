class User < ApplicationRecord
  enum user_type: {Administrador: 1, SubAdministrador: 2, Caja: 3, Seguimiento: 4, Socio: 5, 'Control de Caja': 6}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, uniqueness: true
end
