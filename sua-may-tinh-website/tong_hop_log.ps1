# Tác giả: Nguyễn Văn Mạnh Tùng
# Ngày tạo 28/10/2026
"=== TONG HOP LOG ===" >>".\logs\tong_hop.txt"
Write-Host "Dang loc"
Get-Content ".\logs\repair.log" | Select-String "warning" >> ".\logs\tong_hop.txt"
(Get-Content ".\logs\repair.log" | Select-String "error").count >> ".\logs\tong_hop.txt"
Write-Host "Da xong"
