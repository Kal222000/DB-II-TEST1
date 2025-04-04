--Reporte1: total vendido por manga y volumen en un dia en especifico
CREATE VIEW VentasPorManga AS
SELECT 
    M.Manga_name, 
    V.Volume_nro, 
    SD.Sales_date,
    SUM(V.Price * S.Quantity) AS 'Precio total ganado'
FROM MANGA AS M
INNER JOIN VOLUME AS V ON V.Id_Manga = M.Id_Manga
INNER JOIN SALES AS S ON S.Id_Volume = V.Id_Volume
INNER JOIN sales_details AS SD ON SD.Id_Sales = S.Id_Sales
GROUP BY M.Manga_name, V.Volume_nro, SD.Sales_date;


--View de Reporte2 para Mangas mas su total de ventas y total ganado
CREATE VIEW TopMangasVendidos AS
SELECT
    M.Manga_name, 
    SUM(S.Quantity) AS Total_Vendido,
    SUM(S.Quantity * V.Price) AS Total_Ganado
FROM manga AS M
INNER JOIN volume AS V ON V.Id_Manga = M.Id_Manga
INNER JOIN sales AS S ON S.Id_Volume = V.Id_Volume
GROUP BY M.Manga_name;