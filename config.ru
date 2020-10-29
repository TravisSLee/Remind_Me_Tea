require_relative "spec_helper"



use Rack::MethodOverride
use UsersController
use BbtsController
use FriendsController

run ApplicationController

describe ApplicationController do
  it "responds with a welcome message" do
    get '/'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include("Welcome to the Sinatra Template!")
  end
end
