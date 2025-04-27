class BaseApi < Grape::API
  format :json
  prefix :api

  get :hello do
    { message: "Hello from Grape API!" }
  end

  get :users do
    users = User.all
    users.as_json(only: [ :id, :name, :email, :phone_number, :address, :role, :created_at, :updated_at ])
  end
end
