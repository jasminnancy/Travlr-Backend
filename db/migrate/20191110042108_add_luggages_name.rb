class AddLuggagesName < ActiveRecord::Migration[6.0]
  def change
    add_column :luggages, :name, :string
  end
end
