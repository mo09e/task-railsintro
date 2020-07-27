class CreateMywords < ActiveRecord::Migration[5.2]
  def change
    create_table :mywords do |t|
      t.string :content
    end
  end
end
