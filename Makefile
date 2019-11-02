up:
	# Sobe o container
	docker-compose up

build:
	# Sobe o container refazendo a imagem
	docker-compose up --build

down:
	# Para o container
	docker-compose down

bash:
	# Entra no bash
	docker-compose exec nginx bash

restart:
	# Reinicia o container
	docker-compose restart

help:
	# Mostra os comandos do nginx
	docker-compose exec nginx nginx -h

test:
	# Verifica se o nginx.conf está OK
	docker-compose exec nginx nginx -t

reload:
	# Atualiza o nginx
	docker-compose exec nginx nginx -s reload