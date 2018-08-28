require 'active_record'
ActiveRecord;:Base.connection.create_table :tasks do |t|
  t.string :description
  t.boolean :completed
end
