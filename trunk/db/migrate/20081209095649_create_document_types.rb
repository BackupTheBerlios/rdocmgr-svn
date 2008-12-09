class CreateDocumentTypes < ActiveRecord::Migration
  def self.up
    create_table :document_types do |t|
      t.integer :id
      t.references :project
      t.string :name
      t.string :description
      t.string :dir_name
      t.string :prefix

      t.timestamps
    end
  end

  def self.down
    drop_table :document_types
  end
end
