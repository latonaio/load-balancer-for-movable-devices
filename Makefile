docker-build:
	bash docker-build.sh

docker-push:
	bash docker-build.sh push

.PHONY: docker-build-clean
docker-build-clean: docker-build
	sudo /bin/bash -c "echo 3 > /proc/sys/vm/drop_caches"

.PHONY: docker-push-clean
docker-push-clean: docker-push
	sudo /bin/bash -c "echo 3 > /proc/sys/vm/drop_caches"
