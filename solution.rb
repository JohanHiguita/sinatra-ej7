#Tu mision en este reto es crear un aplicación Web usando Sinatra que solicite el 
#nombre de la persona que ingresó y la salude.
#La aplicación debe desplegar un formulario cuando el usuario ingrese a }
#http://localhost:4567/ como se muestra en la siguiente imagen:

#Cuando el usuario le da click al botón "¡Hola!", la aplicación le debe mostrar 
#otra página que diga "¡Hola !" (reemplaza por el nombre de la persona).
#Nota:* El nombre debe quedar tal cual como esta escrito en el input, 
#no lo capitalizes ni le hagas modificaciones

require 'sinatra'

get '/' do
	erb :index
end

post '/respuesta' do
	text=params[:text]

	if text == text.upcase
		@ans="Ahhh si, manzanas!"
	else
		@ans="Habla más duro mijito"
	end
	
	erb :respuesta
end