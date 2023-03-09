.SILENT: download
download:
	@cat tools/tools.go | grep _ | awk -F'"' '{print $$2}' | xargs -tI % go install %


.SILENT: install
install: download
	@go mod download


.SILENT: lint
lint:
	@protolint lint -fix src/.
