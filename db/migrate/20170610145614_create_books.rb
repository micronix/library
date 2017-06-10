class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string  :title
      t.string  :description
      t.integer :year
      t.integer :isbn
      t.string  :author
      t.string  :genre
      t.string  :location
    end
  end
end
