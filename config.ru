require './config/environment'

use Rack::MethodOverride
use UsersController
use BbtsController
use SessionsController

run ApplicationController
