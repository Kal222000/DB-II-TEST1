---------------------------------------------
-- Author: Israel Gutierrez Lara
-- Date: 4/4/2025
-- Funtion: Plus Stock
---------------------------------------------

CREATE PROCEDURE Aumentar_Stock
	@Id_Volumen INT,
	@Cantidad INT
AS
BEGIN
	SET NOCOUNT ON;
	IF @Cantidad <= 0
		BEGIN
		PRINT('No es Valido la Cantidad')
		END
	ELSE
		BEGIN
		UPDATE VOLUME
		SET Stock = Stock + @Cantidad
		WHERE Id_Volume = @Id_Volumen
		END
END