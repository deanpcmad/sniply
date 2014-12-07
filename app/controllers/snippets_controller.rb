class SnippetsController < ApplicationController

  def show
    @snippet = Snippet.find_by_code!(params[:code])
  end

  def create
    if current_user
      @snippet = current_user.snippets.build(snippet_params)
    else
      @snippet = Snippet.new(snippet_params)
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
    @snippets = current_user.snippets.order(id: :desc) if current_user
  end

  def edit
    @snippet = current_user.snippets.find_by_code(params[:code]) 
  end

  def update
    @snippet = current_user.snippets.find_by_code(params[:id])

    if @snippet.update_attributes(snippet_params)
      redirect_to snip_path(@snippet.code), notice: 'Snippet was successfully updated.'
    else
      render action: "edit"
    end
  end

  private

  def snippet_params
    params.require(:snippet).permit(:title, :content, :language)
  end

end
