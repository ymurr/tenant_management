class AddFieldsToLease < ActiveRecord::Migration
  def change
    add_column :leases, :terms, :string
  end
end
