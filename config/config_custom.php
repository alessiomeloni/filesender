<?php
$config['storage_type']       = 'CloudS3';
$config['cloud_s3_bucket']    = getenv('AWS_S3_BUCKET');
$config['cloud_s3_region']    = getenv('AWS_REGION');
$config['cloud_s3_access_key'] = getenv('AWS_ACCESS_KEY_ID');
$config['cloud_s3_secret_key'] = getenv('AWS_SECRET_ACCESS_KEY');

return $config;