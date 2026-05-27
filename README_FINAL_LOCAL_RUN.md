# 독고탁 에이젼시 - 로컬 실행 최종본

## 실행 방법 - Windows

1. 압축을 풉니다.
2. 폴더 안의 `run-local-windows.bat` 파일을 더블클릭합니다.
3. 검은 창에 `Ready` 또는 `Local: http://localhost:3002`가 나오면 성공입니다.
4. 브라우저에서 아래 주소로 접속합니다.

```text
http://localhost:3002
```

검은 창은 서버이므로 사용 중에는 끄지 마세요.

## 실행 방법 - Mac / Linux

```bash
chmod +x run-local-mac-linux.sh
./run-local-mac-linux.sh
```

## API 키 설정

처음 실행하면 `.env.example`을 복사해서 `.env.local`이 자동 생성됩니다.
이미 사용 중인 API 키가 있다면 `.env.local`에 넣어주세요.

```env
OPENAI_API_KEY=여기에_OpenAI_API_KEY
GOOGLE_API_KEY=여기에_GOOGLE_API_KEY
```

## 이번 최종본 반영 내용

- 상단 브랜드명: `독고탁 에이젼시`
- 서브 타이틀: `리디자인 마법사 1.0` 유지
- 기존 HR 로고를 독고탁 에이젼시용 DG 스타일 로고로 변경
- 대기 화면 YouTube 영상 7개를 요청한 링크로 교체
- 대기 화면 문구를 독고탁 에이젼시 추천 영상 문구로 변경
- `영상 열기` 버튼은 현재 표시 중인 영상으로 연결
- Windows 더블클릭 실행 파일 포함

## 문제가 생길 때

Node.js 오류가 나오면 Node.js 20 LTS 이상을 설치한 뒤 다시 실행하세요.

```text
https://nodejs.org/
```

설치 후에는 터미널/명령창을 모두 닫았다가 다시 `run-local-windows.bat`를 실행하세요.
