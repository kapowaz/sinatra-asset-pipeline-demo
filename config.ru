require './application'

SinatraAssetPipeline.disable :run

map('/') { run SinatraAssetPipeline }
