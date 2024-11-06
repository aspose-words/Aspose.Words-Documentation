---
title: Werk Met Hiperskakels in C#
second_title: Aspose.Words vir .NET
articleTitle: Voeg By Of Verander Hiperskakels
linktitle: Voeg By Of Verander Hiperskakels
description: "Hoe om'n hiperskakel by jou dokument in C# te voeg met behulp van Aspose.Words vir .NET."
type: docs
weight: 50
url: /af/net/working-with-hyperlinks/
---

'n hiperskakel in Microsoft Word dokumente is die `HYPERLINK` veld. In Aspose.Words word hiperskakels geïmplementeer deur die [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) klas.

## Voeg'n Hiperskakel in

Gebruik die [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/) metode om'n hiperskakel in die dokument in te voeg. Hierdie metode aanvaar drie parameters:

1. Teks van die skakel wat in die dokument vertoon moet word
2. Skakel bestemming (URL of'n naam van'n boekmerk in die dokument)
3. Booleaanse parameter wat waar moet wees as die `URL` is'n naam van'n boekmerk binne'n dokument

Die **InsertHyperlink** metode voeg altyd apostrofes by aan die begin en einde van die URL.

{{% alert color="primary" %}}

Let daarop dat jy font formatering vir die hyperlink vertoon teks eksplisiet met behulp van die `Font` eiendom spesifiseer.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n hiperskakel in'n dokument te voeg met behulp van [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Vervang Of Verander Hiperskakels

Hiperskakel in Microsoft Word dokumente is'n veld. 'n veld in'n Word-dokument, soos ons vroeër gesê het, is'n komplekse struktuur wat bestaan uit verskeie nodusse wat veldstart, veldkode, veldskeiding, veldresultaat en veldeinde insluit. Velde kan genesteer word, ryk inhoud bevat en oor verskeie paragrawe of afdelings in'n dokument strek.

Om hiperskakels te vervang of te verander, is dit nodig om die hiperskakels in die dokument te vind en hul teks, URLs, of albei te vervang.

Die volgende kode voorbeeld toon hoe om al die hiperskakels in Word dokument te vind en verander hul `URL` en vertoon naam:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
