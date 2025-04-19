CREATE DATABASE car_sales
USE car_sales
SELECT * FROM org_file
CREATE TABLE car_info AS 
SELECT DISTINCT
	Car_id,
    Model,
    Engine,
    Transmission,
    Color,
    `Body Style`,
    `price ($)`
FROM org_file

DROP TABLE brand_info
# Best Performing Brand
SELECT Company,
SUM(`Price ($)`) AS TotalValue
FROM org_file
GROUP BY Company
ORDER BY TotalValue
LIMIT 5; 
drop table brand_info
CREATE TABLE brand_info(
	Company VARCHAR(50), 
    Image VARCHAR(300), 
    Image_URL VARCHAR(300) 
)

INSERT INTO brand_info (Company, Image, Image_URL) VALUES 
('Jaguar', 'https://www.topgearmag.in/uploads/News/Image/news_jaguar_f_typejpg1721120410.jpg', 'https://seeklogo.com/images/J/Jaguar-logo-ED7E01A4A1-seeklogo.com.png'),
('Mercedes-B','https://w0.peakpx.com/wallpaper/880/671/HD-wallpaper-mercedes-black-car-f1-formula-1-formula-one-technology-themes-type.jpg', 'https://w0.peakpx.com/wallpaper/693/992/HD-wallpaper-mercedes-logo-white-logo-white-mercedes.jpg'),
('BMW', 'https://w0.peakpx.com/wallpaper/103/453/HD-wallpaper-bmw-logo-logos-themes.jpg', 'https://preview.redd.it/please-find-me-a-similar-font-to-the-bmw-logo-font-v0-8naz2vqbtzcc1.png?width=1080&crop=smart&auto=webp&s=4271eb07852b9d78f6d9a667dffeabac08c174ed'),
('Audi', 'https://i.pinimg.com/564x/62/fe/67/62fe678f9da6c2f997c917d2f3fe2489.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJECOeRU9M9L11Vtwk6A_Ht9cLEsBLqvRBVw&s'),
('Toyota', 'https://i.pinimg.com/736x/e2/b5/b6/e2b5b63fb2384e55c7d016f86d8561c8.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMha4iBfMF-P54i0rxc5aSqqWuktU3_Ed0vA&s');

SELECT * FROM brand_info 

CREATE TABLE sale_info AS 
SELECT 
	Date,
    Car_id,
    `Customer Name`,
    Gender,
    Company,
    `Annual Income`,
    Dealer_No
FROM org_file
SET SQL_SAFE_UPDATES = 1;

 
DROP TABLE dealer_info

CREATE TABLE dealer_info AS
SELECT DISTINCT
	Car_id,
	Dealer_No,
    Dealer_Name,
    Dealer_Region,
    Phone
FROM org_file;

SHOW VARIABLES LIKE 'secure_file_priv';


    
