SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW dbo.[Saldos por parte]
AS
SELECT     TOP 100 PERCENT dbo.PEDIMPDET.PID_NOPARTE, MAX(dbo.PEDIMPDET.PID_NOMBRE) AS Expr1, SUM(dbo.PIDescarga.PID_SALDOGEN) 
                      AS SALDOGEN, dbo.MEDIDA.ME_CORTO, MIN(dbo.PEDIMPDET.PID_COS_UNIGEN) AS [costo uni]
FROM         dbo.PIDescarga INNER JOIN
                      dbo.PEDIMPDET ON dbo.PIDescarga.PID_INDICED = dbo.PEDIMPDET.PID_INDICED INNER JOIN
                      dbo.PEDIMP ON dbo.PEDIMPDET.PI_CODIGO = dbo.PEDIMP.PI_CODIGO INNER JOIN
                      dbo.MEDIDA ON dbo.PEDIMPDET.ME_GENERICO = dbo.MEDIDA.ME_CODIGO
WHERE     (dbo.PEDIMPDET.TI_CODIGO IN (10, 16, 14, 5)) AND (dbo.PEDIMP.PI_MOVIMIENTO = 'E') AND (dbo.PIDescarga.PI_RECTIFICADO = 'N') AND 
                      (dbo.PEDIMP.PI_FEC_ENT <= CONVERT(DATETIME, '2005-07-20 00:00:00', 102))
GROUP BY dbo.PEDIMPDET.PID_NOPARTE, dbo.PEDIMPDET.PID_IMPRIMIR, dbo.MEDIDA.ME_CORTO
HAVING      (SUM(dbo.PIDescarga.PID_SALDOGEN) > 0) AND (dbo.PEDIMPDET.PID_IMPRIMIR = 'S')
ORDER BY MAX(dbo.PEDIMPDET.PID_NOMBRE)
GO
