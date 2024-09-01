rmdir /s /q build
rmdir /s /q .dart_tool
echo "flutter test --enable-experiment=macros --concurrency=4"
flutter test --enable-experiment=macros --concurrency=4
dart pub get