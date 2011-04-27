class CreateSubSections < ActiveRecord::Migration
  def self.up
    create_table :sub_sections do |t|
      t.string :name
      t.integer :section_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sub_sections
  end
end
