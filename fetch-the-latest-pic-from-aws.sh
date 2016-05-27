# fetch-the-latest-pic-from-aws.sh by ttur
# Source: https://github.com/ttur/neuralscape/fetch-the-latest-pic-from-aws.sh
#
# This script is licensed under The MIT License (see LICENSE).

remote_dir=/home/ubuntu/neural-style/
dst=AWS_INSTANCE_ADDRESS
scp -i "../AWS_KEY_FILE" $dst:`ssh -i "../AWS_KEY_FILE" $dst ls -1at $remote_dir/\*.png | head -1` ./tmplatest.png
