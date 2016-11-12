class TournamentsController < ApplicationController
 before_action :logged_in_user, only: [:create, :destroy]


  def new
    @tournaments = Tournament.new
  end

  def edit
    @tournaments = Tournament.find(params[:id])

  end

  def index
    @tournaments = Tournament.paginate(page: params[:page])
  end

  def show
    @tournaments = Tournament.find(params[:id])
    @participants = @tournaments.tournament_participants
    
  end

  def update
    @tournaments = Tournament.find(params[:id])
    if @tournaments.update_attributes(tournament_params)
      flash[:success] = "Tournament updated"
      redirect_to current_user
    else
      render 'edit'
    end
  end

  def create
    @tournaments = Tournament.new(tournament_params)

    if @tournaments.save
      flash[:success] = "Tournament created successfully"
      redirect_to current_user
        
    else
      redirect_to :back
    end
  end

  def destroy
    Tournament.find(params[:id]).destroy
    flash[:success] = "Tournament deleted"
    redirect_back_or current_user
  end

  private
    def tournament_params
      params.require(:tournament).permit(:name).merge(user_id: current_user.id)
    end

    def correct_user
      @tournaments = current_user.tournaments.find_by(id: params[:id])
      redirect_to current_user if @tournaments.nil?
    end
end


