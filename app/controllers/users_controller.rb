class UsersController < ApplicationController
  def profile
  end

  def update
    @user = current_user

    respond_to do |format|
      if @user.update_attributes(params[:user])

        format.html { redirect_to "/users/profile", notice: 'user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
