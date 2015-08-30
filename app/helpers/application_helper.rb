module ApplicationHelper
  def is_current_user_item?(item)
    item.user == current_user
  end
end
