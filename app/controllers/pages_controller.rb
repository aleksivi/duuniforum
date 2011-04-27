class PagesController < ApplicationController

def home
    @title = "Home"
    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])

  
end

  def terms_of_use
    @title = "Terms of Use"
  end
def index
  @projects = Project.search(params[:search])
end

  def about
    @title = "About"
  end
   def search
    @title = "Search"
end
def help
    @title = "Help"
  end

end
end

