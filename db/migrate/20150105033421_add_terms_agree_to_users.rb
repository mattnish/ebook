class AddTermsAgreeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :terms_agree, :integer, :default => 0
  end
end
