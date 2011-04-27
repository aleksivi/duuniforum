class CreateGalleries < ActiveRecord::Migration
  def self.up
    create_table :galleries do |t|
      t.string :name
      t.integer :industry_id
      t.integer :sub_section_id

      t.timestamps
    end
  end

  def self.down
    drop_table :galleries
  end
end
