-- 1. Tính giá trung bình các sản phẩm do Oracle cung cấp
SELECT AVG(price) AS avg_price
FROM order_data
WHERE supplier = 'Oracle' AND price IS NOT NULL;



-- 2. Hiển thị tên các nhà cung cấp mà có ít nhất 2 sản phẩm chưa có giá trị thuế
SELECT supplier
FROM order_data
WHERE tax IS NULL
GROUP BY supplier
HAVING COUNT(*) >= 2;