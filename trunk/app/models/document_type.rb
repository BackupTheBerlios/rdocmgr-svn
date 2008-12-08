class DocumentType < ActiveRecord::Base
    has_many :document
    has_one :project
end