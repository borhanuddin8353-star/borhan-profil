BORHAN UDDIN Digital Profile — Setup Guide

এই ZIP-এর ফাইলগুলো:
index.html = Public profile
admin.html = Admin login ও edit panel
setup.sql = Supabase database/RLS setup
contact.vcf = Save Contact file

গুরুত্বপূর্ণ: ZIP সরাসরি ওয়েবসাইট হিসেবে কাজ করবে না। ZIP Extract করে ভেতরের ফাইলগুলো GitHub repository-তে আপলোড করতে হবে।

১) Supabase project তৈরি করুন: https://supabase.com/dashboard
২) Authentication > Users-এ নিজের admin user তৈরি করুন।
৩) SQL Editor-এ setup.sql-এর SQL চালান।
৪) Project Settings / API (বা Connect) থেকে Project URL ও anon/publishable key নিন।
৫) index.html এবং admin.html—দুই ফাইলেই PASTE_SUPABASE_PROJECT_URL_HERE ও PASTE_SUPABASE_ANON_KEY_HERE বদলান। Secret/service_role key কখনো ব্যবহার করবেন না।
৬) Supabase Auth-এ public email signups বন্ধ রাখুন। এই starter policy যেকোনো authenticated user-কে edit করতে দেয়, তাই signup বন্ধ রাখা জরুরি; পরবর্তীতে নির্দিষ্ট admin UID দিয়ে policy আরও শক্ত করুন।
৭) GitHub borhan-profile repository > Add file > Upload files দিয়ে index.html, admin.html, setup.sql, contact.vcf, README.txt আপলোড করে Commit changes করুন।
৮) Settings > Pages > Deploy from a branch > main > /(root) > Save চালু করুন।
Public URL: https://YOUR-USERNAME.github.io/borhan-profile/
Admin URL: https://YOUR-USERNAME.github.io/borhan-profile/admin.html
YOUR-USERNAME আপনার GitHub username দিয়ে বদলাবেন।

ফোন/ঠিকানা public profile-এ দেখা যাবে। প্রকাশের আগে সম্মতি ও তথ্য যাচাই করুন।
