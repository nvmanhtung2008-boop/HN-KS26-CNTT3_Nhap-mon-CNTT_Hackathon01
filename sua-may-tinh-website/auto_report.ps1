# Script: auto_report.ps1 

# Tac gia: Nguyễn Văn Mạnh Tùng

# Ngay tao: 28/10/2026

  

Write-Host "Dang loc log..." 

  

"=== BAO CAO LOI ===" > ".\logs\auto_report.txt" 

Get-Content ".\logs\repair.log" | Select-String "error" >> ".\logs\auto_report.txt"

  

Write-Host "Hoan thanh!" 