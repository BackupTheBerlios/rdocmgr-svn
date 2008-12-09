class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.string :id
      t.references :project
      t.references :document_type
      t.integer :doc_number
      t.string :description
      t.string :fname_suffix

      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
