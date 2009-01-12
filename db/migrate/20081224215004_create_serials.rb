class CreateSerials < ActiveRecord::Migration
  def self.up
    create_table :serials do |t|
      t.string :serial
      t.string :product
      t.string :additional_code
      t.string :registered_to
      t.date :reg_date

      t.timestamps
    end
  end

  def self.down
    drop_table :serials
  end
end
