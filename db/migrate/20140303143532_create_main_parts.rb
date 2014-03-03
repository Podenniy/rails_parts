class CreateMainParts < ActiveRecord::Migration
  def self.up
    create_table :main_parts,  :primary_key => 'ttc_art_id'  do |t|
      t.string :name_parts,               :limit => 300, :null => false
      t.string :brand,                        :limit => 60, :null => false
      t.string :code_part,                  :limit =>105, :null => false
      t.string :code_parts_advanced,  :limit =>150, :null => false
      t.string :ean,                            :limit =>13,  :default => nil
      t.string :status_product ,            :limit =>300, :default => nil
      t.string :name_image ,              :limit =>300, :default => nil


      t.timestamps
    end
    add_index :main_parts, :brand
    add_index :main_parts, :code_part
    add_index :main_parts, :ean
  end

   def self.down
      drop_table :main_parts
   end
end
