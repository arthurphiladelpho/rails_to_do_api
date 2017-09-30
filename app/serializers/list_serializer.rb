class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :user, :created_at

  def title
  	object.title
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

  def user
  	object.user_id
  end

end