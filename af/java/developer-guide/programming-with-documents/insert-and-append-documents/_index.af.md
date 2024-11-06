---
title: Voeg Dokumente in en Voeg By Java
second_title: Aspose.Words vir Java
articleTitle: Voeg Dokumente in en Voeg By
linktitle: Voeg Dokumente in en Voeg By
description: "Kombineer dokumente in een: voeg of voeg'n dokument in'n nuwe of bestaande een met behulp van vind en vervang, voeg veld saam, boekmerk, of eenvoudig aan die dokument einde in Java."
type: docs
weight: 80
url: /af/java/insert-and-append-documents/
---

Soms is dit nodig om verskeie dokumente in een te kombineer. Jy kan dit met die hand doen of jy kan Aspose.Words invoeg of voeg funksie by.

Die invoegbewerking laat jou toe om die inhoud van voorheen geskepte dokumente in'n nuwe of bestaande een in te voeg.

Op sy beurt kan die append-funksie u slegs'n dokument aan die einde van'n ander dokument byvoeg.

Hierdie artikel verduidelik hoe om'n dokument op verskillende maniere by'n ander een in te voeg of by te voeg en beskryf die algemene eienskappe wat u kan toepas terwyl u dokumente invoeg of byvoeg.

## Voeg'n Dokument in

Soos hierbo genoem, word'n dokument in Aspose.Words voorgestel as'n boom van nodusse, en die operasie om een dokument in'n ander in te voeg, is om nodusse van die eerste dokumentboom na die tweede te kopieer.

U kan dokumente op verskillende plekke op verskillende maniere invoeg. U kan byvoorbeeld'n dokument invoeg deur'n vervangingsbewerking, 'n samesmeltingsveld tydens'n samesmeltingsbewerking of via'n boekmerk.

Jy kan ook die [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) of die [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) metode gebruik, wat soortgelyk is aan die invoeging van'n dokument in Microsoft Word, om'n hele dokument by die huidige wyserposisie in te voeg sonder enige vorige invoer.

Die volgende kode voorbeeld toon hoe om'n dokument in te voeg met behulp van die **InsertDocument** metode:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

Die volgende kode voorbeeld toon hoe om'n dokument in te voeg met behulp van die **InsertDocumentInline** metode:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Die volgende onderafdelings beskryf die opsies waartydens jy een dokument in'n ander kan invoeg.

### Voeg'n Dokument in Tydens Soek En Vervang Operasie {#insert-a-document-during-find-and-replace-operation}

U kan dokumente invoeg terwyl u bewerkings vind en vervang. Byvoorbeeld, 'n dokument kan paragrawe bevat met die teks [INTRODUCTION] en [CONCLUSION]. Maar in die finale dokument moet jy daardie paragrawe vervang met die inhoud wat van'n ander eksterne dokument verkry is. Om dit te bereik, sal jy'n hanteerder vir die vervangingsgeleentheid moet skep.

Die volgende kode voorbeeld toon hoe om'n hanteerder vir die vervanging gebeurtenis te skep om dit later in die invoeging proses te gebruik:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

Die volgende kode voorbeeld toon hoe voeg inhoud van een dokument in'n ander tydens'n vind en vervang operasie:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Voeg'n Dokument in Tydens Mail Merge Operasie {#insert-a-document-during-mail-merge-operation}

U kan'n dokument in'n samesmeltingsveld plaas tydens'n mail merge - bewerking. Byvoorbeeld, 'n mail merge sjabloon kan'n samesmelting veld soos [Opsomming] bevat. Maar in die finale dokument moet jy inhoud wat van'n ander eksterne dokument verkry is, in hierdie samesmeltingsveld invoeg. Om dit te bereik, sal jy'n hanteerder vir die samesmeltingsgeleentheid moet skep.

Die volgende kode voorbeeld toon hoe om'n hanteerder vir die samesmelting gebeurtenis te skep om dit later in die invoeging proses te gebruik:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

Die volgende kode voorbeeld toon hoe om'n dokument in die merge veld te voeg met behulp van die geskep handelaar:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Voeg'n Dokument By Boekmerk in

U kan'n tekslêer in'n dokument invoer en dit direk na'n boekmerk wat u in die dokument gedefinieer het, invoeg. Om dit te doen, skep'n boekmerk paragraaf waar jy wil hê die dokument moet ingevoeg word.

