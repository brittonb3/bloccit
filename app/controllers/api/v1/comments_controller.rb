class Api::V1::CommentsController < Api::V1::BaseController
   before_action :authenticate_user, except: [:index, :show]
   before_action :authorize_user, except: [:index, :show]

   def index
     comment = Comment.all
     render json: comment.to_json, status: 200
   end

   def show
     comment = Comment.find(params[:id])
     render json: comment.to_json, status: 200
   end
 end
