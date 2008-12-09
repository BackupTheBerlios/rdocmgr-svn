class Project < ActiveRecord::Base
    has_many :document
    has_many :document_type
    validates_length_of :name, :minimum => 4
    validates_presence_of :project_number, :fs_root
    
end

