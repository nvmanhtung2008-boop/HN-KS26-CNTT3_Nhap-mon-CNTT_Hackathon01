# BÀI LÀM – HACKATHON 01

- **Mã đề:** 16
- **Họ tên:Nguyễn Văn Mạnh Tùng** 
- **Lớp:HNKS26CNTT3** 
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):Windows** 

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```PowerShell
1. Pwd
2. ls -r -Force
3. mv ".\quy_dinh_bao_hanh.txt" ".\docs"
    mv ".\logo_sua_may_tinh.PNG" ".\media"
4.cp ".\media\logo_sua_may_tinh.PNG" ".\backup"
5.rm .\temp_241.tmp
6. cd ".\logs"
    Get-Content ".\repair.log"
    cd..
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
Directory: D:\Project_CNTT\kiem_tra_NMCNTT\starter-kit\sua-may-tinh-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/28/2026  10:47 AM                backup
d-----        10/28/2026  10:50 AM                data
d-----        10/28/2026  10:52 AM                docs
d-----        10/28/2026  10:50 AM                logs
d-----        10/28/2026  10:52 AM                media
------        10/27/2026   1:32 AM             72 .env
-a----        10/28/2026  10:44 AM           2262 bai_lam.md


    Directory: D:\Project_CNTT\kiem_tra_NMCNTT\starter-kit\sua-may-tinh-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6767 logo_sua_may_tinh.PNG


    Directory: D:\Project_CNTT\kiem_tra_NMCNTT\starter-kit\sua-may-tinh-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6101 phieu_sua_thang_6.xlsx


    Directory: D:\Project_CNTT\kiem_tra_NMCNTT\starter-kit\sua-may-tinh-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM             61 quy_dinh_bao_hanh.txt


    Directory: D:\Project_CNTT\kiem_tra_NMCNTT\starter-kit\sua-may-tinh-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           1069 repair.log


    Directory: D:\Project_CNTT\kiem_tra_NMCNTT\starter-kit\sua-may-tinh-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6767 logo_sua_may_tinh.PNG

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```PowerShell
Get-Content ".\logs\repair.log" | Select-String "error" >> ".\logs\daily_report.txt"

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2026-06-28 08:57:31 [ERROR] Thanh toan bi tu choi
2026-06-28 09:01:31 [ERROR] Thanh toan bi tu choi

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [ ] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```PowerShell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\auto_report.ps1

```

### Kết quả hiển thị

```text
=== BAO CAO LOI ===

2026-06-28 08:57:31 [ERROR] Thanh toan bi tu choi
2026-06-28 09:01:31 [ERROR] Thanh toan bi tu choi
2026-06-28 09:05:31 [ERROR] Thanh toan bi tu choi
2026-06-28 09:17:31 [ERROR] Khong tim thay trang /tra-cuu (404)
2026-06-28 09:33:31 [ERROR] Khong tim thay trang /tra-cuu (404)
2026-06-28 09:37:31 [ERROR] Khong tim thay trang /tra-cuu (404)


```

## 4.6. Đếm số dòng lỗi

### Lệnh

```PowerShell
(Get-Content ".\logs\repair.log" | Select-String "error").count

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
6
```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
New-Item tong_hop_log.ps1
.\tong_hop_log.ps1

```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG ===

2026-06-28 08:33:31 [WARNING] Anh chup may dung luong lon
2026-06-28 08:37:31 [WARNING] Thoi gian phan hoi cham
2026-06-28 08:45:31 [WARNING] Linh kien RAM sap het
2026-06-28 09:09:31 [WARNING] Anh chup may dung luong lon


6


```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/phieu_sua_thang_6.xlsx`, không cần ghi vào đây.
