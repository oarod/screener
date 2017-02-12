class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.integer :evidence_id
      t.integer :number
      t.text :text

      t.timestamps
    end
  end
end
