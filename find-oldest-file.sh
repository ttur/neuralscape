oldest=`find upload -type f -printf '%T+ %p\n' | sort | head -n 1 | cut -d' ' -f
2`
mv $oldest tmpcontent.jpg 2>/dev/null
