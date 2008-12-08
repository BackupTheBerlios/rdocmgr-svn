class Document < ActiveRecord::Base
        has_many :DocumentVersion
        validates_presence_of :description,:fname_suffix,:DocumentType,:doc_number,:project
        validates_length_of :description, :minimum => 5
        validates_uniqueness_of :id,:doc_number
        has_one :project
        has_one :document_type
end