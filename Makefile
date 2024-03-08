COMMIT := release/0.1
VERSION := 0.1

push:
	@git clone https://github.com/alchemyplatform/rundler.git
	@cd rundler && git checkout ${COMMIT}
	@docker build -t truewallet/rundler:latest -f rundler/Dockerfile ./rundler
	@docker push truewallet/rundler:latest
	@docker image tag truewallet/rundler:latest truewallet/rundler:${VERSION}
	@docker push truewallet/rundler:${VERSION}
	@rm -rf rundler
