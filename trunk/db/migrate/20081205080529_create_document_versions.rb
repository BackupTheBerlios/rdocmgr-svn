class CreateDocumentVersions < ActiveRecord::Migration
  def self.up
    create_table :document_versions do |t|
      t.integer :id
      t.string :document_id
      t.string :version
      t.string :extension
      t.string :author
      t.date :released
      t.boolean :reviewed
      t.string :reviewref
      t.boolean :accepted
      t.boolean :with_comments
      t.date :completed
      t.boolean :paper
      t.string :testresult_doc

      t.timestamps
    end
  end

  def self.down
    drop_table :document_versions
  end
end
