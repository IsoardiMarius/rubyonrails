# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 8 }, uniqueness: true # On valide que le username est présent, qu'il fait au moins 8 caractères et qu'il est unique
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d-]+(\.[a-z\d-]+)*\.[a-z]+\z/i }, uniqueness: true # On valide que l'email est présent, qu'il est au bon format et qu'il est unique
  validates :first_name, presence: true # On valide que le first_name est présent
  validates :last_name, presence: true  # On valide que le last_name est présent
  validates :password, length: { minimum: 8 }, format: { with: /(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]/ }
  validates :created_at, presence: false # On valide que le created_at est présent
  validates :updated_at, presence: false # On valide que le updated_at est présent
end
