class MatchesController < ApplicationController
  def show
    @match_request = MatchRequest.find(params[:id])
    @new_match = Match.new(user_id: @match_request.user2_id, user2_id: @match_request.user_id)

    @new_match2 = Match.new(user_id: @match_request.user_id, user2_id: @match_request.user2_id)

    if @new_match.valid?
      @new_match.save
      @new_match2.save

      @match_request2 = MatchRequest.where("user_id = ? and user2_id = ?", @match_request.user2_id, @match_request.user_id)

      @match_request.delete

      @match_request2.each do |obj|
        obj.delete
      end
    end

    @partner = User.find(@new_match.user2_id)
  end

end
