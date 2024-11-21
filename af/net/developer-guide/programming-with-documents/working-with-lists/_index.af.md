---
title: Werk Met Lyste in C#
second_title: Aspose.Words vir .NET
articleTitle: Werk met Lyste
linktitle: Werk met Lyste
description: "Inleiding tot nommering formatering funksie in Aspose.Words vir .NET."
type: docs
weight: 200
url: /af/net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

'n lys in'n Microsoft Word dokument is'n stel paragraaf formatering eienskappe. Lyste kan in dokumente gebruik word om teks te struktureer, te rangskik en te beklemtoon. Lyste is'n goeie manier om data in dokumente te organiseer op'n manier wat dit vir lesers maklik maak om sleutelpunte te absorbeer en te verstaan.

Elke lys kan tot 9 vlakke hê, en formatering eienskappe soos nommer styl, begin waarde, inkeping, blad posisie, en ander word afsonderlik vir elke vlak gedefinieer.

In Aspose.Words word die werk met lyste verteenwoordig deur die [Lists](https://reference.aspose.com/words/net/aspose.words.lists/) naamruimte. Die [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) voorwerp behoort egter altyd aan die [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/).

Hierdie artikel beskryf programmaties werk met lyste met behulp van Aspose.Words.

## Skep Lyste Deur Lysformatering Toe Te Pas

Aspose.Words laat die maklike skepping van lyste toe deur lysformatering toe te pas. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) verskaf die [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) eienskap wat'n **ListFormat** voorwerp terugkeer. Hierdie voorwerp het verskeie metodes om'n lys te begin en te beëindig en om die inkeping te verhoog/verminder. Daar is twee algemene tipes lyste in Microsoft Word: bullet en genommer:

- Om'n lys met kolletjies te begin, bel [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)
- Om'n genommerde lys te begin, bel [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

Die koeël of nommer en formatering word by die huidige paragraaf gevoeg en alle verdere paragrawe word geskep met behulp van **DocumentBuilder** totdat [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) geroep word om die formatering van die lys met kolletjies te stop.

In Word-dokumente kan lyste uit tot nege vlakke bestaan. Lys opmaak vir elke vlak spesifiseer watter koeël of nommer gebruik word, links inkeping, spasie tussen die koeël en teks ens. Die volgende metodes verander die lys vlak en pas die nuwe vlak se formatering eienskappe:

- Om die lysvlak van die huidige paragraaf met een vlak te verhoog, bel [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
- Om die lysvlak van die huidige paragraaf met een vlak te verlaag, bel [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

U kan ook die [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) - eienskap gebruik om die lysvlak vir die paragraaf te kry of in te stel.

{{% alert color="primary" %}}

Die lys vlakke is genommer 0 tot 8.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n multilevel lys te bou:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Spesifiseer Formatering vir'n Lysvlak

Lys-vlak voorwerpe word outomaties geskep wanneer'n lys geskep word. Gebruik die eienskappe en metodes van die [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) klas om die formatering van individuele vlakke van'n lys te beheer.

## Herbegin Lys vir elke Afdeling

Jy kan'n lys vir elke afdeling herbegin deur die [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/) eienskap te gebruik. Let daarop dat hierdie opsie slegs in RTF, DOC en DOCX dokumentformate ondersteun word. Hierdie opsie sal slegs in DOCX geskryf word as OoxmlCompliance hoër is as Ecma376.

Die volgende kode voorbeeld toon hoe om'n lys te skep en herlaai dit vir elke afdeling:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
