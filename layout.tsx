import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "독고탁 에이젼시",
  description: "기존 상세페이지 이미지와 PDF를 분석해 구매전환 중심 상세페이지 이미지로 리디자인합니다.",
  icons: {
    icon: "/icon.svg",
    apple: "/apple-icon.svg"
  }
};

export default function RootLayout({ children }: Readonly<{ children: React.ReactNode }>) {
  return (
    <html lang="ko">
      <body>{children}</body>
    </html>
  );
}
