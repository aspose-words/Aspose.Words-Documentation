---
title: Werk Met Lyste in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Werk met Lyste
linktitle: Werk met Lyste
description: "Skep, spesifiseer formatering en herbegin lyste in'n dokument met behulp van Python."
type: docs
weight: 200
url: /af/python-net/working-with-lists/
---

'n lys in'n Microsoft Word dokument is'n stel lys formatering eienskappe. Lyste kan in u dokumente gebruik word om teks te formateer, te rangskik en te beklemtoon. Lyste is'n goeie manier om data in dokumente te organiseer, en dit maak dit makliker vir lesers om sleutelpunte te verstaan.

Elke lys kan tot 9 vlakke hê en formatering eienskappe, soos nommer styl, begin waarde, indent, blad posisie ens word afsonderlik vir elke vlak gedefinieer.

In Aspose.Words word die werk met lyste verteenwoordig deur die [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/) module. Die [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) voorwerp behoort egter altyd tot die [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/) versameling.

Hierdie onderwerp beskryf hoe om programmaties te werk met lyste met behulp van Aspose.Words.

## Skep Lyste deur Lysformatering Toe Te Pas

Aspose.Words laat die maklike skepping van lyste toe deur lysformatering toe te pas. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) verskaf die [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) eienskap wat'n [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/) voorwerp terugkeer. Hierdie voorwerp het verskeie metodes om'n lys te begin en te beëindig en om die inkeping te verhoog/verminder. Daar is twee algemene tipes lyste in Microsoft Word: met kolletjies en genommer.

- Om'n lys met kolletjies te begin, bel [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- Om'n genommerde lys te begin, bel [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

Die koeël of nommer en formatering word by die huidige paragraaf gevoeg en alle verdere paragrawe word geskep met behulp van [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) totdat [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) geroep word om die formatering van die lys met kolletjies te stop.

In Word-dokumente kan lyste uit tot nege vlakke bestaan. Lys opmaak vir elke vlak spesifiseer watter koeël of nommer gebruik word, links inkeping, spasie tussen die koeël en teks ens. Die volgende metodes verander die lys vlak en pas die nuwe vlak se formatering eienskappe:

- Om die lysvlak van die huidige paragraaf met een vlak te verhoog, bel [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- Om die lysvlak van die huidige paragraaf met een vlak te verlaag, bel [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

Die metodes verander die lys vlak en pas die formatering eienskappe van die nuwe vlak.

{{% alert color="primary" %}}

U kan ook die [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) - eienskap gebruik om die lysvlak vir die paragraaf te kry of in te stel. Die lys vlakke is genommer 0 tot 8.

{{% /alert %}}

Hieronder voorbeeld toon hoe om'n multilevel lys te bou.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Spesifiseer Formatering vir'n Lysvlak

Lys-vlak voorwerpe word outomaties geskep wanneer'n lys geskep word. Gebruik die eienskappe en metodes van die [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) klas om die formatering van individuele vlakke van'n lys te beheer.

## Herbegin Lys vir elke Afdeling

Jy kan'n lys vir elke afdeling herbegin deur die [is_restart_at_each_section property](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/) eienskap te gebruik. Let daarop dat hierdie opsie slegs in RTF, DOC en DOCX dokumentformate ondersteun word. Hierdie opsie sal slegs in DOCX geskryf word as OoxmlCompliance hoër is as Ecma376.

Die volgende kode voorbeeld toon hoe om'n lys te skep en herlaai dit vir elke afdeling:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
