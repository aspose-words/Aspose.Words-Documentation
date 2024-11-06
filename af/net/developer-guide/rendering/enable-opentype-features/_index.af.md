---
title: Aktiveer OpenType Kenmerke in C#
second_title: Aspose.Words vir .NET
articleTitle: Aktiveer OpenType Kenmerke
linktitle: Aktiveer OpenType Kenmerke
description: "Gevorderde tipografie funksies met behulp van C#."
type: docs
weight: 25
url: /af/net/enable-opentype-features/
---

OpenType is'n lettertipe formaat, bekendgestel om beter ondersteuning vir internasionale tale en skryfstelsels te bied in vergelyking met PostScript en TrueType. Die uitleg kenmerke van OpenType is algemeen bekend as OpenType kenmerke. Aspose.Words.Vorming.HarfBuzz pakket bied ondersteuning vir OpenType funksies in Aspose.Words met behulp van HarfBuzz teks vorm enjin.

Aspose.Words is in staat om teks vormer voorwerpe wat ekstern verskaf gebruik. 'n teksvormer verteenwoordig'n lettertipe en bereken die vorm inligting vir'n teks. 'n dokument verwys gewoonlik na verskeie lettertipes, dus is'n teksvormfabriek nodig. Hierdie pakket bevat'n implementering van'n teks vorm fabriek gebruik deur Aspose.Words.Uitleg.LayoutOptions.TextShaperFactory eienskap.

{{% alert color="primary" %}}

Teksvorming word slegs uitgevoer wanneer na PDF of XPS formate uitgevoer word.

{{% /alert %}}

In'n tipiese aansoek word'n enkele geval van'n teks vorm fabriek gedeel tussen alle dokument gevalle. Wanneer teks shaper geskep word, word'n lettertipe lêer verkry. Die ontleding van'n lettertipe lêer is'n duur operasie dus caching word aanbeveel. Aspose.Words implementeer BasicTextShaperCache klas wat teks shaper factory implementering en caches teks shaper gevalle teruggekeer deur die wrapped factory.

Die volgende kode voorbeeld wys jou hoe om te draai op ondersteuning van OpenType funksies.

{{< gist "aspose-words-gists" "7840fae2297fa05bba1ca0608cb81bf1" "open-type-features.cs" >}}
