build:
	docker build  --no-cache -t smartbash-ruby .
init:
	docker run -v $(CURDIR):/app smartbash-ruby rails new .
install:
	docker run -v $(CURDIR):/app -v $(CURDIR)/bundle:/usr/local/bundle  smartbash-ruby bundle install
start:
	docker run -p 3000:3000 -v $(CURDIR):/app -v $(CURDIR)/bundle:/usr/local/bundle smartbash-ruby   rails server -b 0.0.0.0
