class CreateDaysOfTheWeeks < ActiveRecord::Migration[5.2]
  def change
    create_table :days_of_the_weeks do |t|
      t.boolean :monday
      t.boolean :tuesday
      t.boolean :wednesday
      t.boolean :thursday
      t.boolean :friday
      t.boolean :saturday
      t.boolean :sunday

      t.timestamps
    end
  end
end
