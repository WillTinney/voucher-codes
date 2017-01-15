class CreateVouchers < ActiveRecord::Migration[5.0]
  def change
    create_table :vouchers do |t|
      t.string :title
      t.string :description
      t.string :code
      t.string :company
      t.string :podcast
      t.string :link
      t.string :expiry_date
      t.boolean :expired
      t.integer :votes

      t.timestamps
    end
  end
end