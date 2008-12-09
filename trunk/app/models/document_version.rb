class DocumentVersion < ActiveRecord::Base
  belongs_to :document
  validates_presence_of :document_id,:author,:extension,:version
  
  
end
