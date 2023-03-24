class AddAuthorDateSummitToVideo < ActiveRecord::Migration[7.0]
  def change
    add_column :videos, :author, :string
    add_column :videos, :date_summit, :date
  end
end
