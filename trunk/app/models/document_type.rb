class DocumentType < ActiveRecord::Base
  belongs_to :project
  has_many :document
  validates_presence_of :name
  validates_presence_of :project
  validates_length_of :name, :minimum => 5
end
