---
title: Werk met tekst in een tabel
second_title: Aspose.Words voor Java
articleTitle: Werk met tekst in een tabel
linktitle: Werk met tekst in een tabel
description: "Tekst vervangen in een tabel in Java. Gewoonte tekst uit tabel of cel verwijderen met behulp van Java."
type: docs
weight: 60
url: /nl/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Zoals vermeld in voorgaande artikelen, bevat een tabel meestal platte tekst, hoewel andere inhoud zoals afbeeldingen of zelfs andere tabellen in tabelcellen kunnen worden geplaatst.

Het toevoegen van tekst of andere inhoud aan de tabel wordt uitgevoerd met behulp van de passende methoden van de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) klasse en wordt beschreven in de **"Een tabel maken"** artikel. In dit artikel bespreken we hoe we met tekst kunnen werken in een reeds bestaande tabel.

## Tekst vervangen in een tabel

De tafel, zoals elke andere knooppunt in Aspose.Words, toegang heeft tot de [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) object. Met het tafelbereikobject kunt u tekst in een tabel vervangen.

De mogelijkheid om speciale tekens te gebruiken bij het vervangen wordt momenteel ondersteund, zodat het mogelijk is om bestaande tekst te vervangen door multi-paragraf tekst. Om dit te doen, moet u de speciale metakarakters beschreven in de overeenkomstige [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) methode.

{{% alert color="primary" %}}

Typisch moet tekstvervanging plaatsvinden op celniveau (per cel) of op alineaniveau.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je alle instanties van een tekstreeks in de cellen van een hele tabel kunt vervangen:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Gewone tekst uit een tabel halen

Gebruik van de **Range** object, kunt u ook oproepen methoden op de hele tabel bereik en extract de tabel als platte tekst. Om dit te doen, gebruik de [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) eigendom

Het volgende voorbeeld van code laat zien hoe je het tekstbereik van een tabel kunt afdrukken:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

Dezelfde techniek wordt gebruikt om inhoud alleen uit individuele tabelcellen te halen.

Het volgende voorbeeld van code laat zien hoe een tekstbereik van rij- en tabelelementen af te drukken:

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je het tekstbereik van rij- en tabelelementen afdrukt.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Werken met alternatieve tabeltekst

Microsoft Word Tabellen hebben een `table title` en `table description` een alternatieve tekstuele weergave van de informatie in de tabel.

In Aspose.Words, u kunt ook een tabel titel en beschrijving met behulp van de [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) en [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) eigenschappen. Deze eigenschappen zijn betekenisvol voor DOCX documenten die voldoen aan de ISOIEC 29500. Bij opslaan in formaten eerder dan ISO/IEC 29500, deze eigenschappen worden genegeerd.

Het volgende voorbeeld van code laat zien hoe de titel- en beschrijvingseigenschappen van een tabel kunnen worden ingesteld:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
