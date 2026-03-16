@echo off
curl http://localhost:3001/api/v1/admin/license ^
  -H "X-Admin-Key: modu-admin-secret"
pause