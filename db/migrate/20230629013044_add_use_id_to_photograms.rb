class AddUseIdToPhotograms < ActiveRecord::Migration[5.2]
  def change
    add_column :photograms, :user_id, :integer
  end
end
