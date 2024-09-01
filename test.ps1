Remove-Item build -Recurse -Force -ErrorAction Ignore
Remove-Item .dart_tool -Recurse -Force -ErrorAction Ignore
Write-Output "flutter test --enable-experiment=macros --concurrency=4"
flutter test --enable-experiment=macros --concurrency=4
dart pub get