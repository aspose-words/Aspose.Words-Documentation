---
title: Plaas Checkboxes, Teks Invoer of Beelde tydens Mail Merge
second_title: Aspose.Words vir C++
articleTitle: Voeg Checkboxes, Teks Invoer, Of Beelde
linktitle: Voeg Checkboxes, Teks Invoer, Of Beelde
description: "Voeg merkblokkies of teksinvoervelde in tydens Mail Merge met C++. Voeg ook beelde van'n Databasis in tydens Mail Merge in C++."
type: docs
weight: 40
url: /af/cpp/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Die samesmelting enjin neem'n dokument as insette, soek vir `MERGEFIELD` velde in dit, en vervang hulle met die data verkry uit die data bron. Gewoonlik word gewone teks en HTML ingevoeg, maar Aspose.Words gebruikers kan ook'n dokument genereer wat meer ongewone scenario's vir Mail Merge velde hanteer.

Kragtige Aspose.Words funksionaliteit laat jou toe om die Mail Merge proses uit te brei:

- voeg merkblokkies en teksinvoervormvelde in die dokument in tydens a mail merge
- voeg beelde van enige persoonlike stoor (lêers, BLOB velde, ens.)

## Voeg Checkboxes en Teks Invoer gedurende Mail Merge

Soms is dit nodig om'n Mail Merge operasie uit te voer sodat nie teks vervang word in die samesmelting veld, maar'n boks of teks invoer veld. Alhoewel dit nie die algemeenste scenario is nie, is dit baie handig vir sommige take.

Die volgende skermkiekie van'n Word dokument toon'n sjabloon met merge velde:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Hierdie skermkiekie van die Word-dokument hieronder wys die reeds gegenereerde dokument:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Let daarop dat sommige velde vervang is met gewone teks, sommige velde is vervang met boks vorm velde, en die `Subject` veld is vervang met'n teks invoer veld.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om te voeg boks en invoer teks velde in'n dokument tydens'n mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## Voeg Beelde in tydens Mail Merge

Wanneer u'n Mail Merge - bewerking uitvoer, kan u beelde uit die databasis in die dokument invoeg met behulp van spesiale beeld Mail Merge - velde. Die beeld Mail Merge veld is'n saamsmelt veld met die naam Beeld:MyFieldName.

### Voeg Beelde van'n Databasis in

Tydens'n mail merge, wanneer'n beeld Mail Merge veld in'n dokument teëgekom word, word die [FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/) gebeurtenis afgevuur. U kan op hierdie gebeurtenis reageer om'n lêernaam, stroom of beeldvoorwerp na die Mail Merge - enjin terug te stuur sodat dit in die dokument ingevoeg kan word.

Die volgende kode voorbeeld toon hoe om beelde gestoor in'n databasis BLOB veld in'n verslag in te voeg:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### Stel Beeldeienskappe gedurende Mail Merge

Terwyl jy'n beeldversmelte veld saamvoeg, moet jy dalk soms verskeie beeldeienskappe beheer, soos [WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/).

Tans, met behulp van [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args) jy kan slegs stel beeld breedte of hoogte eienskappe, onderskeidelik. Om hierdie probleem te oorkom, bied Aspose.Words die [Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/) eienskap, wat dit makliker maak om volle beheer oor die ingevoegde beeld of enige ander vorm te kry.

Die volgende kode voorbeeld toon hoe om verskeie beeld eienskappe stel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
