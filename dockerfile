echo 'FROM ubuntu:22.04

# Crear usuario no root
RUN useradd -m appuser

# Usar usuario no root
USER appuser

# Comando simple
CMD ["echo","Contenedor seguro funcionando"]
' > Dockerfile
