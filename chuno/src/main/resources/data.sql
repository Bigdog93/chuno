INSERT INTO users
(email, nickname, reg_dt)
VALUES
    ('ljc9393@nate.com', '큰개님', NOW()),
    ('chaen511@naver.com', '성곡초짱이채은', NOW()),
    ('souk0712@naver.com', '아름병아리', NOW()),
    ('ljc1025@nate.com', '노예킹', NOW()),
    ('lkc263@naver.com', '아리따움', NOW()),
    ('siganshoyou@google.com', '추노장인', NOW());

INSERT INTO rooms
(is_public, lat, lng, location, password, radius, title, host_id, year, month, day, hour, minute)
VALUES
    (true, 35.5534, 37.14123, POINT(35.5534, 37.14123), null, 2, '드루와', 1, 2023, 02, 01, 10, 22),
    (true, 35.5534, 37.14123, POINT(35.5535, 37.14123), 1234, 4, '드루와', 3, 2023, 02, 01, 14, 55),
    (true, 35.5534, 37.14123, POINT(35.5534, 37.14123), null, 1, '드루와', 4, 2023, 02, 02, 1, 05);

INSERT INTO items
(description, img_path, name, price, for_runner)
VALUES
    ("자신의 위치를 드러내지 않고 가장 가까운 추노꾼의 위치를 확인할 수 있다.", "", "천리안", 1500, 1),
    ("추노꾼이 자신을 잡을 수 있는 범위를 축소한다.", "", "위장", 2000, 1),
    ("진짜 노비문서의 위치를 확인할 수 있다.", "", "확실한 정보통", 1000, 1),
    ("먹물을 뿌려 내 화면을 가릴 수 있다.", "", "먹물탄", 1300, 1),
    ("30초간 노비의 위치를 지도에 표시할 수 있다.", "", "조명탄", 1500, 0),
    ("자신이 노비를 잡을 수 있는 범위를 확대할 수 있다.", "", "긴 오랏줄", 2000, 0),
    ("노비 문서의 위치를 셔플할 수 있다.", "", "거짓 정보통", 1000, 0),
    ("연기를 피워 내 화면을 가릴 수 있다.", "", "연막탄", 1300, 0);


/*- 천리안 : 자신의 위치를 드러내지 않고 가장 가까운 추노꾼의 위치를 확인할 수 있다.
- 위장 : 추노꾼이 자신을 잡을 수 있는 범위를 축소한다.
- 확실한 정보통 : 진짜 노비문서의 위치를 확인할 수 있다.
- 먹물탄 : 먹물을 뿌려 내 화면을 가릴 수 있다.
2. 추노꾼용
    - 조명탄 : n초간 노비의 위치를 지도에 표시할 수 있다.
        - 전체 노비 위치 잠깐 표시
    - 긴 오랏줄 : 자신이 노비를 잡을 수 있는 범위를 확대할 수 있다.
    - 거짓 정보통 : 노비 문서의 위치를 셔플할 수 있다.
    - ~~허수아비 : 노비 화면에 가짜 추노꾼 위치 띄우기~~
    - 연막탄: 연기를 피워 내 화면을 가릴 수 있다.*/