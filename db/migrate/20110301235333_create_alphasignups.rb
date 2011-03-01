class CreateAlphasignups < ActiveRecord::Migration
  def self.up
    create_table :alphasignups do |t|
      t.string :course
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :alphasignups
  end
end
