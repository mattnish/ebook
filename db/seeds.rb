# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@user = User.new(
  :email                 => "admin@gmail.com",
  :password              => "123456",
  :password_confirmation => "123456",
  :first_name            => "Orion Ipsum"
)
@user.save!

@ebook = Ebook.new(
  :title => "Founders at Work",
  :description => "Most startups begin with a few people kicking around ideas.  Some grow into Google.  Most fail.  The critical period is the first year.",
  :publisher_name => "Apress",
  :view_count => 121,
  :user_id => @user.id
)
@ebook.save!