class RemoveAvgRatingFromBikes < ActiveRecord::Migration[7.1]
  def change
    remove_column :bikes, :avg_rating, :float
  end
end
