class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.integer :position
      t.boolean :visible, :default => false
      t.string :permalink
      t.references :subject

      t.timestamps null: false
    end
  end
end
