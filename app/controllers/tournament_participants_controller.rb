class TournamentParticipantsController < ApplicationController
before_action :logged_in_user, only: [:create, :destroy]


  def new
    @tournaments = TournamentParticipant.new
  end

  def edit
    @tournaments = TournamentParticipant.find(params[:id])

  end

  def index
    @tournaments = TournamentParticipant.paginate(page: params[:page])
  end

  def show
    @tournaments = TournamentParticipant.find(params[:id])
  end

  def update
    @tournaments = TournamentParticipant.find(params[:id])
    if @tournaments.update_attributes(tournament_params)
      flash[:success] = "Tournament updated"
      redirect_to current_user
    else
      render 'edit'
    end
  end

  def create
    @tournament = Tournament.find(params[:tournament_participant][:tournament_id])

    @tournament_participant = @tournament.tournament_participants.build(tournament_params)

    if @tournament.save
      flash[:success] = "Tournament joined successfully"
      redirect_to @tournament
        
    else
      redirect_to :back
    end
  end

  def destroy
    TournamentParticipant.find(params[:id]).destroy
    flash[:success] = "Tournament deleted"
    redirect_back_or current_user
  end

  private
    def tournament_params
      params.require(:tournament_participant).permit(:team_name).merge(user_id: current_user.id, tournament_id: params[:tournament_participant][:tournament_id], name: current_user.name)
    end


end
