class Post < ActiveRecord::Base
  validates_presence_of :name, :title
  validates_length_of :name, :minimum => 4
  validates_length_of :title, :minimum => 6
  has_many :comments #Post is connected to comments table
  has_many :tags #Post is connected to tags table

  accepts_nested_attributes_for :tags, :allow_destroy => :true  ,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
