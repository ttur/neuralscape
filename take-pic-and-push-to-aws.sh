python take-pic-with-webcam.py
timestamp=$(date +%s)
cp foto.jpg foto$timestamp.jpg
scp -i "AWS_KEY_FILE" foto.jpg ubuntu@AWS_INSTANCE_ADDRESS:/home/ubuntu/neural-style/upload/foto$timestamp.jpg
