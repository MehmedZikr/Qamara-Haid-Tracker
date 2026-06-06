# Qamara - Period Tracker PWA

Qamara adalah aplikasi tracker haid dengan desain feminin, prediksi siklus, masa subur, mood & symptom tracker, AI Agent edukatif, PWA, cloud database opsional, dan footer dedikasi khusus.

## Fitur v2
- PWA: installable, manifest, service worker, offline cache, splash/icon ready
- Prediksi siklus haid, masa subur, dan ovulasi
- Mood tracker & symptom tracker
- Qamara AI Agent: local fallback + optional backend AI endpoint
- Cloud sync opsional via Supabase
- Premium demo ala Flo: insights, health report export, pregnancy/care placeholder
- Footer khusus Sarah

## Deploy Vercel
Build command:
```bash
npm run build
```
Output directory:
```bash
dist
```

## Environment Variables Opsional
Copy `.env.example`, lalu isi di Vercel:

```bash
VITE_SUPABASE_URL=
VITE_SUPABASE_ANON_KEY=
VITE_QAMARA_AI_ENDPOINT=
```

Catatan: jangan taruh OpenAI secret key langsung di frontend. Gunakan backend/proxy sendiri untuk `VITE_QAMARA_AI_ENDPOINT`.

## Supabase
Jalankan `SUPABASE_SETUP.sql` di Supabase SQL Editor, lalu isi env di Vercel.

## Disclaimer
Qamara AI bersifat edukatif dan bukan pengganti dokter, bidan, atau tenaga medis.
