class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text :content
      t.string :status, null: false, default: 'start'
      t.timestamps
    end
  end
end
