create trigger Interdire_Suppression on dbo.iris_donn�es
	instead of delete
as
begin
	print 'Vous n etes pas autoris� � supprimer'
end
go