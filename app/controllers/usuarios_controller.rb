class UsuariosController < ApplicationController

	before_action :set_usuario
	before_action :authenticate_user!, only: [:edit,:update]
	before_action :authenticate_owner!, only: [:edit, :update]

	def show
		@contactos = @usuario.contacts
	end

	def edit

	end

	def update
		respond_to do |format|
			if @usuario.update(usuarios_params)
				format.html{redirect_to @usuario, notice: 'se actualizo exitosamente tu informacion'}
			else
				format.html{render :edit, notice: 'Error al actualizar tu informacion, intenta mas tarde'}
			end
		end
	end
	

	private

	def set_usuario
		@usuario = User.find(params[:id])
	end

	def usuarios_params
		params.require(:user).permit(:email, :full_name, :bio, :grade, :avatar)
	end

	def authenticate_owner!
		if current_user != @usuario
			redirect_to root_path, notice: 'no estas autorizado para realizar esta accion'
		end
	end
	
end