--USE [master]
--GO


IF NOT EXISTS(select * from sys.databases where name='TaxApp')
CREATE DATABASE TaxApp
GO