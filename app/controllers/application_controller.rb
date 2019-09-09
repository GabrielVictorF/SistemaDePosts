class ApplicationController < ActionController::Base
	before_action :authenticate_user! #Verifica se o usuário está logado
	#load_and_authorize_resource #Cancancan
end
