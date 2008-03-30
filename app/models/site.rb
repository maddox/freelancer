require 'digest/sha1'
class Site < ActiveRecord::Base
  attr_accessor :password
  
  before_save :encrypt_password

private

  def encrypt_password
    return if password.blank?
    self.password_encrypted = password
  end

end
