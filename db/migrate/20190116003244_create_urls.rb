class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.number :user_id
      t.string :original_url
      t.string :shortened_url
      t.string :alphanumeric

      t.timestamps
    end
  end
end
