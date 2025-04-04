#!/bin/bash

# 프로젝트 루트
mkdir -p ssd_photo_app/{assets/{images,fonts,mock_data},lib/{models,screens,widgets,services,providers,utils,config},server/{config,models,routes,controllers,middleware,services,utils}}

# 루트 파일
touch ssd_photo_app/{pubspec.yaml,analysis_options.yaml,README.md}

# lib 하위 파일
touch ssd_photo_app/lib/{main.dart}
touch ssd_photo_app/lib/models/{media_item.dart,album.dart,device.dart,storage_status.dart,user.dart,models.dart}
touch ssd_photo_app/lib/screens/{splash_screen.dart,login_screen.dart,main_screen.dart,photos_tab.dart,search_tab.dart,albums_tab.dart,devices_tab.dart,photo_detail_screen.dart,album_detail_screen.dart,screens.dart}
touch ssd_photo_app/lib/widgets/{media_thumbnail.dart,album_list_item.dart,device_list_item.dart,widgets.dart}
touch ssd_photo_app/lib/services/{api_service.dart,auth_service.dart,media_service.dart,sync_service.dart,storage_service.dart,services.dart}
touch ssd_photo_app/lib/providers/{photos_provider.dart,albums_provider.dart,user_provider.dart,devices_provider.dart,providers.dart}
touch ssd_photo_app/lib/utils/{constants.dart,mock_data.dart,theme.dart,extensions.dart}
touch ssd_photo_app/lib/config/{routes.dart,api_config.dart}

# server 하위 파일
touch ssd_photo_app/server/{package.json,server.js}
touch ssd_photo_app/server/config/{db.js,config.js}
touch ssd_photo_app/server/models/{user.js,media.js,album.js,device.js}
touch ssd_photo_app/server/routes/{auth.js,media.js,albums.js,devices.js,sync.js,storage.js,ai.js,sharing.js}
touch ssd_photo_app/server/controllers/{auth_controller.js,media_controller.js,album_controller.js,device_controller.js,sync_controller.js,ai_controller.js}
touch ssd_photo_app/server/middleware/{auth.js,validation.js,error.js}
touch ssd_photo_app/servergi/services/{storage_service.js,sync_service.js,crypto_service.js,ai_service.js}
touch ssd_photo_app/server/utils/{logger.js,helpers.js,mock.js}
