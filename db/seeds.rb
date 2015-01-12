# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


current_user = User.new(
  :email                 => "admin@gmail.com",
  :password              => "123456",
  :password_confirmation => "123456",
  :first_name            => "Orion Ipsum"
)
current_user.save!

theme = Theme.new(
  :title => "Standard",
  :cssnamespace => "standard",
)
theme.save!

ebook = Ebook.new(
  :title => "Founders at Work",
  :description => "Most startups begin with a few people kicking around ideas.  Some grow into Google.  Most fail.  The critical period is the first year.",
  :publisher_name => "Apress",
  :view_count => 121,
  :user_id => current_user.id,
  :theme => theme
)
ebook.save!


# Chapter Page

chapter_page = ChapterPage.new(
  :title => "Chapter 1",
  :sequence_num => 1,
  :chapter_num => 1,
  :ebook_id => ebook.id
)
chapter_page.save!


# Chapter Title

chapter_title_field_group = FieldGroup.new(
  :page_id => chapter_page.id,
  :page_type => "ChapterPage",
  :content_type => "title",
  :name => "Chapter Title",
  :required => true,
  :cssnamespace => "chapter-title"
)
chapter_title_field_group.save!

chapter_title_field = WysiwygField.new(
  :field_id => chapter_title_field_group.id,
  :field_type => "FieldGroup",
  :text => "Chapter Name Goes Here"
)
chapter_title_field.save!

chapter_title_subtitle_field = WysiwygField.new(
  :field_id => chapter_title_field_group.id,
  :field_type => "FieldGroup",
  :text => ""
)
chapter_title_subtitle_field.save!

chapter_title_image_field = ImageField.new(
  :field_id => chapter_title_field_group.id,
  :field_type => "FieldGroup",
  :url => "http://i1068.photobucket.com/albums/u442/ViktimGFX/Landscapes/16a2b2795c5ff4eb9672ba9bd66c751f-d4n54u7.jpg"
)
chapter_title_image_field.save!


# Chapter Body

chapter_body_field_group = FieldGroup.new(
  :page_id => chapter_page.id,
  :page_type => "ChapterPage",
  :content_type => "body",
  :name => "Chapter Body",
  :required => true,
  :cssnamespace => "chapter-body"
)
chapter_body_field_group.save!

chapter_body_wysiwyg_field = WysiwygField.new(
  :field_id => chapter_body_field_group.id,
  :field_type => "FieldGroup",
  :text => ""
)
chapter_body_wysiwyg_field.save!


# Chapter Side Images

chapter_side_field_group = FieldGroup.new(
  :page_id => chapter_page.id,
  :page_type => "ChapterPage",
  :content_type => "side",
  :name => "Chapter Side",
  :required => true,
  :cssnamespace => "chapter-side"
)
chapter_side_field_group.save!

chapter_side_image_field1 = ImageField.new(
  :field_id => chapter_side_field_group.id,
  :field_type => "FieldGroup",
  :url => "http://i1276.photobucket.com/albums/y462/staffpicks/tumblr_mw4og9rPUL1r01eeeo2_1280.jpg"
)
chapter_side_image_field1.save!


