let
    Fonte = Table.FromRows(Json.Document(Binary.Decompress(Binary.FromText("i45WMlTSUcrKP7w4XylWJ1rJCMhLzEspOrwSzDUGSxZDeSZAXmVpUSaYYwpWWZKflwnUGQsA", BinaryEncoding.Base64), Compression.Deflate)), let _t = ((type nullable text) meta [Serialized.Text = true]) in type table [id = _t, nome = _t]),
    #"Tipo Alterado" = Table.TransformColumnTypes(Fonte,{{"id", Int64.Type}, {"nome", type text}})
in
    #"Tipo Alterado"