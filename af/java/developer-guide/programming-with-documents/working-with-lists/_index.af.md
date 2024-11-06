---
title: Werk Met Lyste in Java
second_title: Aspose.Words vir Java
articleTitle: Werk met Lyste
linktitle: Werk met Lyste
description: "Inleiding tot nommering formatering funksie in Aspose.Words vir Java."
type: docs
weight: 200
url: /af/java/working-with-lists/
---

'n lys in'n Microsoft Word dokument is'n stel lys formatering eienskappe. Lyste kan in u dokumente gebruik word om teks te formateer, te rangskik en te beklemtoon. Lyste is'n goeie manier om data in dokumente te organiseer, en dit maak dit makliker vir lesers om sleutelpunte te verstaan.

Elke lys kan tot 9 vlakke en formatering eienskappe, soos nommer styl, begin waarde, indent, blad posisie, en ander is afsonderlik vir elke vlak gedefinieer.

Hierdie artikel beskryf programmaties werk met lyste met behulp van Aspose.Words.

## Skep Lyste deur Lysformatering Toe Te Pas

Aspose.Words laat die maklike skepping van lyste toe deur lysformatering toe te pas. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) verskaf die [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) eienskap wat'n **ListFormat** voorwerp terugkeer. Hierdie voorwerp het verskeie metodes om'n lys te begin en te beëindig en om die inkeping te verhoog/verminder. Daar is twee algemene tipes lyste in Microsoft Word: bullet en genommer:

- Om'n lys met kolletjies te begin, bel [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Om'n genommerde lys te begin, bel [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

Die koeël of nommer en formatering word by die huidige paragraaf gevoeg en alle verdere paragrawe word geskep met behulp van **DocumentBuilder** totdat [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) geroep word om die formatering van die lys met kolletjies te stop.

In Word-dokumente kan lyste uit tot nege vlakke bestaan. Lys opmaak vir elke vlak spesifiseer watter koeël of nommer gebruik word, links inkeping, spasie tussen die koeël en teks ens. Die volgende metodes verander die lys vlak en pas die nuwe vlak se formatering eienskappe:

- Om die lysvlak van die huidige paragraaf met een vlak te verhoog, bel [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Om die lysvlak van die huidige paragraaf met een vlak te verlaag, bel [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Die metodes verander die lys vlak en pas die formatering eienskappe van die nuwe vlak.

{{% alert color="primary" %}}

U kan ook die [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) - eienskap gebruik om die lysvlak vir die paragraaf te kry of in te stel. Die lys vlakke is genommer 0 tot 8.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n multilevel lys te bou:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Spesifiseer Formatering vir'n Lysvlak

Lys-vlak voorwerpe word outomaties geskep wanneer'n lys geskep word. Gebruik die eienskappe en metodes van die [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) klas om die formatering van individuele vlakke van'n lys te beheer.

## Herbegin Lys vir elke Afdeling

Jy kan'n lys vir elke afdeling herbegin deur die [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) eienskap te gebruik. Let daarop dat hierdie opsie slegs in RTF, DOC en DOCX dokumentformate ondersteun word. Hierdie opsie sal slegs in DOCX geskryf word as OoxmlCompliance hoër is as Ecma376.

Die volgende kode voorbeeld toon hoe om'n lys te skep en herlaai dit vir elke afdeling:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

