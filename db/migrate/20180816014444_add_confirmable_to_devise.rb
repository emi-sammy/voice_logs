class AddConfirmableToDevise < ActiveRecord::Migration[5.1]
  def up
    add_column :evaluators, :confirmation_token, :string
    add_column :evaluators, :confirmed_at, :datetime
    add_column :evaluators, :confirmation_sent_at, :datetime
    add_column :evaluators, :unconfirmed_email, :string
    add_index :evaluators, :confirmation_token, unique: true
    # User.reset_column_information # Need for some types of updates, but not for update_all.

    execute('UPDATE evaluators SET confirmed_at = NOW()')
  end

  def down
    remove_columns :evaluators, :confirmation_token, :confirmed_at, :confirmation_sent_at
    remove_columns :evaluators, :unconfirmed_email # Only if using reconfirmable
  end
end
