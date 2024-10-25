---
title: Werk Met Lyste in C++
second_title: Aspose.Words vir C++
articleTitle: Werk Met Lyste
linktitle: Werk Met Lyste
description: "Inleiding tot nommering formatering funksie in Aspose.Words vir C++."
type: docs
weight: 200
url: /af/cpp/working-with-lists/
---

'n lys in'n Microsoft Word dokument is'n stel lys formatering eienskappe. Lyste kan in u dokumente gebruik word om teks te formateer, te rangskik en te beklemtoon. Lyste is'n goeie manier om data in dokumente te organiseer, en dit maak dit makliker vir lesers om sleutelpunte te verstaan.

Elke lys kan tot 9 vlakke hê en formatering eienskappe, soos nommer styl, begin waarde, indent, blad posisie ens word afsonderlik vir elke vlak gedefinieer.

In Aspose.Words word die werk met lyste verteenwoordig deur die [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/) naamruimte. Die [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) voorwerp behoort egter altyd tot die [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/) versameling.

Hierdie onderwerp beskryf hoe om programmaties te werk met lyste met behulp van Aspose.Words.

## Spesifiseer Formatering vir'n Lysvlak

Lys-vlak voorwerpe word outomaties geskep wanneer'n lys geskep word. Gebruik die eienskappe en metodes van die [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) klas om die formatering van individuele vlakke van'n lys te beheer.

## Herbegin Lys vir elke Afdeling

Jy kan'n lys vir elke afdeling herbegin deur die [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/) eienskap te gebruik. Let daarop dat hierdie opsie slegs in RTF, DOC en DOCX dokumentformate ondersteun word. Hierdie opsie sal slegs in DOCX geskryf word as OoxmlCompliance hoër is as Ecma376.

Die volgende kode voorbeeld toon hoe om'n lys te skep en herlaai dit vir elke afdeling:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
