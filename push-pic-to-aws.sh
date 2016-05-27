scp -i "AWS_KEY_FILE" neural/upload/* ubuntu@AWS_INTANCE_ADDRESS:/home/ubuntu/neural-style/upload/ 2>/dev/null
mv neural/upload/* neural/upload-archive/ 2>/dev/null
