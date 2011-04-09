class CreatePhysicalServers < ActiveRecord::Migration
  def self.up
    create_table :physical_servers do |t|
      t.string :name
      t.string :designName
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :physical_servers
  end
end
