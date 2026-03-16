@echo off
set /p notes=Catatan (nama pembeli): 
set /p count=Jumlah key: 
curl -X POST http://localhost:3001/api/v1/admin/license/generate ^
  -H "Content-Type: application/json" ^
  -H "X-Admin-Key: modu-admin-secret" ^
  -d "{\"count\": %count%, \"notes\": \"%notes%\"}"
pause