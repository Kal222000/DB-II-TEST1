--Eliminar Volumen
CREATE TRIGGER Eliminar_Volumen
ON VOLUME
INSTEAD OF DELETE
AS
BEGIN 
	SET NOCOUNT ON;
	DECLARE @VOLUME INT;
	SET @VOLUME = (SELECT Id_Volume FROM deleted);
	IF @VOLUME IN (SELECT DISTINCT Id_Volume FROM VOLUME)
		BEGIN
		UPDATE VOLUME
		SET Estado = 0
		WHERE Id_Volume = @VOLUME;
		END
	ELSE
		PRINT('No existe Volumen')
END;