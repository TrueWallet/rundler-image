push:
	@git clone https://github.com/alchemyplatform/rundler.git
	@cd rundler && git checkout a8098944842124938e9f887e1557e557dad01ac6
	@docker build -t truewallet/rundler:latest -f rundler/Dockerfile ./rundler
	@docker push truewallet/rundler:latest
	@rm -rf rundler
