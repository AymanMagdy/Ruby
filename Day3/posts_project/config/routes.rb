Rails.application.routes.draw do
  root 'welcome#index'
  get 'add_post' => "posts#add_post"
  get 'add_post_form' => "posts#add_post"
  get 'list_posts' => "posts#list_posts"
  get 'update_post' => "posts#update_post"
  get 'update_post_form' => "posts#update_post"
  get 'update_new_post' => "posts#update_new_post"
  get 'show_post' => "posts#show_post"
  get 'show_post_form' => "posts#show_post"
  get 'delete_post' => 'posts#delete_post'
  get 'search_post_title' => 'posts#search_post_title'
  
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end 