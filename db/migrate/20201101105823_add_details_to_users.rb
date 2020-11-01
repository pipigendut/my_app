class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    ## Database authenticatable
    add_column :users, :encrypted_password, :string, null: false, default: ""

    ## Recoverable
    add_column :users, :reset_password_token,   :string
    add_column :users, :reset_password_sent_at, :datetime

    ## Rememberable
    add_column :users, :remember_created_at, :datetime

    ## Trackable
    add_column :users, :created_by, :integer

    ## Lockable
    add_column :users, :failed_attempts, :integer
    add_column :users, :unlock_token,    :string
    add_column :users, :locked_at,       :datetime

    ## Add Index
    add_index :users, :reset_password_token, unique: true
    add_index :users, :unlock_token,         unique: true
  end
end
