class TodoitemsController < ApplicationController
  def create
    @todolist = Todolist.find(params[:todolist_id])

    @todoitem = @todolist.todoitems.create(todoitem_params)

    redirect_to todolist_path(@todolist)
  end



  def destroy
    @todoitem.destroy
    respond_to do |format|
      format.html { redirect_to todolists_url, notice: 'Todolist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  # The following can be passed in .create(comment_params) up above
  private
  def todoitem_params
    params.require(:todoitem).permit(:item, :comment, :done)
  end
end