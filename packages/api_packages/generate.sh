#bin/sh
echo "Generate auth_service"
cd auth_service 
rm lib -rf
flutter pub run build_runner build --delete-conflicting-outputs
cd ..
echo "Generate user_service"
cd user_service 
rm lib -rf
flutter pub run build_runner build --delete-conflicting-outputs
cd ..
echo "Generate tree_service"
cd tree_service
rm lib -rf
flutter pub run build_runner build --delete-conflicting-outputs 
cd ..
echo "Generate base_service"
cd base_service
rm lib -rf
flutter pub run build_runner build --delete-conflicting-outputs 
cd ..
echo "Generate notification_service"
cd notification_service
rm lib -rf
flutter pub run build_runner build --delete-conflicting-outputs 
cd ..

 