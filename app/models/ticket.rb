class Ticket < ActiveRecord::Base

  attr_accessible :description, :title
  belongs_to :project
  validates :title, :description, :presence => true,
                                  :length => { :minimum => 10 }
end