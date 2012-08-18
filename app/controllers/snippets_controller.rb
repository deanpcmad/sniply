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
      # if !current_user
      #   redirect_to "/auth/twitter?return_to=" + request.env['PATH_INFO']
      # else
      #   redirect_to snip_path(@snippet.code), notice: 'Snippet was successfully created.'
      # end
      redirect_to snip_path(@snippet.code), notice: 'Snippet was successfully created.'
    else
      redirect_to :back, notice: 'Error creating Snippet.'
    end
  end

  def destroy
    @snippet = current_user.snippets.find_by_code(params[:code])
    @snippet.destroy

    redirect_to snippets_url
  end

end
