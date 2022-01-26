/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Sépales.Longueur]
      ,[Sépales.Largeur]
      ,[EspècesId]
  FROM [irissql].[dbo].[View_1]