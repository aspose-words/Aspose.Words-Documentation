---
title: Werk Met Hiperskakels in Java
second_title: Aspose.Words vir Java
articleTitle: Voeg By Of Verander Hiperskakels
linktitle: Voeg By Of Verander Hiperskakels
description: "Hoe om'n hiperskakel by jou dokument te voeg met Java."
type: docs
weight: 50
url: /af/java/working-with-hyperlinks/
---

'n hiperskakel in Microsoft Word dokumente is die `HYPERLINK` veld. In Aspose.Words word hiperskakels geïmplementeer deur die [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) klas.

## Voeg'n Hiperskakel in

Gebruik die [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) metode om'n hiperskakel in die dokument in te voeg. Hierdie metode aanvaar drie parameters:

1. Teks van die skakel wat in die dokument vertoon moet word
2. Skakel bestemming (URL of'n naam van'n boekmerk in die dokument)
3. Booleaanse parameter wat waar moet wees as die `URL` is'n naam van'n boekmerk binne'n dokument

Die **InsertHyperlink** metode voeg altyd apostrofes by aan die begin en einde van die URL.

{{% alert color="primary" %}}

Let daarop dat jy font formatering vir die hyperlink vertoon teks eksplisiet met behulp van die `Font` eiendom spesifiseer.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n hiperskakel in'n dokument te voeg met behulp van [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Vervang Of Verander Hiperskakels

Hiperskakel in Microsoft Word dokumente is'n veld. 'n veld in'n Word-dokument, soos ons vroeër gesê het, is'n komplekse struktuur wat bestaan uit verskeie nodusse wat veldstart, veldkode, veldskeiding, veldresultaat en veldeinde insluit. Velde kan genesteer word, ryk inhoud bevat en oor verskeie paragrawe of afdelings in'n dokument strek.

Om hiperskakels te vervang of te verander, is dit nodig om die hiperskakels in die dokument te vind en hul teks, URLs, of albei te vervang.

Die volgende kode voorbeeld toon hoe om al die hiperskakels in Word dokument te vind en verander hul `URL` en vertoon naam:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
