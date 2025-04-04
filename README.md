# SSD 포토 앱 프로젝트 구조

## 1. 폴더 구조

```
ssd_photo_app/
│
├── pubspec.yaml                  # 의존성 정의
├── analysis_options.yaml         # 코드 분석 설정
├── README.md                     # 프로젝트 설명
│
├── lib/                          # 프론트엔드 (Flutter)
│   ├── main.dart                 # 앱 시작점
│   │
│   ├── models/                   # 데이터 모델
│   │   ├── media_item.dart       # 미디어(사진, 비디오) 모델
│   │   ├── album.dart            # 앨범 모델
│   │   ├── device.dart           # 기기 모델
│   │   ├── storage_status.dart   # 저장소 상태 모델
│   │   ├── user.dart             # 사용자 모델
│   │   └── models.dart           # 모델 내보내기
│   │
│   ├── screens/                  # 화면 UI
│   │   ├── splash_screen.dart    # 스플래시 화면
│   │   ├── login_screen.dart     # 로그인 화면
│   │   ├── main_screen.dart      # 메인 화면(탭 컨테이너)
│   │   ├── photos_tab.dart       # 사진 탭
│   │   ├── search_tab.dart       # 검색 탭
│   │   ├── albums_tab.dart       # 앨범 탭
│   │   ├── devices_tab.dart      # 기기 탭
│   │   ├── photo_detail_screen.dart # 사진 상세 화면
│   │   ├── album_detail_screen.dart # 앨범 상세 화면
│   │   └── screens.dart          # 화면 내보내기
│   │
│   ├── widgets/                  # 재사용 위젯
│   │   ├── media_thumbnail.dart  # 미디어 썸네일
│   │   ├── album_list_item.dart  # 앨범 리스트 아이템
│   │   ├── device_list_item.dart # 기기 리스트 아이템
│   │   └── widgets.dart          # 위젯 내보내기
│   │
│   ├── services/                 # 서비스 로직
│   │   ├── api_service.dart      # API 호출 로직
│   │   ├── auth_service.dart     # 인증 서비스
│   │   ├── media_service.dart    # 미디어 관리 서비스
│   │   ├── sync_service.dart     # 동기화 서비스
│   │   ├── storage_service.dart  # 저장소 서비스
│   │   └── services.dart         # 서비스 내보내기
│   │
│   ├── providers/                # 상태 관리
│   │   ├── photos_provider.dart  # 사진 상태 관리
│   │   ├── albums_provider.dart  # 앨범 상태 관리
│   │   ├── user_provider.dart    # 사용자 상태 관리
│   │   ├── devices_provider.dart # 기기 상태 관리
│   │   └── providers.dart        # 프로바이더 내보내기
│   │
│   ├── utils/                    # 유틸리티
│   │   ├── constants.dart        # 상수 정의
│   │   ├── mock_data.dart        # 가상 데이터
│   │   ├── theme.dart            # 앱 테마
│   │   └── extensions.dart       # 확장 메소드
│   │
│   └── config/                   # 앱 설정
│       ├── routes.dart           # 라우팅 설정
│       └── api_config.dart       # API 설정
│
├── server/                       # 백엔드 (Node.js/Express)
│   ├── package.json              # 백엔드 의존성
│   ├── server.js                 # 서버 시작점
│   │
│   ├── config/                   # 서버 설정
│   │   ├── db.js                 # 데이터베이스 설정
│   │   └── config.js             # 일반 설정
│   │
│   ├── models/                   # 데이터 모델
│   │   ├── user.js               # 사용자 모델
│   │   ├── media.js              # 미디어 모델
│   │   ├── album.js              # 앨범 모델
│   │   └── device.js             # 기기 모델
│   │
│   ├── routes/                   # API 엔드포인트
│   │   ├── auth.js               # 인증 관련 라우트
│   │   ├── media.js              # 미디어 관련 라우트
│   │   ├── albums.js             # 앨범 관련 라우트
│   │   ├── devices.js            # 기기 관련 라우트
│   │   ├── sync.js               # 동기화 관련 라우트
│   │   ├── storage.js            # 저장소 관련 라우트
│   │   ├── ai.js                 # AI 관련 라우트
│   │   └── sharing.js            # 공유 관련 라우트
│   │
│   ├── controllers/              # 비즈니스 로직
│   │   ├── auth_controller.js    # 인증 컨트롤러
│   │   ├── media_controller.js   # 미디어 컨트롤러
│   │   ├── album_controller.js   # 앨범 컨트롤러
│   │   ├── device_controller.js  # 기기 컨트롤러
│   │   ├── sync_controller.js    # 동기화 컨트롤러
│   │   └── ai_controller.js      # AI 컨트롤러
│   │
│   ├── middleware/               # 미들웨어
│   │   ├── auth.js               # 인증 미들웨어
│   │   ├── validation.js         # 입력 검증
│   │   └── error.js              # 오류 처리
│   │
│   ├── services/                 # 서비스 계층
│   │   ├── storage_service.js    # 파일 저장소 서비스
│   │   ├── sync_service.js       # 동기화 서비스
│   │   ├── crypto_service.js     # 암호화 서비스
│   │   └── ai_service.js         # AI 분석 서비스
│   │
│   └── utils/                    # 유틸리티
│       ├── logger.js             # 로깅
│       ├── helpers.js            # 헬퍼 함수
│       └── mock.js               # 가상 데이터
│
└── assets/                       # 앱 리소스
    ├── images/                   # 이미지
    ├── fonts/                    # 폰트
    └── mock_data/                # 가상 데이터 JSON
```

