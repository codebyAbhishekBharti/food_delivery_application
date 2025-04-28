require_relative 'users_api'

class BaseApi < Grape::API
  format :json
  prefix :api

  get :hello do
    { message: "Hello from Grape API!" }
  end

  mount UsersAPI
end
