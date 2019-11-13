class ChangeNameofState < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :us_state, :string
    remove_column :events, :state

    add_column :hotels, :us_state, :string
    remove_column :hotels, :state

    add_column :places, :us_state, :string
    remove_column :places, :state
    
    add_column :users, :us_state, :string
    remove_column :users, :state
  end
end
