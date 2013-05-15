class CreateTables < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer   :category_id
      t.string    :title, :text
    end

    create_table :categories do |t|
      t.string    :name
    end
  end
end
