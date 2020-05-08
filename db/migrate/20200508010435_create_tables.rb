class CreateTables < ActiveRecord::Migration[6.0]
  def change
		create_table :goals, force: true do |t|
			t.text :name
			t.integer :user_id
			t.timestamps
		end
		
		create_table :tasks, force: true do |t|
			t.text :name
			t.integer :goal_id
			t.timestamps
		end

		create_table :entity_tasks, force: true do |t|
			t.datetime :completed_at
			t.datetime :scheduled_at
			t.integer :task_id
			t.timestamps 
		end
  end
end

