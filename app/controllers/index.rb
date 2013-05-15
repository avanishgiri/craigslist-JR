get '/' do
  @categories = Category.all
  erb :index
end

get '/categories/:id' do
  @posts = Category.find(params[:id]).posts
  erb :posts
end

get '/posts/:id' do
  @post = Post.find(params[:id]) 
  erb :text
end

post '/create_post' do
  x = Post.create(title: params[:post_title], text: params[:body], category_id: params[:id])
  redirect "/posts/#{x.id}"
end

get '/edit/:id' do
  @post = Post.find(params[:id])
  erb :edit
end

post '/edit_post' do
  x = Post.find(params[:id])
  x.title = params[:post_title]
  x.text = params[:body]
  x.save

  redirect "/posts/#{x.id}"
end
