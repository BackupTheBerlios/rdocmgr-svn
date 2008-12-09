class Document < ActiveRecord::Base
    belongs_to :project
    belongs_to :document_type
    has_many :document_version
    #validates_presence_of :description,:fname_suffix,:document_type,:doc_number,:project
    #validates_length_of :description, :minimum => 5
    #validates_uniqueness_of :id,:doc_number
    #has_one :project
    #has_one :document_type
  
end
