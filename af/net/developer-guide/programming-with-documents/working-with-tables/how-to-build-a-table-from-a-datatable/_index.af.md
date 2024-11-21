---
title: Hoe Om'n Tabel Te Bou van a `DataTable` in C#
second_title: Aspose.Words vir .NET
articleTitle: Bou'n Tabel van a `DataTable`
linktitle: Bou'n Tabel van a `DataTable`
description: "Voorbeeld van die vul van dokument tabel van eksterne databasis met behulp van C#."
type: docs
weight: 120
url: /af/net/how-to-build-a-table-from-a-datatable/
timestamp: 2024-09-25-11-08-55
---

Dikwels sal jou aansoek data uit'n databasis trek en dit in die vorm van'n **DataTable** stoor. U kan hierdie data maklik as'n nuwe tabel in u dokument invoeg en formatering vinnig op die hele tabel toepas.

{{% alert color="primary" %}}

Let daarop dat die voorkeur manier van die invoeging van data van'n **DataTable** in'n dokument tabel is deur die gebruik van [Mail Merge Met Streke](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions). Die tegniek wat in hierdie artikel aangebied word, word slegs voorgestel as u nie'n geskikte sjabloon voor die hand kan skep om data saam te voeg nie, met ander woorde as u vereis dat alles programmaties moet gebeur.

{{% /alert %}}

Met behulp van Aspose.Words kan u maklik data uit'n databasis haal en dit as'n tabel stoor:

1. Skep'n nuwe **DocumentBuilder** voorwerp op jou **Document**.
1. Begin'n nuwe tabel met **DocumentBuilder**.
1. As ons die name van elk van die kolomme van ons **DataTable** as'n kop ry wil invoeg dan iterate deur elke data kolom en skryf die kolom name in'n ry in die tabel.
1. Herhaal deur elke **DataRow** in die **DataTable**:
   1. Iterate deur elke voorwerp in die **DataRow**.
   1. Voeg die voorwerp in die dokument met **DocumentBuilder**. Die metode wat gebruik word, hang af van die tipe voorwerp wat ingevoeg word, bv. **DocumentBuilder.Writeln** vir teks en **DocumentBuilder.InsertImage** vir'n byte-array wat'n beeld verteenwoordig.
   1. Aan die einde van die verwerking van die **DataRow** eindig ook die ry wat deur die **DocumentBuilder** geskep word deur **DocumentBuilder.EndRow** te gebruik.
1. Sodra al die rye van die **DataTable** verwerk is, voltooi die tabel deur **DocumentBuilder.EndTable** te bel.
1. Ten slotte kan ons die gewenste tabel styl stel met behulp van een van die toepaslike tabel eienskappe soos **Table.StyleIdentifier** om outomaties formatering toe te pas op die hele tabel.

Die **ImportTableFromDataTable** metode aanvaar'n **DocumentBuilder** voorwerp, die **DataTable** wat die data en'n vlag wat spesifiseer of die kolom kop van die **DataTable** is ingesluit aan die bokant van die tabel. Hierdie metode bou'n tabel van hierdie parameters met behulp van die bouer se huidige posisie en formatering. Verskaf'n metode om data van die `DataTable` in te voer en dit in'n nuwe tabel in te voeg met behulp van die DocumentBuilder.

Die volgende data in ons **DataTable** word in hierdie voorbeeld gebruik:

![how-to-build-a-table-from-a-datatable-aspose-words-net](how-to-build-a-table-from-a-datatable-1.png)

Die volgende kode voorbeeld toon hoe om die bogenoemde algoritme uit te voer in Aspose.Words:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

Die metode kan dan maklik genoem word met behulp van jou **DocumentBuilder** en data.

Die volgende kode voorbeeld toon hoe om die data van a `DataTable` invoer en voeg dit in'n nuwe tabel in die dokument:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
