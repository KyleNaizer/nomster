class Place < ActiveRecord::Base
  belongs_to :user
  validates :name, :address, :description, :presence => true, :length => { :minimum => 3 }
end
