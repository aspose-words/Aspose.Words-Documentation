---
title: Voeg Checkboxes, Teks Invoer of Beelde gedurende Mail Merge
second_title: Aspose.Words vir Java
articleTitle: Voeg Checkboxes, Teks Invoer, Of Beelde
linktitle: Voeg Checkboxes, Teks Invoer, Of Beelde
description: "Voeg checkboxes of teks invoer velde tydens Mail Merge met behulp van Java. Voeg ook beelde van'n Databasis in tydens Mail Merge in Java."
type: docs
weight: 20
url: /af/java/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Die samesmelting enjin neem'n dokument as insette, soek vir `MERGEFIELD` velde in dit, en vervang hulle met die data verkry uit die data bron. Gewoonlik word gewone teks en HTML ingevoeg, maar Aspose.Words gebruikers kan ook'n dokument genereer wat meer ongewone scenario's vir Mail Merge velde hanteer.

Kragtige Aspose.Words funksionaliteit laat jou toe om die Mail Merge proses uit te brei:

- voeg checkboxes en teks invoer vorm velde in die dokument gedurende'n mail merge
- voeg beelde van enige persoonlike stoor (lêers, BLOB velde, ens.)

## Voeg Checkboxes en Teks Invoer gedurende Mail Merge

Soms is dit nodig om'n Mail Merge operasie uit te voer sodat nie teks vervang word in die samesmelting veld, maar'n checkbox of teks invoer veld. Alhoewel dit nie die algemeenste scenario is nie, is dit baie handig vir sommige take.

Die volgende skermkiekie van'n Word dokument toon'n sjabloon met merge velde:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-1](insert-checkboxes-html-or-images-during-mail-merge_1.jpeg)

Hierdie skermkiekie van die Word-dokument hieronder wys die reeds gegenereerde dokument:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-2](insert-checkboxes-html-or-images-during-mail-merge-2.png)

{{% alert color="primary" %}}

Let daarop dat sommige velde vervang is met gewone teks, sommige velde vervang is met checkbox vorm velde, en die `Subject` veld is vervang met'n teks invoer veld.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om checkboxes en invoer teks velde in'n dokument tydens'n mail merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-HandleMergeField.java" >}}

## Voeg Beelde in tydens Mail Merge

Wanneer u'n Mail Merge - bewerking uitvoer, kan u beelde uit die databasis in die dokument invoeg met behulp van spesiale beeld Mail Merge - velde. Die beeld Mail Merge veld is'n samesmelting veld genoem Beeld:MyFieldName.

### Voeg Beelde van'n Databasis in

Tydens'n mail merge, wanneer'n beeld Mail Merge veld in'n dokument teëgekom word, word die [FieldMergingCallback](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldMergingCallback) gebeurtenis afgevuur. U kan op hierdie gebeurtenis reageer om'n lêernaam, stroom of beeldvoorwerp na die Mail Merge - enjin terug te stuur sodat dit in die dokument ingevoeg kan word.

Die volgende kode voorbeeld toon hoe om beelde gestoor in'n databasis BLOB veld in'n verslag in te voeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageFromBlob.java" >}}

### Stel Beeldeienskappe gedurende Mail Merge

Terwyl jy'n beeldversmelte veld saamvoeg, moet jy dalk soms verskeie beeldeienskappe beheer, soos [WrapType](https://reference.aspose.com/words/java/com.aspose.words/wraptype/).

Tans, met behulp van [ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/) jy kan slegs stel beeld breedte of hoogte eienskappe, onderskeidelik. Om hierdie probleem te oorkom, bied Aspose.Words die [Shape](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/#getShape) eienskap, wat dit makliker maak om volle beheer oor die ingevoegde beeld of enige ander vorm te kry.

Die volgende kode voorbeeld toon hoe om verskeie beeld eienskappe stel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-MailMergeImageField.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-FieldMergingHandler.java" >}}

