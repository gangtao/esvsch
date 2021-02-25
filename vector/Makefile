mkfile_path := $(PWD)

start:
	docker run \
		-v $(mkfile_path)/vector.toml:/etc/vector/vector.toml:ro \
		-p 18383:8383 \
		timberio/vector:nightly-alpine

start_es:
	docker run \
		-v $(mkfile_path)/vector_es.toml:/etc/vector/vector.toml:ro \
		-p 28383:8383 \
		timberio/vector:nightly-alpine

start_es:
	docker run \
		-v $(mkfile_path)/vector_ch.toml:/etc/vector/vector.toml:ro \
		-p 28383:8383 \
		timberio/vector:nightly-alpine

test:
	docker run \
	-d \
	-v $(mkfile_path)/vector.toml:/etc/vector/vector.toml:ro \
	-p 18383:8383 \
	timberio/vector:0.11.X-alpine test