## 2. 프론트엔드 (Flutter) 파일 구조

### `lib/main.dart`: 앱 시작점
앱의 진입점으로 Provider 설정과 앱 초기화 로직이 포함됩니다.

### `lib/models/`: 데이터 모델
앱에서 사용되는 데이터 객체들을 정의합니다:
- `media_item.dart`: 사진/비디오 모델
- `album.dart`: 앨범 모델
- `device.dart`: 기기 모델
- `storage_status.dart`: 저장소 상태
- `user.dart`: 사용자 정보

### `lib/screens/`: 화면 UI
앱의 각 화면을 담당하는 코드:
- `splash_screen.dart`: 스플래시 화면
- `login_screen.dart`: 로그인 화면
- `main_screen.dart`: 메인 탭 컨테이너
- 각 탭 화면들과 상세 화면들

### `lib/widgets/`: 재사용 위젯
여러 화면에서 재사용되는 UI 컴포넌트들:
- `media_thumbnail.dart`: 미디어 썸네일
- `album_list_item.dart`: 앨범 리스트 아이템
- `device_list_item.dart`: 기기 리스트 아이템

### `lib/services/`: 서비스 로직
백엔드 API와 통신하고 비즈니스 로직을 처리:
- `api_service.dart`: HTTP 요청 처리
- `auth_service.dart`: 인증 관련
- `media_service.dart`: 미디어 관리 
- `sync_service.dart`: 동기화 관련

### `lib/providers/`: 상태 관리
앱의 상태를 관리하는 Provider 클래스들:
- `photos_provider.dart`: 사진 상태 관리
- `albums_provider.dart`: 앨범 상태 관리
- `user_provider.dart`: 사용자 상태 관리

### `lib/utils/`: 유틸리티
앱 전반에서 사용하는 헬퍼 함수들:
- `constants.dart`: 앱 상수
- `mock_data.dart`: 가상 데이터
- `theme.dart`: 앱 테마 정의

## 3. 백엔드 (Node.js/Express) 파일 구조

### `server.js`: 서버 시작점
Express 서버 설정 및 미들웨어 등록, 라우트 연결 등

### `models/`: 데이터 모델
데이터베이스 스키마 정의:
- `user.js`: 사용자 모델
- `media.js`: 미디어 모델
- `album.js`: 앨범 모델

### `routes/`: API 엔드포인트
API 라우트 정의:
- `auth.js`: 인증 관련 라우트 (/auth/*)
- `media.js`: 미디어 관련 라우트 (/media/*)
- `albums.js`: 앨범 관련 라우트 (/albums/*)
- 기타 API 라우트들

### `controllers/`: 비즈니스 로직
요청을 처리하는 컨트롤러:
- `auth_controller.js`: 인증 관련 로직
- `media_controller.js`: 미디어 처리 로직
- 기타 도메인별 컨트롤러

### `services/`: 서비스 계층
비즈니스 로직 중 재사용 가능한 부분:
- `storage_service.js`: 파일 저장 로직
- `sync_service.js`: 동기화 로직
- `crypto_service.js`: 암호화 로직

### `middleware/`: 미들웨어
요청 처리 전/후에 실행되는 코드:
- `auth.js`: 인증 검증
- `validation.js`: 입력 데이터 검증
- `error.js`: 오류 처리
