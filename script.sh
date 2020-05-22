background_color=\#e2e2e2
for img in "src"/*
do
	echo "checking $img"
	if [ "${img: -4}" == ".png" ]; then
		name=$(basename $img .png)
		echo "converting $img"
		convert $img -transparent $background_color out/$name-nobg.png
	fi
done
