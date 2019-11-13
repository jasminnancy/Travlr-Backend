class AddTransportName < ActiveRecord::Migration[6.0]
  def change
    add_column :transportations, :name, :string
  end
end
