class AddTermsAgreeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :terms_agree, :boolean
  end
end
