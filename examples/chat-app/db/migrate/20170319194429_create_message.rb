class CreateMessage < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :from
      t.text :message
      t.timestamps
    end
  end
end
