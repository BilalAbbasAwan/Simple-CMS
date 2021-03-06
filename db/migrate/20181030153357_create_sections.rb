class CreateSections < ActiveRecord::Migration[5.2]
  def up
    create_table :sections do |t|

      t.integer "page_id"

    	t.string "name", :null => false

    	t.integer "position"

    	t.boolean "visible", :default => false 

    	t.string "content_type"

    	t.text "content"

      t.timestamps

      puts "*** SECTION TABLE HAS BEEN CREATED ***"

    end
    add_index("sections","page_id")
  end

   def down
    drop_table :sections

    puts "*** SECTION TABLE HAS BEEN DELETED ***"

  end

end
