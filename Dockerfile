from ruby:2.5
run apt-get update && apt-get install -y \
	build-essential \
	libpq-dev \
	nodejs \
	postgresql-client \
	yarn
workdir /product-register
copy Gemfile Gemfile.lock /product-register/
run bundle install