class CreateSpreeVolumePrices < SolidusSupport::Migration[4.2]
  def self.up
    create_table :spree_volume_prices do |t|
      t.references :variant
      t.string :name
      t.string :range
      t.decimal :amount, precision: 8, scale: 2
      t.integer :position
      t.integer :role_id
      t.string :discount_type
      t.timestamps
    end
  end

  def self.down
    drop_table :spree_volume_prices
  end
end
