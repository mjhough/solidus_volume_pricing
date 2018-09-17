class PrefixVolumePricingTableNames < SolidusSupport::Migration[4.2]
  def change
    rename_table :volume_prices, :spree_volume_prices
  end
end
