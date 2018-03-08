-- B''H --





-- ----------------------------------------------------------------------------------------
-- Parties-to-Party_Types
-- Many-to-One
ALTER TABLE [dbo].[Parties]  WITH CHECK ADD  CONSTRAINT [FK_Parties_Party_Types] FOREIGN KEY([Party_Type_FK])
REFERENCES [dbo].[Party_Types] ([Party_Type_PK])
GO
ALTER TABLE [dbo].[Parties] CHECK CONSTRAINT [FK_Parties_Party_Types]
GO
-- ----------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------
-- Party_Phone-to-Phone_Types
-- Many-to-One
ALTER TABLE [dbo].[Party_Phone]  WITH CHECK ADD  CONSTRAINT [FK_Party_Phone_Phone_Types] FOREIGN KEY([Phone_Type_ID_FK])
REFERENCES [dbo].[Phone_Types] ([Phone_Type_ID_PK])
GO

ALTER TABLE [dbo].[Party_Phone] CHECK CONSTRAINT [FK_Party_Phone_Phone_Types]
GO

-- Party_Phone-to-Parties
-- Many-to-One
ALTER TABLE [dbo].[Party_Phone]  WITH CHECK ADD  CONSTRAINT [FK_Party_Phone_Parties] FOREIGN KEY([Party_ID_FK])
REFERENCES [dbo].[Parties] ([Party_ID_PK])
GO

ALTER TABLE [dbo].[Party_Phone] CHECK CONSTRAINT [FK_Party_Phone_Parties]
GO
-- ----------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------
-- Individuals-to-Agencies
-- Many-to-One
ALTER TABLE [dbo].[Individuals]  WITH CHECK ADD  CONSTRAINT [FK_Individuals_Agencies] FOREIGN KEY([Agency_Employer_Party_ID_FK])
REFERENCES [dbo].[Agencies] ([Party_ID_PK_FK])
GO
ALTER TABLE [dbo].[Individuals] CHECK CONSTRAINT [FK_Individuals_Agencies]
GO
-- ----------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------
-- Supertype to subtype
-- 1 to 1
ALTER TABLE [dbo].[Individuals]  WITH CHECK ADD  CONSTRAINT [FK_Individuals_Parties] FOREIGN KEY(Party_ID_PK_FK, Party_Type_PK_FK)
REFERENCES [dbo].[Parties] (Party_ID_PK, Party_Type_FK)
GO

ALTER TABLE [dbo].[Individuals] CHECK CONSTRAINT [FK_Individuals_Parties]
GO
-- ----------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------
-- Supertype to subtype
-- 1 to 1
ALTER TABLE [dbo].[Companies]  WITH CHECK ADD  CONSTRAINT [FK_Companies_Parties] FOREIGN KEY(Party_ID_PK_FK, Party_Type_PK_FK)
REFERENCES [dbo].[Parties] (Party_ID_PK, Party_Type_FK)
GO

ALTER TABLE [dbo].[Companies] CHECK CONSTRAINT [FK_Companies_Parties]
GO
-- ----------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------
-- Supertype to subtype
-- 1 to 1
ALTER TABLE [dbo].[Agencies]  WITH CHECK ADD  CONSTRAINT [FK_Agencies_Parties] FOREIGN KEY(Party_ID_PK_FK, Party_Type_PK_FK)
REFERENCES [dbo].[Parties] (Party_ID_PK, Party_Type_FK)
GO

ALTER TABLE [dbo].[Agencies] CHECK CONSTRAINT [FK_Agencies_Parties]
GO
-- ----------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------
-- Bridge table Company_Owners
ALTER TABLE [dbo].[Company_Owners]  WITH CHECK ADD  CONSTRAINT [FK_Company_Owners_Companies] FOREIGN KEY([Company_Party_ID_PK_FK])
REFERENCES [dbo].[Companies] ([Party_ID_PK_FK])
GO

ALTER TABLE [dbo].[Company_Owners] CHECK CONSTRAINT [FK_Company_Owners_Companies]
GO

ALTER TABLE [dbo].[Company_Owners]  WITH CHECK ADD  CONSTRAINT [FK_Company_Owners_Individuals] FOREIGN KEY([Individual_Party_ID_PK_FK])
REFERENCES [dbo].[Individuals] ([Party_ID_PK_FK])
GO

ALTER TABLE [dbo].[Company_Owners] CHECK CONSTRAINT [FK_Company_Owners_Individuals]
GO
-- ----------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------
-- Bridge table Agency_Managers
ALTER TABLE [dbo].[Agency_Managers]  WITH CHECK ADD  CONSTRAINT [FK_Agency_Managers_Agencies] FOREIGN KEY([Agency_Party_ID_PK_FK])
REFERENCES [dbo].[Agencies] ([Party_ID_PK_FK])
GO

ALTER TABLE [dbo].[Agency_Managers] CHECK CONSTRAINT [FK_Agency_Managers_Agencies]
GO

ALTER TABLE [dbo].[Agency_Managers]  WITH CHECK ADD  CONSTRAINT [FK_Agency_Managers_Individuals] FOREIGN KEY([Manager_Party_ID_PK_FK])
REFERENCES [dbo].[Individuals] ([Party_ID_PK_FK])
GO

ALTER TABLE [dbo].[Agency_Managers] CHECK CONSTRAINT [FK_Agency_Managers_Individuals]
GO
-- ----------------------------------------------------------------------------------------








-- ----------------------------------------------------------------------------------------
-- Tax_Payments-to-Agencies
-- Many-to-One
ALTER TABLE [dbo].[Tax_Payments]  WITH CHECK ADD  CONSTRAINT [FK_Tax_Payments_Agencies] FOREIGN KEY([Agency_Party_ID_FK])
REFERENCES [dbo].[Agencies] ([Party_ID_PK_FK])
GO

ALTER TABLE [dbo].[Tax_Payments] CHECK CONSTRAINT [FK_Tax_Payments_Agencies]
GO

-- Tax_Payments-to-Parties
-- Many-to-One
ALTER TABLE [dbo].[Tax_Payments]  WITH CHECK ADD  CONSTRAINT [FK_Tax_Payments_Parties] FOREIGN KEY([Taxpayer_Party_ID_FK])
REFERENCES [dbo].[Parties] ([Party_ID_PK])
GO

ALTER TABLE [dbo].[Tax_Payments] CHECK CONSTRAINT [FK_Tax_Payments_Parties]
GO

-- Tax_Payments-to-Tax_Types
-- Many-to-One
ALTER TABLE [dbo].[Tax_Payments]  WITH CHECK ADD  CONSTRAINT [FK_Tax_Payments_Tax_Types] FOREIGN KEY([Tax_Type_ID_FK])
REFERENCES [dbo].[Tax_Types] ([Tax_Type_ID_PK])
GO

ALTER TABLE [dbo].[Tax_Payments] CHECK CONSTRAINT [FK_Tax_Payments_Tax_Types]
GO
-- ----------------------------------------------------------------------------------------