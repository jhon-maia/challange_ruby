class CreateInfluencers < ActiveRecord::Migration[7.2]
  def change
    create_table :influencers do |t|
      t.string :name, null: false 
      t.string :username, null: false 
      t.string :platform
      t.integer :followers
      t.string :email

      t.timestamps
    end
    add_index :influencers, :username, unique: true
  end
end