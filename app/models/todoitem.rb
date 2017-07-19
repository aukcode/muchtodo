class Todoitem < ActiveRecord::Base
  belongs_to :todolist

  def todoitem_params
    
  end
end
