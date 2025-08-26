# Importar la clave GPG y guardarla en el directorio de llaves de APT
curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null

# Añadir el repositorio de Playit
echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | sudo tee /etc/apt/sources.list.d/playit-cloud.list

# Actualizar índices de paquetes
sudo apt update

# Instalar playit
sudo apt install -y playit
