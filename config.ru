require './config/environment'

use Rack::MethodOverride
use UsersController
use BbtsController

run ApplicationController
