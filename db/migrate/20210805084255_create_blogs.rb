Sequel.migration do
  change do

    create_table :blogs do
      primary_key :id
      String :title
      String :text
      Integer :category
    end

  end
end
