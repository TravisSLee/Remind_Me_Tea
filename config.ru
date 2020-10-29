require './config/environment'



use Rack::MethodOverride
use UsersController
use BbtsController
use FriendsController




run ApplicationController
