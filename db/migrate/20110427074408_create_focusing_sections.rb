class CreateFocusingSections < ActiveRecord::Migration
  def self.up
    create_table :focusing_sections do |t|
      t.string :name
      t.integer :industry_id

      t.timestamps
    end
  end

  def self.down
    drop_table :focusing_sections
  end
end
