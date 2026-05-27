# GitHub 업로드용 안내

이 폴더는 GitHub/Vercel 배포용으로 정리된 버전입니다.

## GitHub에 올릴 때

이 폴더 안의 파일과 폴더를 GitHub 저장소에 업로드하세요.

업로드 금지 파일:

- .env
- .env.local
- node_modules
- .next
- *.zip
- tsconfig.tsbuildinfo

## Vercel 환경변수

GitHub에는 API 키를 올리지 말고, Vercel 프로젝트 설정에서 아래 환경변수를 등록하세요.

```env
OPENAI_API_KEY=여기에_OpenAI_API_KEY
GOOGLE_API_KEY=여기에_Google_API_KEY
```

## 로컬 실행

Windows에서는 `run-local-windows.bat` 더블클릭, 또는 아래 명령어를 사용하세요.

```bash
npm ci
npm run dev:local
```

접속 주소:

```text
http://localhost:3002
```
