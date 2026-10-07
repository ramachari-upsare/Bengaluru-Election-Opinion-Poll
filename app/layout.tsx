import type { Metadata } from "next";
import "./globals.css";
export const metadata: Metadata = { title:"Bengaluru Teachers' Constituency — Opinion Poll", description:"Independent academic opinion survey for Bengaluru Teachers' Constituency." };
export default function RootLayout({children}:{children:React.ReactNode}) { return <html lang="en"><body>{children}</body></html>; }