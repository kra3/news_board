class CreateNewsView < ActiveRecord::Migration[5.0]
  def change
    create_table :news_views do |t|
      t.belongs_to :user, index: true
      t.belongs_to :news, index: true
      t.boolean :seen
      t.datetime :seen_on
    end
  end
end
