class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	has_many :posts
  	has_many :audit_logs
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	validates_presence_of :first_name, :last_name, :phone

	# PHONE_REGEX = /\A[0-9]*\z/
	PHONE_REGEX = /\A\d{10}$\z/

	validates_format_of :phone, with: PHONE_REGEX

	# validates :phone, length: { is : 10 }

	def full_name
		first_name.upcase + ", " + last_name.upcase
	end
end
