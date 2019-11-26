SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION Get9801(@fe_fecha varchar(30), @Ma_Codigo Integer, @ArExpMx Integer, @PaisOrigen integer, @TipoTasa char(1))
RETURNS char(1) AS  
begin


	DECLARE @9801 char(1)

	select @9801=CASE WHEN 
         dbo.MAESTRO.MA_CODIGO in (SELECT CERTORIGMPDET.MA_CODIGO 
         FROM  CERTORIGMPDET INNER JOIN CERTORIGMP ON CERTORIGMPDET.CMP_CODIGO = CERTORIGMP.CMP_CODIGO 
         WHERE LEFT(REPLACE(CERTORIGMPDET.CMP_FRACCION,'.',''),6) IN (SELECT LEFT(REPLACE(A1.AR_FRACCION,'.',''),6) FROM ARANCEL A1 WHERE AR_CODIGO=@ArExpMx) 
          AND CERTORIGMPDET.PA_CLASE IN (SELECT CF_PAIS_USA FROM CONFIGURACION) 
          AND CERTORIGMP.SPI_CODIGO IN (SELECT spi_codigo FROM spi WHERE spi_clave = 'nafta') 
          AND CERTORIGMP.CMP_IFECHA<=@fe_fecha AND CERTORIGMP.CMP_FECHATRANS>=@fe_fecha) 
          THEN 'S' 
          ELSE (CASE WHEN @PaisOrigen in (SELECT CF_PAIS_USA FROM CONFIGURACION) AND (select CF_CONFERIRORIGEN FROM CONFIGURACION)='T' 
			AND @TipoTasa='P' THEN 'S' 
                                 ELSE 'N' END) END 
         from maestro where ma_codigo =@Ma_Codigo

	IF @9801 IS NULL
	SET @9801='N'

	RETURN @9801
end


GO
