COMMIT := 2d270fa

push:
	@git clone https://github.com/alchemyplatform/rundler.git
	@cd rundler && git checkout ${COMMIT}
	@docker build -t truewallet/rundler:latest -f rundler/Dockerfile ./rundler
	@docker push truewallet/rundler:latest
	@docker image tag truewallet/rundler:latest truewallet/rundler:${COMMIT}
	@docker push truewallet/rundler:${COMMIT}
	@rm -rf rundler
