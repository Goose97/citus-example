up:
	docker-compose -f docker-compose.yml ${OTHER} up -d
master:
	docker exec -ti citus-master bash -c 'psql -h localhost -U example -d example_db'
worker-1:
	docker exec -ti citus-worker-1 bash -c 'psql -h localhost -U example -d example_db'
worker-2:
	docker exec -ti citus-worker-2 bash -c 'psql -h localhost -U example -d example_db'