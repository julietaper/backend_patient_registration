# Utilizamos una imagen compatible con ARM64
FROM ruby:3.3.1

# Establecemos el directorio de trabajo en la carpeta de la aplicación
WORKDIR /app

# Instalamos las dependencias del sistema y las gemas necesarias
RUN apt-get update && apt-get install -y curl default-mysql-client

# Copiamos el Gemfile y el Gemfile.lock y luego instalamos las gemas
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copiamos el resto de los archivos de la aplicación
COPY . .

# Exponemos el puerto 3000 para que la aplicación pueda ser accedida
EXPOSE 3000

# Comando por defecto para iniciar la aplicación
CMD ["rails", "server", "-b", "0.0.0.0"]
