class DocumentVersion < ActiveRecord::Base
    has_one :document
    validates_presence_of :document_id
end