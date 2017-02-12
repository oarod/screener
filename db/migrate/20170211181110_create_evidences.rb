class CreateEvidences < ActiveRecord::Migration[5.0]
  def change
    create_table :evidences do |t|
      t.string :title
      t.string :identifier
      t.string :filed_at
      t.string :datetime
      t.string :category
      t.string :file_type
      t.integer :person_id

      t.timestamps
    end
  end
end
