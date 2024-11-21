---
title: Hoe Om'n Tabel Te Bou van a `DataTable` in Java
second_title: Aspose.Words vir Java
articleTitle: Bou'n Tabel van a `DataTable`
linktitle: Bou'n Tabel van a `DataTable`
description: "Voorbeeld van die vul van dokument tabel van eksterne databasis met behulp van Java."
type: docs
weight: 130
url: /af/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

Dikwels sal jou aansoek data uit'n databasis trek en dit in die vorm van'n **DataTable** stoor. U kan hierdie data maklik as'n nuwe tabel in u dokument invoeg en formatering vinnig op die hele tabel toepas.

{{% alert color="primary" %}}

Let daarop dat die voorkeur manier van die invoeging van data van'n **DataTable** in'n dokument tabel is deur die gebruik van [Mail Merge Met Streke](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). Die tegniek wat in hierdie artikel aangebied word, word slegs voorgestel as u nie vooraf'n geskikte sjabloon kan skep om data saam te voeg nie, met ander woorde, as u vereis dat alles programmaties moet gebeur.

{{% /alert %}}

Met behulp van Aspose.Words kan u maklik data uit'n databasis haal en dit as'n tabel stoor:

1. Skep'n nuwe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) voorwerp op jou [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Begin'n nuwe tabel met [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. As ons die name van elk van die kolomme van ons **DataTable** as'n kop ry wil invoeg dan iterate deur elke data kolom en skryf die kolom name in'n ry in die tabel.
1. Herhaal deur elke **DataRow** in die **DataTable**:
   1. Iterate deur elke voorwerp in die **DataRow**.
   1. Voeg die voorwerp in die dokument met [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Die metode wat gebruik word, hang af van die tipe voorwerp wat ingevoeg word, bv. [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) vir teks en [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) vir'n byte-array wat'n beeld verteenwoordig.
   1. Aan die einde van die verwerking van die data ry eindig ook die ry wat geskep word deur die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) deur die gebruik van [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Sodra al die rye van die **DataTable** verwerk is, voltooi die tabel deur [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) te bel.
1. Ten slotte kan ons die gewenste tabel styl stel met behulp van een van die toepaslike tabel eienskappe soos [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) om outomaties formatering toe te pas op die hele tabel.
   Die volgende data in ons **DataTable** word in hierdie voorbeeld gebruik:

![build-a-table-from-a-datatable-aspose-words-java-1](how-to-build-a-table-from-a-datatable-1.png)

Die volgende kode voorbeeld toon hoe om die bogenoemde algoritme uit te voer in Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Die metode kan dan maklik genoem word met behulp van jou **DocumentBuilder** en data.

Die volgende kode voorbeeld toon hoe om die data van a `DataTable` invoer en voeg dit in'n nuwe tabel in die dokument:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Die tabel wat in die onderstaande prentjie getoon word, word vervaardig deur die bogenoemde kode uit te voer.

![build-a-table-from-a-datatable-aspose-words-java-2](how-to-build-a-table-from-a-datatable-2.png)
