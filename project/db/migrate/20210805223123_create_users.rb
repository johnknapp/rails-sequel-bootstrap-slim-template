# frozen_string_literal: true

Sequel.migration do
  change do
    create_table :users do
      primary_key :id
      ## Database authenticatable
      String :email, null: false, default: ""
      String :encrypted_password, null: false, default: ""

      ## Recoverable
      String   :reset_password_token
      Timestamp :reset_password_sent_at

      ## Rememberable
      Timestamp :remember_created_at
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
  end
end