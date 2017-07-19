class TodoitemsController < ApplicationController
  def create
    @todolist = Todolist.find(params[:todolist_id])

    @todoitem = @todolist.todoitems.create(todoitem_params)

    redirect_to todolist_path(@todolist)
  end
  #
  # private
  # def comment_params
  #   params.require(:comment).permit(:commenter, :body)
  # end
end