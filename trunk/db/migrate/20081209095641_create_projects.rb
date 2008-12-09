class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.integer :id
      t.string :name
      t.string :project_number
      t.string :fs_root

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
