class CreateProduct1s < ActiveRecord::Migration[6.0]
  def change
    create_table :product1s do |t|
      t.string :title
      t.decimal :price

      t.timestamps
    end
  end
end
