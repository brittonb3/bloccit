module FavoritesHelper

  def user_favorites?(user)
    user.favorites.count > 0
  end

end
