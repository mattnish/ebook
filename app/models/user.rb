# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime
#  updated_at             :datetime
#  first_name             :string(255)      default(""), not null
#  last_name              :string(255)      default("")
#  biography              :text             default("")
#  show_picture           :integer          default(1)
#  show_location          :integer          default(1)
#  city_name              :string(255)      default("")
#  state_name             :string(255)      default("")
#  country_code           :string(255)      default("")
#  country_name           :string(255)      default("")
#  terms_agree            :integer          default(0)
#  articles_posted        :integer          default(0)
#  period_articles_posted :string(255)      default("0")
#  last_period_update     :datetime
#  user_type              :integer          default(2)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :ebooks

  def name
    [first_name, last_name].select(&:present?).join(" ")
  end

end
