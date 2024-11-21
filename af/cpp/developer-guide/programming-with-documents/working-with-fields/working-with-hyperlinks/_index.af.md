---
title: Werk Met Hiperskakels in C++
second_title: Aspose.Words vir C++
articleTitle: Voeg By Of Verander Hiperskakels
linktitle: Voeg By Of Verander Hiperskakels
description: "Hoe om'n hiperskakel by jou dokument te voeg met behulp van Aspose.Words vir C++."
type: docs
weight: 180
url: /af/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

'n hiperskakel in Microsoft Word dokumente is die `HYPERLINK` veld. In Aspose.Words word hiperskakels geïmplementeer deur die [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) klas.

## Voeg'n Hiperskakel in

Gebruik die [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/) metode om'n hiperskakel in die dokument in te voeg. Hierdie metode aanvaar drie parameters:

1. Teks van die skakel wat in die dokument vertoon moet word
2. Skakel bestemming (URL of'n naam van'n boekmerk in die dokument)
3. Booleaanse parameter wat waar moet wees as die `URL` is'n naam van'n boekmerk binne die dokument

Die **InsertHyperlink** metode voeg altyd apostrofes by aan die begin en einde van die URL.

{{% alert color="primary" %}}

Let daarop dat jy font formatering vir die hyperlink vertoon teks eksplisiet met behulp van die `Font` eiendom spesifiseer.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n hiperskakel in'n dokument te voeg met behulp van [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Vervang Of Verander Hiperskakels

Hiperskakel in Microsoft Word dokumente is'n veld. 'n veld in'n Word-dokument is'n komplekse struktuur wat bestaan uit verskeie nodusse wat veld begin, veld kode, veld skeiding, veld resultaat en veld einde insluit. Velde kan genesteer word, ryk inhoud bevat en oor verskeie paragrawe of afdelings in'n dokument strek.

Die `FieldHyperlink` klas implementeer die `HYPERLINK` veld.

Die volgende kode voorbeeld toon hoe om al die hiperskakels in Word dokument te vind en verander hul `URL` en vertoon naam:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
