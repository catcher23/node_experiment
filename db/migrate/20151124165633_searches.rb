class Searches < ActiveRecord::Migration
  def change
    create_table "searches", force: :cascade do |t|
  t.string   "hashtag"
  t.string   "start_date"
  t.string   "end_date"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end


  end
end
