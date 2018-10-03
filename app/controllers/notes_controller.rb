class NotesController < ApplicationController
  before_action :authenticate_user!

  def index
    @notes = current_user.notes.order(created_at: "desc")

    if params[:q]
      @q = params[:q]
      # @notes = @notes.where("title ilike ? or text ilike ?", "%#{@q}%", "%#{@q}%")
      @notes = @notes.where("title ilike :q or body ilike :q", q: "%#{@q}%")
    end
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @note.user = current_user
    if @note.save!
      redirect_to notes_path, notice: "New idea created!"
    else
      flash[:alert] = "Please fill title field before saving"
      render "new"
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def show
    @note = Note.find(params[:id])
  end

  def update
    note = Note.find(params[:id])
    note.update(note_params)

    redirect_to  notes_path, notice: "New note updated"
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy

    redirect_to notes_path
  end

  private

  def note_params
    params.require(:note).permit(:title, :body, :image)
  end

end
