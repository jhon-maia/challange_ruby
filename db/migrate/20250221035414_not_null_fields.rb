class NotNullFields < ActiveRecord::Migration[7.2]
  def 
    change_column :influencers, :name, :string , null:false
    change_column :influencers, :username, :string, null:false
    change_column :influencers, :plataform, :string, null:false
    change_column :campaigns, :name, :string, null:false

    
  end
end
