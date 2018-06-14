class CreateConferences < ActiveRecord::Migration[5.1]
  def change
    create_table :conferences do |t|
      t.string :name
      t.datetime :date
      t.text :description
      t.string :place
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
