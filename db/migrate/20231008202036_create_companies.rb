class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name_company
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end