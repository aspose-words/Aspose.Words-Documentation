---
title: Mail Merge Sjabloon van Mustache Sintaksis
second_title: Aspose.Words vir Java
articleTitle: Mail Merge Sjabloon van Mustache Sintaksis
linktitle: Mail Merge Sjabloon van Mustache Sintaksis
type: docs
description: "Skep templates met Mustache sintaksis. Mustache sintaksis is die enigste opsie om te gebruik met templates wat nie velde bevat nie (HTML of TXT). Met Woord templates, jy het twee opsies: velde of Mustache sintaksis met behulp van Java."
keywords: "mail merge template mustache syntax java, Mail Merge java, mustache syntax java"
weight: 40
url: /af/java/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words laat jou toe om templates met mustache sintaksis te skep bykomend tot die bekende templates. A Mustache is'n alternatiewe variant van sjabloon sintaksis wat bestaan uit tag name ingesluit deur en word ondersteun deur'n model voorwerp wat die data vir die sjabloon bevat.

Die Mustache sintaksis is die enigste opsie om te gebruik met templates wat nie velde bevat nie, soos HTML en TXT templates. Met Word templates het jy twee opsies om velde of Mustache sintaksis te gebruik.

Die Mustache sintaksis ondersteun *foreach* tag, wat'n alternatief is vir die gebruik van Mail Merge met streke. So die voordeel is dat jy mustache sintaksis kan gebruik as jy om een of ander rede nie in staat is of eenvoudig nie wil saamsmelt velde en saamsmelt streke gebruik.

Jy kan ook Mail Merge velde kombineer met'n paar bykomende velde met behulp van die *foreach* tag soos in die prentjie hieronder getoon.

<img src="mustache-syntax.png" alt="mustache_syntax_aspose_words_java" style="width:800px"/>

## Skep'n Mustache Sjabloon

Die eerste belangrike punt om te verduidelik is dat Mustache nie'n sjabloon enjin is nie. Mustache is'n ander sintaksvariant wat beskikbaar is vir enige sjabloon in a [load format](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) ondersteun deur Aspose.Words. Daarom kan jy so'n sjabloon programmaties sowel as deur'n koppelvlak skep, jy hoef net sekere sintaksis in te sluit en aan die Mustache spesifikasie te voldoen.

Kom ons veronderstel dat jy dieselfde e-pos aan 50 ontvangers moet stuur om die groet met hul ooreenstemmende voorname te personaliseer. Jy kan die ontvanger se voornaam vervang deur'n plekhouer soos volg:

> Dear {{FirstName}}
>
> I hereby...

Die vraag hier: hoe kan jy 50 e-posse van 1 enkel Mustache sjabloon skep? Om dit te beantwoord, moet jy'n Mail Merge met streke uitvoer om die krullerige hakies vir plekhouers in die sjabloon met werklike data te vul en'n uitsetdokument te genereer.

<img src="mustache-template.png" alt="mustache_template_aspose_words_java" style="width:650px"/>

{{% alert color="primary" %}}

Soos u uit die voorbeeld hierbo sien, moet u in Mustache krullerige draadjies gebruik vir plekhouers wat soos a mustache lyk as u die krullerige draadjies 90 grade kloksgewys draai.

{{% /alert %}}

## Werk met Mustache Sintaksis

Mustache word as'n logika-minder orde voorgestel omdat dit geen spesifieke beheervloei stellings soos *for* lusse en *if* en *else* voorwaardes het nie. Maar jy kan die afdeling tags verwerking lyste en lambda's gebruik om voorwaardelike evaluering en lus te bereik. Om die Mustache sintaksis in die Mail Merge operasie in te sluit, moet u die [UseNonMergeFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getUseNonMergeFields) eienskap gebruik en die waarde daarvan op *True* stel.

Die volgende kode voorbeeld toon hoe om die Mustache tags vervang met spesifieke data:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeUsingMustacheTemplateSyntax-MustacheSyntaxUsingDataTable.java" >}}

Jy kan die verskil tussen die dokument sien voor die uitvoering van die Mail Merge met streke saam met die toepassing van die **UseNonMergeFields** eiendom:

<img src="mustache-syntax-1.png" alt="mustache_syntax_aspose_words_java" style="width:400px"/>

{{% alert color="primary" %}}

'n afdeling begin met'n pond en eindig met'n slash. Dit is, `{{#foreach list}}` begin'n" foreach " afdeling terwyl `{{/foreach list}}` eindig dit.

{{% /alert %}}

En na die toepassing van die Mail Merge met streke:

<img src="mustache-syntax-2.png" alt="mustache_syntax_result_aspose_words_java" style="width:300px"/>

## Gebruik `IF` Velde Om'n Mail Merge Intelligente Te Maak

Aspose.Words laat jou toe om Mail Merge velde en Mustache tags met die `IF` verklaring te gebruik. Die `IF` velde kan in enige Mail Merge dokument gebruik word om ongewenste spasies en komma's te onderdruk as'n veld leeg is.

Die `IF` veldformule word hieronder getoon:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Hier kan die Voorwaarde'n samesmelting veld of'n Mustache tag wees.

Byvoorbeeld, jy kan `IF` velde gebruik as jy "sy", "haar", "hy" of "sy" moet invoeg, afhangende van die geslag soos volg:

**{ IF { MERGEFIELD Gender } = "MALE" "ware teks" "valse teks"}**

**{ IF "{{ GENDER }}" = "MALE" "ware teks" "valse teks"}**

Die volgende kode voorbeeld toon hoe om'n Mail Merge operasie met Mustache tags en `IF` velde uit te voer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeUsingMustacheTemplateSyntax-UseOfIfElseMustacheSyntax.java" >}}

U kan die verskil tussen die dokument sien voordat u die **UseNonMergeFields** - eienskap toepas:

<img src="mustache-if-field-1.png" alt="mustache_if_field_aspose_words_java" style="width:800px"/>

En na die toepassing van die **UseNonMergeFields** eienskap:

<img src="mustache-if-field-2.png" alt="mustache_if_field_2_aspose_words_java" style="width:800px"/>
