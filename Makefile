.PHONY: build
build:
	fvm install
	fvm flutter pub get
	fvm flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: install
install:
	# CocoaPod & Bundler install
	sudo gem install bundler -v "2.2.31"
	bundle config set path 'vendor/bundle'
	bundle install

	# install dart
	brew tap dart-lang/dart
	brew install dart
	dart pub global activate fvm
	@export PATH=$(PATH):$(HOME)/.pub-cache/bin

	# install fvm & prepare flutter
	fvm install
	fvm flutter pub get
	fvm flutter precache --ios

	@printf '\n\033[34m%s\033[0m\n\n' 'Add $$HOME/.pub-cache/bin to your $$PATH environment.'

