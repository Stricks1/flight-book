class CreatePlaneBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :plane_books do |t|
      t.belongs_to :user
      t.belongs_to :flight
      t.string :pass_name
      t.string :pass_email
      
      t.timestamps
    end
  end
end
