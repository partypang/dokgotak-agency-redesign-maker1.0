# 로컬 실행 안내

이 프로젝트는 Next.js 기반 상세페이지 리디자인 위저드입니다.

## 1. 필수 설치

먼저 PC에 Node.js 20 이상을 설치하세요.

- 권장: Node.js LTS 20 또는 22
- 설치 후 터미널에서 확인:

```bash
node -v
npm -v
```

## 2. 가장 쉬운 실행 방법

### Windows

프로젝트 폴더에서 아래 파일을 더블클릭하세요.

```text
run-local-windows.bat
```

또는 명령 프롬프트/PowerShell에서 실행:

```bat
run-local-windows.bat
```

### Mac / Linux

터미널에서 프로젝트 폴더로 이동한 뒤 실행하세요.

```bash
chmod +x run-local-mac-linux.sh
./run-local-mac-linux.sh
```

## 3. 수동 실행 방법

```bash
npm ci
npm run dev:local
```

브라우저에서 아래 주소를 여세요.

```text
http://localhost:3002
```

## 4. API 키 설정

처음 실행하면 `.env.local` 파일이 자동 생성됩니다.
이미지 생성 기능을 실제로 사용하려면 `.env.local`에 키를 넣으세요.

```env
OPENAI_API_KEY=여기에_OpenAI_API_KEY
GOOGLE_API_KEY=여기에_Google_API_KEY
```

Neon DB/RAG 기능까지 쓰려면 아래 값도 추가하세요.

```env
DATABASE_URL=여기에_Neon_Postgres_Connection_URL
KNOWLEDGE_ACCESS_KEYS=접근키1,접근키2
KNOWLEDGE_ADMIN_KEY=관리자키
```

API 키 없이도 화면은 로컬에서 열립니다. 다만 이미지 생성/분석 기능은 제한됩니다.

## 5. 빌드 확인

```bash
npm run build
npm run typecheck
```

## 6. 자주 나는 문제

### `node` 명령어를 찾을 수 없다고 나오는 경우
Node.js가 설치되지 않았거나 PATH가 적용되지 않은 상태입니다. Node.js LTS를 설치한 뒤 터미널을 새로 열어 다시 실행하세요.

### 포트 3002가 이미 사용 중인 경우
다른 프로그램이 3002번 포트를 쓰고 있는 상태입니다. 아래처럼 다른 포트로 실행할 수 있습니다.

```bash
npx next dev -p 3003
```

### Google Fonts 관련 빌드 오류
이 패키지는 로컬 실행 안정성을 위해 Google Fonts 의존성을 제거한 버전입니다.
