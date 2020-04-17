class CreateDogs < ActiveRecord::Migration[5.2]
 def up
    create_table :dogs do |t|
      t.string :name
      t.string :breed
    end
  end
 
  def down
    drop_table :dogs
  end
  
  # we can refactor both methods and write def change
  # def change
  #   create_table :dogs do |t|
  #     t.string :name
  #     t.string :breed
  #   end
  # end

end

