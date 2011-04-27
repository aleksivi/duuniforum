class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :employer
      t.string :homepage
      t.string :contact_person
      t.string :email
      t.string :phone
      t.string :job_title
      t.integer :industry_id
      t.integer :focusing_section_id
      t.string :description
      t.string :street_address
      t.string :post_number
      t.string :office
      t.string :country_id
      t.string :job_length
      t.string :job_type
      t.date :job_starts
      t.date :post_ends

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
