class EbooksController < ApplicationController
  def index
    @ebooks = Ebook.all
  end

  def create
    binding.pry
    render plain: params[:ebook].inspect
    @ebook = Ebook.new(ebook_params)
    @ebook.save
  end

  def show
    @ebook = Ebook.find(params[:id])
    @pages = @ebook.chapter_pages.includes(field_groups:[:text_fields,:wysiwyg_fields,:image_fields])
  end

  def edit
    @ebook = Ebook.find(params[:id])
    # @pages = @ebook.chapter_pages.includes(field_groups:[:text_fields,:wysiwyg_fields,:image_fields])
    # binding.pry
    if request.headers['X-PJAX']
      page_id = params[:page_id]
      if params[:page_type] == 'chapter_page'
        render :template => 'ebooks/chapter_pages/index', :layout => false
        @ebook.chapter_pages.find(page_id).to_json( :include => { :field_groups => { :include => [:text_fields,:wysiwyg_fields,:image_fields] } } )
      else
        # TODO: Create json and template responses for general/segment pages.
      end
    end
  end

  def update
    @ebook = Ebook.find(params[:id])
    # TODO: Save updates
  end

  private

  def ebook_params
    params.require(:ebook).permit(:title, :description, :publisher_name)
  end

end
