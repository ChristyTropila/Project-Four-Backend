class CreateBuckets < ActiveRecord::Migration[6.0]
  def change
    create_table :buckets do |t|
      t.belongs_to :user
      t.belongs_to :trick_treat

      t.timestamps
    end
  end
end
