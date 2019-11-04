local pipeline = import 'pipeline.libsonnet';
local name = 'webhippie/elasticsearch';

[
  pipeline.build(name, 'latest', 'latest', 'amd64'),
  pipeline.build(name, 'latest', 'latest', 'arm32v6'),
  pipeline.build(name, 'latest', 'latest', 'arm64v8'),
  pipeline.manifest('latest', 'latest', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.build(name, 'v6.4', '6.4', 'amd64'),
  pipeline.build(name, 'v6.4', '6.4', 'arm32v6'),
  pipeline.build(name, 'v6.4', '6.4', 'arm64v8'),
  pipeline.manifest('v6.4', '6.4', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.build(name, 'v5.6', '5.6', 'amd64'),
  pipeline.build(name, 'v5.6', '5.6', 'arm32v6'),
  pipeline.build(name, 'v5.6', '5.6', 'arm64v8'),
  pipeline.manifest('v5.6', '5.6', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.microbadger(['latest', '6.4', '5.6']),
]
