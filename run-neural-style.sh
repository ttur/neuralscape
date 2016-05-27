style=`ls styles | sort -R | tail -1`
echo "style: $style"
th neural_style.lua -style_image styles/$style -num_iterations 750 -content_imag
e content.jpg -image_size 512 -output_image result.png -save_iter 5 -backend cud
nn
