--Eliminar Empleado
CREATE TRIGGER Eliminar_Employee
ON EMPLOYEE
INSTEAD OF DELETE
AS
BEGIN 
	SET NOCOUNT ON;
	DECLARE @IDEMPLOYEE INT;
	SET @IDEMPLOYEE = (SELECT Id_Employee FROM deleted);
	IF @IDEMPLOYEE IN (SELECT Id_Employee FROM EMPLOYEE)
		BEGIN
		UPDATE EMPLOYEE
		SET Estado = 0
		WHERE Id_Employee = @IDEMPLOYEE;
		END
	ELSE
		PRINT('No existe Empleado')
END;