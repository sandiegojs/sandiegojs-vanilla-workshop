class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :state
      t.string :github
      t.string :twitter
      t.text :bio

      t.timestamps null: false
    end
  end
end
