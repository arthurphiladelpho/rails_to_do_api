class ItemSerializer < ActiveModel::Serializer
  attributes :id, :body, :list, :created_at

  def body
  	object.body
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

  def list
  	object.list_id
  end

end
