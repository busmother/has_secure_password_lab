class ChangeUserAttributes < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
    t.remove :password, :password_confirmation
    t.string :password_digest
    end
  end
end
