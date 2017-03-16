class CreateCommanets < ActiveRecord::Migration[5.0]
  def change
    create_table :commanets do |t|
      t.references :post, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
