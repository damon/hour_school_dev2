class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :topic
      t.string :teachers_email
      t.datetime :start_time
      t.datetime :end_time
      t.text :student_email
      t.decimal :price
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
