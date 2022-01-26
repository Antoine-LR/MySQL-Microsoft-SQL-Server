create trigger Interdire_Suppression on dbo.iris_données
	instead of delete
as
begin
	print 'Vous n etes pas autorisé à supprimer'
end
go