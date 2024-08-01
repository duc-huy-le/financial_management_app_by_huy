#bin/sh
echo "Generate auth_service"
cd serp_auth_service 
dart pub publish
cd ..
echo "Generate user_service"
cd serp_user_service 
dart pub publish
cd ..
echo "Generate tree_service"
cd serp_tree_service
dart pub publish 
cd ..
echo "Generate base_service"
cd serp_base_service
dart pub publish 
cd ..
echo "Generate notification_service"
cd serp_notification_service
dart pub publish 
cd ..

 