class TableCreator
  def self.create(db_name)
    unless File.exist?(db_name)
      ActiveRecord::Migration.create_table :tasks do |t|
        t.integer :priority
        t.string  :title
        t.string  :body
        t.timestamps
      end
    end
  end
end
