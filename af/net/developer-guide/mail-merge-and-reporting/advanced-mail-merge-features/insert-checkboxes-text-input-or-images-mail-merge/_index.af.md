---
title: Voeg Checkboxes, Teks Invoer of Beelde gedurende Mail Merge
second_title: Aspose.Words vir .NET
articleTitle: Voeg Checkboxes, Teks Invoer, Of Beelde
linktitle: Voeg Checkboxes, Teks Invoer, Of Beelde
description: "Voeg merkblokkies of teksinvoervelde in tydens Mail Merge met C#. Voeg ook beelde van'n Databasis in tydens Mail Merge in C#."
type: docs
weight: 40
url: /af/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
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

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Voeg Beelde in tydens Mail Merge

Wanneer u'n Mail Merge - bewerking uitvoer, kan u beelde uit die databasis in die dokument invoeg met behulp van spesiale beeld Mail Merge - velde. Die beeld Mail Merge veld is'n samesmelting veld genoem Beeld:MyFieldName.

### Voeg Beelde van'n Databasis in

Tydens'n mail merge, wanneer'n beeld Mail Merge veld in'n dokument teëgekom word, word die [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/) gebeurtenis afgevuur. U kan op hierdie gebeurtenis reageer om'n lêernaam, stroom of beeldvoorwerp na die Mail Merge - enjin terug te stuur sodat dit in die dokument ingevoeg kan word.

Die volgende kode voorbeeld toon hoe om beelde gestoor in'n databasis BLOB veld in'n verslag in te voeg:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Stel Beeldeienskappe gedurende Mail Merge

Terwyl jy'n beeldversmelte veld saamvoeg, moet jy dalk soms verskeie beeldeienskappe beheer, soos [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

Tans, met behulp van [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/) jy kan slegs stel beeld breedte of hoogte eienskappe, onderskeidelik. Om hierdie probleem te oorkom, bied Aspose.Words die [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/) eienskap, wat dit makliker maak om volle beheer oor die ingevoegde beeld of enige ander vorm te kry.

Die volgende kode voorbeeld toon hoe om verskeie beeld eienskappe stel:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
