# app/api/users_api.rb
class UsersAPI < Grape::API
  resource :users do
    get do
      User.all  # returns all users in JSON
    end

    post do
      User.create!(
        name: params[:name],
        email: params[:email],
        phone_number: params[:phone_number],
        password: params[:password],
        address: params[:address],
        role: params[:role]
      )
    end
  end
end
