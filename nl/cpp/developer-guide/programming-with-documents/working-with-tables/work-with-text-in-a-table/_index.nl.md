---
title: Werken met tekst in een tabel
second_title: Aspose.Words voor C++
articleTitle: Werken met tekst in een tabel
linktitle: Werken met tekst in een tabel
description: "Tekst vervangen in een tabel in C++. Extraheer platte tekst uit tabel of cel met behulp van C++."
type: docs
weight: 60
url: /nl/cpp/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Zoals in eerdere artikelen vermeld, bevat een tabel meestal platte tekst, hoewel andere inhoud zoals afbeeldingen of zelfs andere tabellen in tabelcellen kunnen worden geplaatst.

Het toevoegen van tekst of andere inhoud aan de tabel wordt uitgevoerd met behulp van de juiste methoden van de [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) - klasse en wordt beschreven in het **"Create a Table"** - artikel. In dit artikel zullen we het hebben over het werken met tekst in een reeds bestaande tabel.

## Tekst in een tabel vervangen

De tabel heeft, net als elke andere knoop in Aspose.Words, toegang tot het [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) object. Met het object tabelbereik kunt u tekst in een tabel vervangen.

De mogelijkheid om speciale tekens te gebruiken bij het vervangen wordt momenteel ondersteund, dus het is mogelijk om bestaande tekst te vervangen door tekst met meerdere alinea ' s. Hiervoor moet u de speciale metacharacters gebruiken die worden beschreven in de overeenkomstige [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) - methode.

{{% alert color="primary" %}}

Meestal moet Tekst vervangen worden op celniveau (per cel) of op alineaniveau.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u alle instanties van een tekstreeks in de cellen van een hele tabel kunt vervangen:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "replace-text.h" >}}

## Platte tekst uit tabel of cel extraheren

Met het **Range** - object kunt u ook methoden uit het hele tabelbereik aanroepen en de tabel als platte tekst uitpakken. Gebruik hiervoor de eigenschap [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/).

Het volgende codevoorbeeld laat zien hoe het tekstbereik van een tabel wordt afgedrukt:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "extract-text.h" >}}

Dezelfde techniek wordt gebruikt om alleen inhoud uit afzonderlijke tabelcellen te extraheren.

Het volgende codevoorbeeld laat zien hoe u een tekstbereik van rij-en tabelelementen kunt afdrukken:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "print-text-range-row-and-table.h" >}}

## Werken met alternatieve Tabeltekst

Microsoft Word tabellen hebben een `table title` en `table description` die een alternatieve tekstuele weergave bieden van de informatie in de tabel.

In Aspose.Words kunt u ook een tabeltitel en beschrijving toevoegen met behulp van de eigenschappen [Title](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_title/) en [Description](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_description/). Deze eigenschappen zijn zinvol voor DOCX documenten die voldoen aan de ISO/IEC 29500. Bij het opslaan in opmaak eerder dan ISO / IEC 29500, worden deze eigenschappen genegeerd.

Het volgende codevoorbeeld laat zien hoe u de eigenschappen titel en beschrijving van een tabel instelt:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "table-title-and-description.h" >}}
