class PotentialMatchesController < ApplicationController
  def show
    @potential_match = PotentialMatch.find(params[:id])
    @user = User.find(@potential_match.user2_id)

    # @new_match_request = MatchRequest.new(user_id: @potential_match.user_id, user2_id: @potential_match.user2_id)
    @new_match_request2 = MatchRequest.new(user_id: @potential_match.user2_id, user2_id: @potential_match.user_id)

    if @new_match_request2.valid?
      # @new_match_request.save
      @new_match_request2.save

      @potential_match2 = PotentialMatch.where("user_id = ? and user2_id = ?", @potential_match.user2_id, @potential_match.user_id)

      @potential_match.delete

      @potential_match2.each do |obj|
        obj.delete
      end
    end
  end


end
