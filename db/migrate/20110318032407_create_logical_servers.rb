class CreateLogicalServers < ActiveRecord::Migration
  def self.up
    create_table :logical_servers do |t|
      t.string :name
      t.text :description
      t.string :designName

      t.timestamps
    end
  end

  def self.down
    drop_table :logical_servers
  end
end
