class CreateNurutters < ActiveRecord::Migration[5.1]
  def change
    create_table :nurutters do |t|
      t.string :content

      t.timestamps
    end
  end
end
