class CreateTvShows < ActiveRecord::Migration[6.1]
  def change
    create_table :tv_shows do |t|
      t.string :name
      t.text :summary
      t.datetime :release_date
      t.float :rating

      t.timestamps
    end
  end
end