Die volgende kodering voorbeeld toon hoe om die inhoud van een dokument in'n boekmerk in'n ander dokument in te voeg:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Let daarop dat die boekmerk nie veelvuldige paragrawe of teks moet insluit wat jy wil hê hulle moet in jou finale gevolglike dokument verskyn nie.

{{% /alert %}}

## Voeg'n Dokument by

U het moontlik'n gebruiksgeval waar u addisionele bladsye van'n dokument tot aan die einde van'n bestaande dokument moet insluit. Om dit te doen, moet jy net die [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) metode noem om'n dokument aan die einde van'n ander een by te voeg.

{{% alert color="primary" %}}

Let daarop dat [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) is'n knoop vlak metode binne'n dokument. U kan byvoorbeeld'n paragraaf skep, formateringseienskappe stel en dit dan as kind by die liggaam voeg deur die **AppendChild** - metode te gebruik.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n dokument aan die einde van'n ander dokument te voeg:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Invoer En Voeg Nodes Handmatig {#import-and-insert-nodes-manually}

Aspose.Words laat jou toe om dokumente outomaties in te voeg en by te voeg sonder enige vorige invoervereistes. As jy egter'n spesifieke nodus van jou dokument, soos'n afdeling of'n paragraaf, moet invoeg of byvoeg, moet jy eers hierdie nodus handmatig invoer.

Wanneer jy een afdeling of paragraaf by'n ander moet voeg of byvoeg, moet jy in wese die nodusse van die eerste dokumentknoopboom in die tweede een invoer deur die [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) metode te gebruik. Na die invoer van jou nodes, moet jy die [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) metode gebruik om'n nuwe node na/voor die verwysing node in te voeg. Dit laat jou toe om die invoeging proses aan te pas deur die invoer van nodes van'n dokument en die invoeging van dit by gegewe posisies.

U kan ook die [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) - metode gebruik om'n nuwe gespesifiseerde nodus aan die einde van die lys van kindknope by te voeg, byvoorbeeld as u inhoud op die paragraafvlak wil byvoeg in plaas van op die afdelingvlak.

Die volgende kode voorbeeld toon hoe om handmatig invoer nodes en voeg hulle na'n spesifieke node met behulp van die **InsertAfter** metode:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

Die invoer skep'n nuwe knoop wat'n kopie van die oorspronklike knoop is en geskik is vir invoeging in die bestemming dokument.

{{% /alert %}}

Inhoud word in die bestemming dokument afdeling vir afdeling ingevoer, wat beteken dat instellings, soos bladsy opstel en koptekste of voetskrifte, tydens invoer bewaar word. Dit is ook nuttig om daarop te let dat jy formatering instellings kan definieer wanneer jy'n dokument invoeg of byvoeg om te spesifiseer hoe twee dokumente saamgevoeg word.

## Algemene Eienskappe vir Voeg Dokumente in en Voeg By {#common-properties-for-insert-and-append-documents}

Beide [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) en [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) metodes aanvaar [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) en [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) as insette parameters. Die **ImportFormatMode** laat jou toe om te beheer hoe dokument formatering saamgesmelt word wanneer jy inhoud van een dokument in'n ander invoer deur verskillende formaatmodusse soos [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING) en [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES) te kies. Met die **ImportFormatOptions** kan u verskillende invoeropsies kies, soos [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), en [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words laat jou toe om die visualisering van'n gevolglike dokument aan te pas wanneer twee dokumente saamgevoeg word in'n insetsel of byvoeging deur die [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) en [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) eienskappe te gebruik. Die **PageSetup** eienskap bevat al die eienskappe van'n afdeling soos [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), en ander. Die mees algemene gebruik geval is om die **SectionStart** eienskap te stel om te definieer of die bygevoeg inhoud sal verskyn op dieselfde bladsy of verdeel in'n nuwe een.

{{% alert color="primary" %}}

Let daarop dat die **Section** en **PageSetup** eienskappe nie beheer hoe twee dokumente saam ingevoeg/aangeheg word nie. Hulle laat jou net toe om die voorkoms van jou resultaatdokument te verander.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om een dokument by'n ander te voeg terwyl die inhoud van die verdeling oor twee bladsye:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
