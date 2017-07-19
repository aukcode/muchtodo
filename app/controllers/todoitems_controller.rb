class TodoitemsController < ApplicationController
  def create
    @todolist = Todolist.find(params[:todolist_id])

    @todoitem = @todolist.todoitems.create(todoitem_params)

    redirect_to todolist_path(@todolist)
  end


  # The following can be passed in .create(comment_params) up above
  private
  def todoitem_params
    params.require(:todoitem).permit(:item, :comment)
  end
end