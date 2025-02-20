class CreateCampaigns < ActiveRecord::Migration[7.2]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.decimal :budget
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
