

default: 
	echo "input target"

creategit:
	echo "# myhalo" >> README.md \
	&& git init \
	&& git add README.md \
	&& git commit -m "first commit" \
	&& git branch -M master \
	&& git remote add origin https://github.com/LZRight123/myhalo.git \
	&& git push -u origin master


tag:
	git tag v01 \
	&& git tag \
	&& git push origin v01

docker:
	docker run -d --name myhalo -p 1024:8090 -v ~/.halo:/root/.halo --restart=always deerliang:myhalo