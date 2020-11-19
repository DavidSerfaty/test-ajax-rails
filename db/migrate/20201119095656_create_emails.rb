class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.string :objet
      t.text :body
      
      t.timestamps
    end
  end
end
