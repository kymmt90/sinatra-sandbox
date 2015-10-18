SampleBlog::App.controllers :posts do
  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end

  get :index, :provides => [:html, :rss, :atom] do
    @posts = Post.all
    render 'posts/index'
  end

  get :show, :with => :id do
    @post = Post.find_by_id(params[:id])
    render 'posts/show'
  end
end
