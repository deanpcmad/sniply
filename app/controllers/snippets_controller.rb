class SnippetsController < ApplicationController

  def show
    @snippet = Snippet.find_by_code(params[:code])
  end

  def create
    if current_user
      @snippet = current_user.snippets.build(params[:snippet])
    else
      @snippet = Snippet.new(params[:snippet])
    end

    if @snippet.save
      redirect_to snip_path(@snippet.code), notice: 'Snippet was successfully created.'
    else
      redirect_to :back, notice: 'Error creating Snippet.'
    end
  end

  def destroy
    @snippet = current_user.snippets.find_by_code(params[:id])
    @snippet.destroy

    redirect_to :back, notice: 'Deleted snippet'
  end

  def mine
    @snippets = current_user.snippets.all if current_user
  end

end
