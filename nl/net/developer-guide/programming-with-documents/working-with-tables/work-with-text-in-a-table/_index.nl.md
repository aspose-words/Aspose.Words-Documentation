---
title: Werk met tekst in een tabel
second_title: Aspose.Words voor .NET
articleTitle: Werk met tekst in een tabel
linktitle: Werk met tekst in een tabel
description: "Tekst vervangen in een tabel in C#. Verwijder platte tekst uit tabel of cel met behulp van C#."
type: docs
weight: 60
url: /nl/net/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Zoals vermeld in eerdere artikelen, bevat een tabel meestal platte tekst, hoewel andere inhoud zoals afbeeldingen of zelfs andere tabellen in tabelcellen kunnen worden geplaatst.

Het toevoegen van tekst of andere inhoud aan de tabel wordt uitgevoerd met behulp van de passende methoden van de [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) klasse en wordt beschreven in de **"Een tabel maken"** artikel. In dit artikel bespreken we hoe we met tekst kunnen werken in een reeds bestaande tabel.

## Tekst vervangen in een tabel

De tafel, zoals elke andere knooppunt in Aspose.Words, toegang heeft tot de [Range](https://reference.aspose.com/words/net/aspose.words/range/) object. Met het tabelbereik object kunt u tekst vervangen in een tabel.

De mogelijkheid om speciale tekens te gebruiken bij het vervangen wordt momenteel ondersteund, zodat het mogelijk is om bestaande tekst te vervangen door multi-paragraf tekst. Om dit te doen, moet u de speciale metakarakters beschreven in de overeenkomstige [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) methode.

{{% alert color="primary" %}}

Typisch moet tekstvervanging plaatsvinden op celniveau (per cel) of op alineaniveau.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je alle instanties van een tekstreeks in de cellen van een hele tabel kunt vervangen:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "replace-text.cs" >}}

## Gewoonte tekst uit tabel of cel halen

Gebruik van de **Range** object, kunt u ook oproepen methoden op de hele tabel bereik en extract de tabel als platte tekst. Om dit te doen, gebruik de [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) eigendom

Het volgende voorbeeld van code laat zien hoe je het tekstbereik van een tabel kunt afdrukken:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "extract-text.cs" >}}

Dezelfde techniek wordt gebruikt om inhoud alleen uit individuele tabelcellen te halen.

Het volgende voorbeeld van code laat zien hoe je een tekstbereik van rij- en tabelelementen afdrukt:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "print-text-range-row-and-table.cs" >}}

## Werken met alternatieve tabeltekst

Microsoft Word Tabellen hebben een `table title` en `table description` een alternatieve tekstuele weergave van de informatie in de tabel.

In Aspose.Words, u kunt ook een tabel titel en beschrijving met behulp van de [Title](https://reference.aspose.com/words/net/aspose.words.tables/table/title/) en [Description](https://reference.aspose.com/words/net/aspose.words.tables/table/description/) eigenschappen. Deze eigenschappen zijn zinvol voor DOCX documenten conform de ISOIEC 29500. Bij opslaan in formaten eerder dan ISO/IEC 29500, deze eigenschappen worden genegeerd.

Het volgende voorbeeld van code laat zien hoe u de titel- en beschrijvingseigenschappen van een tabel kunt instellen:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "table-title-and-description.cs" >}}
