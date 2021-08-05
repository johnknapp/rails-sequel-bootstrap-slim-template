Sequel.migration do
  change do
    create_table(:blogs) do
      primary_key :id
      column :title, "varchar(255)"
      column :text, "varchar(255)"
      column :category, "integer"
    end
    
    create_table(:schema_migrations) do
      column :filename, "varchar(255)", :null=>false
      
      primary_key [:filename]
    end
  end
end
Sequel.migration do
  change do
    self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20210805084255_create_blogs.rb')"
  end
end
