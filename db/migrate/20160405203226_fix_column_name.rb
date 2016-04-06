class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :tables, :prefrerences, :preferences
  end
end
