class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :email
      t.belongs_to :feature, index: true

      t.timestamps
    end
  end
end
