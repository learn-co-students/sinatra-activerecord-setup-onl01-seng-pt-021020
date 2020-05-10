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
end

#Now, run the migration from the terminal with rake db:migrate.

#$ rake db:migrate SINATRA_ENV=development

#Why add SINATRA_ENV=development, you might ask? Well, remember the top line of config/environment.rb? It's telling Sinatra that it should use the "development" environment for both shotgun and the testing suite. Therefore, we want to make sure our migrations run on the same environment as well, and specifying SINATRA_ENV=development allows us to do that.

#The change method is actually a shorter way of writing up and down methods. We can refactor our migration to look like this:

#class CreateDogs < ActiveRecord::Migration[5.2]
  #def change
    #create_table :dogs do |t|
      #t.string :name
      #t.string :breed
    #end
  #end
 #end
 
 #While the rollback (down) method is not included, it's implicit in the change method. Rolling back the database would work in exactly the same way as using the down method.