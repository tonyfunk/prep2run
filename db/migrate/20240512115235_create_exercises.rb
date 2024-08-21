class CreateExercises < ActiveRecord::Migration[7.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.integer :duration
      t.integer :distance
      t.integer :intensity
      t.string :status, default: 'à faire', null: false
      t.references :training_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
