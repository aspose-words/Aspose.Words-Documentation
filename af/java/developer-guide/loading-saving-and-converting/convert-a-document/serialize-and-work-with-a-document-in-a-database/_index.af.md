---
title: Serialiseer en Werk met'n Dokument In'n Databasis
second_title: Aspose.Words vir Java
articleTitle: Serialiseer en Werk met'n Dokument In'n Databasis
linktitle: Serialiseer en Werk met'n Dokument In'n Databasis
description: "Omskep'n dokument in'n byte skikking vir werk met hierdie dokument in'n databasis. Jy kan stoor en haal'n dokument na en van die databasis met behulp van Java."
type: docs
weight: 40
url: /af/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

Een van die take wat jy dalk moet doen wanneer jy met dokumente werk, is om **Document** voorwerpe na en van'n databasis te stoor en te haal. Dit sou byvoorbeeld nodig wees as u enige tipe inhoudbestuurstelsel implementeer. Alle vorige weergawes van dokumente moet in die databasisstelsel gestoor word. Die vermoë om dokumente in die databasis te stoor is ook uiters nuttig wanneer u aansoek'n webgebaseerde diens lewer.

Aspose.Words bied'n vermoë om'n dokument te omskep in'n byte skikking vir latere werk met hierdie dokument in'n databasis.

## Skakel'n Dokument Na Byte Array

Om'n dokument in'n databasis te stoor of om'n dokument voor te berei vir oordrag oor die web, is dit dikwels nodig om die dokument te serialiseer om'n byte-array te verkry.

Om'n [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) voorwerp in Aspose.Wordste serialiseer:

1. Stoor dit na'n **MemoryStream** met behulp van die [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) metode oorlading van die **Document** klas.
1. Bel die **ToArray** metode, wat'n skikking van grepe wat die dokument in greep vorm.

Die stappe hierbo kan dan omgekeer word om die grepe terug te laai in'n **Document** voorwerp.

{{% alert color="primary" %}}

Die geselekteerde stoor formaat is belangrik om te verseker dat die hoogste getrouheid behou word wanneer die stoor en herlaai in die **Document** voorwerp. Om hierdie rede word voorgestel om'n reeks OOXML lêerformate te gebruik.

{{% /alert %}}

Die onderstaande voorbeeld toon hoe om'n **Document** voorwerp te serialiseer om'n byte skikking te kry, en dan hoe om die byte skikking te unserialiseer om'n **Document** voorwerp weer te kry:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Stoor, Lees En Verwyder'n Dokument in'n Databasis

Hierdie afdeling wys hoe om'n dokument in'n databasis te stoor en dan laai dit terug in'n `Document` voorwerp vir die werk met dit. Vir eenvoud is die lêernaam die sleutel wat gebruik word om dokumente uit die databasis te stoor en te haal. Die databasis bevat twee kolomme. Die eerste kolom "FileName" word as'n String gestoor en word gebruik om dokumente te identifiseer. Die tweede kolom "FileContent" is gestoor as'n `BLOB` voorwerp wat die dokument voorwerp in die byte vorm stoor.

Die volgende kode voorbeeld toon hoe om'n verbinding met'n databasis op te stel en opdragte uit te voer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

In hierdie voorbeeld gebruik ons die MySQL databasis om'n Aspose.Words dokument te stoor.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n dokument te red om die databasis, dan lees dieselfde dokument weer, en uiteindelik verwyder die rekord met die dokument uit die databasis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Stoor'n Dokument In'n Databasis

Om'n dokument in'n databasis te stoor, omskep hierdie dokument in'n verskeidenheid grepe, soos beskryf aan die begin van hierdie artikel. Dan, stoor hierdie byte skikking in'n databasis veld.

Die volgende kode voorbeeld toon hoe om'n dokument te red om die gespesifiseerde databasis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Spesifiseer commandString, wat is'n SQL uitdrukking wat al die werk doen:

- Om'n dokument in die databasis te stoor, word die "INSERT INTO" opdrag gebruik en'n tabel gespesifiseer saam met die waardes van twee rekordvelde FileName en FileContent. Om bykomende parameters te vermy, word die lêernaam geneem uit die **Document** voorwerp self. Die `FileContent` veld waarde is toegeken grepe van die geheue stroom, wat'n binêre voorstelling van die gestoor dokument bevat.
- Die oorblywende reël kode voer die opdrag uit wat die Aspose.Words dokument in die databasis stoor.

### Haal'n Dokument uit'n Databasis

Om'n dokument uit die databasis te haal, kies die rekord wat die dokumentdata bevat as'n skikking van grepe. Laai dan die byte skikking van die rekord in **MemoryStream** en skep'n **Document** voorwerp wat die dokument van die **MemoryStream** sal laai.

Die volgende kode voorbeeld toon hoe om te haal en terug te keer'n dokument van die gespesifiseerde databasis met behulp van die lêernaam as'n sleutel om hierdie dokument te haal:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

Die SQL opdrag "SELECT * FROM" word gebruik om die toepaslike rekord te haal gebaseer op die lêernaam.

{{% /alert %}}

### Skrap'n Dokument Uit'n Databasis

Om'n dokument uit die databasis te verwyder, gebruik die toepaslike SQL opdrag sonder enige manipulasies op die **Document** voorwerp.

Die volgende kode voorbeeld toon hoe om'n dokument uit die databasis te verwyder, met behulp van die lêernaam om die rekord te haal:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
