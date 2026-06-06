# Qamara - Tracker Haid + AI Agent

Qamara adalah starter aplikasi tracker menstruasi/haid bernuansa feminin-elegan, dengan logo yang sudah disiapkan dari aset pengguna.

## Fitur MVP
- Logo versi App Store / Play Store di folder `public/icons`
- Splash assets di `public/assets`
- Onboarding screen
- UI/UX pink-feminine ala health tracker modern
- Dashboard kesehatan wanita
- Prediksi siklus haid dan masa subur
- Mood tracker dan symptom tracker
- AI Agent edukatif lokal berbasis rule
- Reminder/notifikasi browser
- Data lokal di `localStorage`

## Cara Jalankan
```bash
npm install
npm run dev
```

## Build Production
```bash
npm run build
```

## Catatan Medis & Privasi
Qamara AI di MVP ini hanya edukatif, bukan diagnosis medis. Untuk produksi, tambahkan privacy policy, consent, enkripsi, backup aman, dan validasi medis.

## Integrasi AI API Opsional
File `src/main.jsx` saat ini memakai AI lokal. Untuk versi produksi, buat backend kecil yang menyimpan API key di server, bukan di frontend.
