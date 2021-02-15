
creategit:
	echo "# myhalo" >> README.md \
	&& git init \
	&& git add README.md \
	&& git commit -m "first commit" \
	&& git branch -M main \
	&& git remote add origin https://github.com/LZRight123/myhalo.git \
	&& git push -u origin main