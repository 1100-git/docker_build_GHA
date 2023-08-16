run:
	docker run -d -p 3000:4200 -v logs:/app/data --rm --name lapp lapp:volumes
stop:
	docker stop lapp
run-dev:
	docker run -d -p 3000:4200 -v "C:\rs_school\docker\docker1\logs-app:/app" -v /app/node_modules -v logs:/app/data --rm --name lapp lapp:volumes