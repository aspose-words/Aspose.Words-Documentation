---
title: Voeg Dokumente in en Voeg By
second_title: Aspose.Words vir Python via .NET
articleTitle: Voeg Dokumente in en Voeg By
linktitle: Voeg Dokumente in en Voeg By
description: "Kombineer dokumente in een: voeg of voeg'n dokument in'n nuwe of bestaande een met behulp van vind en vervang, voeg veld saam, boekmerk, of eenvoudig aan die dokument einde in Python."
type: docs
weight: 80
url: /af/python-net/insert-and-append-documents/
---

Soms is dit nodig om verskeie dokumente in een te kombineer. Jy kan dit met die hand doen of jy kan Aspose.Words invoeg of voeg funksie by.

Die invoegbewerking laat jou toe om die inhoud van voorheen geskepte dokumente in'n nuwe of bestaande een in te voeg.

Op sy beurt kan die append-funksie u slegs'n dokument aan die einde van'n ander dokument byvoeg.

Hierdie artikel verduidelik hoe om'n dokument op verskillende maniere by'n ander een in te voeg of by te voeg en beskryf die algemene eienskappe wat u kan toepas terwyl u dokumente invoeg of byvoeg.

## Voeg'n Dokument in

Soos hierbo genoem, word'n dokument in Aspose.Words voorgestel as'n boom van nodusse, en die operasie om een dokument in'n ander in te voeg, is om nodusse van die eerste dokumentboom na die tweede te kopieer.

U kan dokumente op verskillende plekke op verskillende maniere invoeg. U kan byvoorbeeld'n dokument invoeg deur'n vervangingsbewerking, 'n samesmeltingsveld tydens'n samesmeltingsbewerking of via'n boekmerk.

Jy kan ook die [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) of [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) metode gebruik, wat soortgelyk is aan die invoeging van'n dokument in Microsoft Word, om'n hele dokument by die huidige wyserposisie in te voeg sonder enige vorige invoer.

Die volgende kode voorbeeld toon hoe om'n dokument in te voeg met behulp van die **insert_document** metode:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

Die volgende kode voorbeeld toon hoe om'n dokument in te voeg met behulp van die **insert_document_inline** metode:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

Die volgende onderafdelings beskryf die opsies waartydens jy een dokument in'n ander kan invoeg.

### Voeg'n Dokument By Boekmerk in

U kan'n tekslêer in'n dokument invoer en dit direk na'n boekmerk wat u in die dokument gedefinieer het, invoeg. Om dit te doen, skep'n boekmerk paragraaf waar jy wil hê die dokument moet ingevoeg word.

Die volgende kodering voorbeeld toon hoe om die inhoud van een dokument in'n boekmerk in'n ander dokument in te voeg:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Let daarop dat die boekmerk nie veelvuldige paragrawe of teks moet insluit wat jy wil hê hulle moet in jou finale gevolglike dokument verskyn nie.

{{% /alert %}}

## Voeg'n Dokument by

U het moontlik'n gebruiksgeval waar u addisionele bladsye van'n dokument tot aan die einde van'n bestaande dokument moet insluit. Om dit te doen, moet jy net die [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) metode noem om'n dokument aan die einde van'n ander een by te voeg.

{{% alert color="primary" %}}

Let daarop dat [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) is'n knoop vlak metode binne'n dokument. U kan byvoorbeeld'n paragraaf skep, formateringseienskappe stel en dit dan as kind by die liggaam voeg deur die [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) - metode te gebruik.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n dokument aan die einde van'n ander dokument te voeg:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Invoer En Voeg Nodes Handmatig

Aspose.Words laat jou toe om dokumente outomaties in te voeg en by te voeg sonder enige vorige invoervereistes. As jy egter'n spesifieke nodus van jou dokument, soos'n afdeling of'n paragraaf, moet invoeg of byvoeg, moet jy eers hierdie nodus handmatig invoer.

Wanneer jy een afdeling of paragraaf by'n ander moet voeg of byvoeg, moet jy in wese die nodusse van die eerste dokumentknoopboom in die tweede een invoer deur die [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) - metode te gebruik. Na die invoer van jou nodes, moet jy die [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) / [insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) metode gebruik om'n nuwe node na/voor die verwysing node in te voeg. Dit laat jou toe om die invoeging proses aan te pas deur die invoer van nodes van'n dokument en die invoeging van dit by gegewe posisies.

U kan ook die [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) - metode gebruik om'n nuwe gespesifiseerde nodus aan die einde van die lys van kindknope by te voeg, byvoorbeeld as u inhoud op die paragraafvlak wil byvoeg in plaas van op die afdelingvlak.

Die volgende kode voorbeeld toon hoe om handmatig invoer nodes en voeg hulle na'n spesifieke node met behulp van die [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) metode:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

Die invoer skep'n nuwe knoop wat'n kopie van die oorspronklike knoop is en geskik is vir invoeging in die bestemming dokument.

{{% /alert %}}

Inhoud word in die bestemming dokument afdeling vir afdeling ingevoer, wat beteken dat instellings, soos bladsy opstel en koptekste of voetskrifte, tydens invoer bewaar word. Dit is ook nuttig om daarop te let dat jy formatering instellings kan definieer wanneer jy'n dokument invoeg of byvoeg om te spesifiseer hoe twee dokumente saamgevoeg word.

## Algemene Eienskappe Vir Die Invoeging En Byvoeging Van Dokumente

Beide [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) en [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) metodes aanvaar [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) en [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) as insette parameters. Die [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) laat jou toe om te beheer hoe dokument formatering saamgesmelt word wanneer jy inhoud van een dokument in'n ander invoer deur verskillende formaatmodusse soos [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) en [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles) te kies. Met die [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) kan u verskillende invoeropsies kies, soos [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/), en [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words laat jou toe om die visualisering van'n gevolglike dokument aan te pas wanneer twee dokumente saamgevoeg word in'n insetsel of byvoeging deur die [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) en [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) te gebruik. Die [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) eienskap bevat al die eienskappe van'n afdeling soos [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/), en ander. Die mees algemene gebruik geval is om die [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) eienskap te stel om te definieer of die bygevoeg inhoud sal verskyn op dieselfde bladsy of verdeel in'n nuwe een.

{{% alert color="primary" %}}

Let daarop dat die [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) en [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) nie beheer hoe twee dokumente saam ingevoeg/aangeheg word nie. Hulle laat jou net toe om die voorkoms van jou resultaatdokument te verander.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om een dokument by'n ander te voeg terwyl die inhoud van die verdeling oor twee bladsye:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
