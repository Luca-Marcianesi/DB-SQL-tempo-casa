create table Vendita(
Cliente char(7),
foreign key (Cliente) references Cliente(Carta_di_identità) on update cascade on delete
cascade
Immobile char(10),
foreign key (Immobile) references Immobile(Codice_Immobile) on update cascade on de-
lete no action ,
primary key (Cliente, Immobile),
Prezzo integer check(Prezzo>0),
unique(Immobile)
)
