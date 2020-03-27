class PostsController < ApplicationController
    def add_post
        post_title = params['post_title'].to_s()
        post_content = params['post_content'].to_s()

        is_post_exist = Post.where(name: post_title)
        if is_post_exist.length > 0
            write_log("Error", "Post exists")
            render 'posts/error_page'
        elsif valid_post(post_title, post_content)
            Post.create(name: post_title, post: post_content, created_at: Date.today)
            write_log("200", "Post written")
            render 'posts/success_add_post'
        end
    end

    def list_posts
        @Posts = Post.order(post_id: :desc)
    end

    def update_post
        url_post_id = params[:post_to_update]
        @post_to_update = Post.where(post_id: url_post_id)
        @post_to_update.each do | post |
            @post_id = post.post_id
            @post_title = post.name 
            @post_content = post.post
        end
    end

    def update_new_post
        @post_id = params[:post_id]
        @response = ""
        @message = ""
        begin
            new_post_content = params[:post_content]
            update_post = Post.find_by(post_id: @post_id)
            update_post.update(post: new_post_content, updated_at: Date.current)
            @response = "ok"
            @message = "Post with id #{@post_id} has been updated."
        rescue StandardError => e
            @response = "failed"
            @message = "Error updating the post with id: #{@post_id} -> \nError message: #{e.to_s()}"
            render 'posts/error_page'
        end
        write_log(@response, @message)
    end

    def show_post
        @post_id = params[:post_to_show]
        @response = ""
        @message = ""
        begin 
            @post_to_update = Post.where(post_id: @post_id)
            @post_to_update.each do | post |
                @post_title = post.name 
                @post_content = post.post
                @post_created_at = post.created_at
                @post_last_update = post.updated_at
            end
            @response = "ok"
            @message = "Post with id: #{@post_id} has been printed."
        rescue StandardError => e
            @response = "failed"
            @message = "Show post faild with id: #{url_post_id}"
        end
        write_log(@response, @message)
    end

    def valid_post(post_title, post_content)
        if (post_title != '' && post_content != '') && (post_title.length < 50 && post_content.length < 50)
            return true
        else
            return false
        end 
    end

    def delete_post
        @post_id = params[:post_to_delete]
        @respose = ""
        @message = ""
        begin
            delete_post = Post.find_by(post_id: @post_id)
            if delete_post != nil
                puts "from inside the if.."
                delete_post.destroy()
                puts "Found the post to be deleted."
                @response = "ok"
                @message = "Deleting post id: #{@post_id}"
            elsif delete_post == nil
                puts "The post is not found"
                @response = "failed"
                @message = "Error to delete post id: #{@post_id}\n Post not found."
            end
        rescue StandardError => e
            render 'posts/error_page'
            @response = "faild"
            @message = "Error to delete post with id: #{@post_id} \n Error: #{e.to_s()}"
        end
        write_log(@response, @message)
    end

    def search_post_title
        post_title = params[:search_post]
        @response = ""
        @message = ""
        begin
            @search_post = Post.find_by(name: post_title)
            if @search_post != nil
                @post_id = @search_post.post_id
                @post_title = @search_post.name
                @post_content = @search_post.post
                @post_created_at = @search_post.created_at
                @post_last_update = @search_post.post.updated_at
                @response = "ok"
                @message = "Found search for post id: #{@post_id}."
            elsif @post == nil
                render 'posts/post_not_found'
                @response = "failed"
                @message = "Faild post search for id: #{@post_id}."
            end
        rescue StandardError => e
            @response = "failed"
            @message = "Faild post search post title: #{@post_title}.\n Error: #{e.to_s()}"
        end
        write_log(@response, @message)
    end

    def write_log(respose, message)
        @respose = respose
        @message = message
        post_log = {
                "response" => @respose,
                "message" => @message
            }
        puts post_log
    end

    
end
