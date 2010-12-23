class User < ActiveRecord::Base
  validates_presence_of :user, :password, :password_confirmation, :mail
  validates_length_of :user, :password, :password_confirmation, :mail, :minimum => 4
  has_many :comments
  
  accepts_nested_attributes_for :comments, :allow_destroy => :true  ,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
