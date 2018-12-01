class IncreaseSpreeVolumePricesAmountScale < SolidusSupport::Migration[4.2]
  def change
    change_column :spree_volume_prices, :amount, :decimal, precision: 8, precision: 10
  end
end
