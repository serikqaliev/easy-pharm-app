codegen-cached:
	dart run build_runner build

codegen:
	dart run build_runner build --delete-conflicting-outputs

codegen-release:
	dart run build_runner build --delete-conflicting-outputs --config release

icons:
	dart run flutter_launcher_icons -f flutter_launcher_icons.yaml

splash:
	dart run flutter_native_splash:create --path=flutter_native_splash.yaml

build-apk:
	flutter build apk --release --dart-define=API_BASE_URL=http://localhost:8000 --dart-define=WEB_SOCKET_BASE_URL=ws://dev.alageum.info

build-ios:
	flutter build ios --release --dart-define=API_BASE_URL=https://dev.alageum.info --dart-define=WEB_SOCKET_BASE_URL=ws://dev.alageum.info

.PHONY: codegen-cached codegen codegen-release icons splash