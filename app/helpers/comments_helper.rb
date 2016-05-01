module CommentsHelper
  def user_is_authorized_for_comment?(comment)
      current_user && (current_user == comment.user || current_user.admin?)
   end

   def user_comments?(user)
     user.comments.count > 0
   end
end
