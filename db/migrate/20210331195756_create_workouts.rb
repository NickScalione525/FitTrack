class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :kind
      t.integer :times_per_week
      t.integer :user_id

      t.timestamps
    end
  end
end
