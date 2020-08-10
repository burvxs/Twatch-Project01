class CreateStreams < ActiveRecord::Migration[5.2]
  def change
    create_table :streams do |t|
      t.integer :user_id
      t.string :title
      t.text :capture_url
      t.time :video_time

      t.timestamps
    end
  end
end
