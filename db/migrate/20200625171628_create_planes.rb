class CreatePlanes < ActiveRecord::Migration[5.2]
  def change
    create_table :planes do |t|
      t.text :name
      t.text :model
      t.date :aq_date

      t.timestamps
    end
  end
end
