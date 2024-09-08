# Node.js 베이스 이미지
FROM node:16

# 작업 디렉토리 설정
WORKDIR /usr/src/app

# 소스 코드 복사
COPY . .

# 의존성 설치
RUN npm install

# 애플리케이션 실행 - Vite 서버를 외부에서 접근할 수 있도록 --host 플래그 추가
CMD ["npm", "run", "start", "--", "--host"]

# 애플리케이션이 사용하는 포트 노출
EXPOSE 8000
