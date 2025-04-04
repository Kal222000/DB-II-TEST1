--Manga
CREATE NONCLUSTERED INDEX idx_Manga_Name ON MANGA(Manga_name);
CREATE NONCLUSTERED INDEX idx_Manga_Author ON MANGA(Author_name);
CREATE NONCLUSTERED INDEX idx_Manga_Genre ON MANGA(Genre);

--Volumen
CREATE NONCLUSTERED INDEX idx_volume_IdManga ON VOLUME(Id_Manga);
CREATE NONCLUSTERED INDEX idx_volume_Volumenro ON VOLUME(Volume_nro);

--Ventas
CREATE NONCLUSTERED INDEX idx_sales_IdVolume ON SALES(Id_Volume);

--Detalles
CREATE NONCLUSTERED INDEX idx_SalesDate ON SALES_DETAILS(Sales_date);
CREATE NONCLUSTERED INDEX idx_Sales_Id_Cus ON SALES_DETAILS(Id_Customer);
CREATE NONCLUSTERED INDEX idx_Sales_Id_Emp ON SALES_DETAILS(Id_Employee);

--Empleado
CREATE NONCLUSTERED INDEX idx_Employee_Name ON EMPLOYEE(Employee_Name);
CREATE NONCLUSTERED INDEX idx_Employee_Email ON EMPLOYEE(Email);
CREATE NONCLUSTERED INDEX idx_Employee_Number ON EMPLOYEE(Phone_number);

--Cliente
CREATE NONCLUSTERED INDEX idx_Customer_Name ON CUSTOMER(Customer_Name);
CREATE NONCLUSTERED INDEX idx_Customer_Nit ON CUSTOMER(NIT);
CREATE NONCLUSTERED INDEX idx_Customer_Email ON CUSTOMER(Email);