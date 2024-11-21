---
title: Volg Veranderinge in'n Dokument
second_title: Aspose.Words vir Python via .NET
articleTitle: Volg Veranderinge in'n Dokument
linktitle: Volg Veranderinge in'n Dokument
description: "Volg veranderinge aan inhoud en formatering gemaak deur u of ander met behulp van Python. Toegang tot individuele hersienings in'n dokument en pas verskeie eienskappe aan hulle toe."
type: docs
weight: 270
url: /af/python-net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Die funksionaliteit van spoorveranderings, ook bekend as hersiening, laat jou toe om veranderinge aan inhoud en formatering wat deur jou of ander gebruikers gemaak is, op te spoor. Hierdie spoor verander funksie met Aspose.Words ondersteun spoor veranderinge in Microsoft Word. Met hierdie funksie kan u toegang tot individuele hersienings in u dokument kry en verskillende eienskappe daarop toepas.

Wanneer jy die track changes-funksie aktiveer, sal alle ingevoegde, verwyderde en gewysigde elemente van die dokument visueel uitgelig word met inligting oor deur wie, wanneer en wat verander is. Voorwerpe wat die inligting oor wat verander is, dra, word "opsporingsveranderinge"genoem. Veronderstel byvoorbeeld dat u'n dokument wil hersien en belangrike veranderinge wil aanbring – dit kan beteken dat u wysigings moet aanbring. Miskien moet u ook kommentaar invoeg om sommige van die veranderinge te bespreek. Dit is waar die opsporing van veranderinge in dokumente inkom.

Hierdie artikel verduidelik hoe om veranderinge wat deur baie beoordelaars op dieselfde dokument geskep is, te bestuur en op te spoor, sowel as die eienskappe vir die opsporing van veranderinge.

{{% alert color="primary" %}}

Let daarop dat die kommentaar funksie in Aspose.Words, sowel as in Microsoft Word, kan geassosieer word met die dop veranderinge. Onthou egter dat kommentaar heeltemal onafhanklik is van die dop van veranderinge.

{{% /alert %}}

## Wat Is'n Hersiening

Voordat ons in hersienings duik, laat ons die betekenis van hersienings verduidelik. A [Revision](https://reference.aspose.com/words/python-net/aspose.words/revision/) is'n verandering wat in een knoop van'n dokument voorkom terwyl'n hersieningsgroep, verteenwoordig deur die [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/) klas, 'n groep opeenvolgende hersienings is wat in baie nodusse van'n dokument voorkom. Basies is hersiening'n instrument om veranderinge op te spoor.

Hersienings word gebruik in die tracking changes funksie en binne die vergelyk dokumente funksie, waar hersienings verskyn as gevolg van vergelyking. So, hersienings binne die dop veranderinge funksie wys deur wie en wat verander is.

{{% alert color="primary" %}}

Let daarop dat Microsoft Word jou nie toelaat om individuele hersienings te sien nie, dit laat jou net toe om opeenvolgende hersienings as'n enkele entiteit te sien. Maar Aspose.Words los hierdie beperking op met die [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/) klas.

{{% /alert %}}

Aspose.Words ondersteun verskillende hersiening tipes, sowel as in Microsoft Word, soos Invoeging, Verwydering, FormatChange, StyleDefinitionChange, en Beweeg. Alle hersiening tipes word verteenwoordig met die [RevisionType](https://reference.aspose.com/words/python-net/aspose.words/revisiontype/) opsomming.

{{% alert color="primary" %}}

Let daarop dat hersienings'n soortgelyke resultaat as Microsoft Word het, maar Aspose.Words nie formatering tydens die opsporing van veranderinge opspoor nie.

{{% /alert %}}

## Begin En Stop Dop Veranderinge

Die redigering van'n dokument tel gewoonlik nie as'n hersiening totdat jy dit begin opspoor nie. Aspose.Words laat jou toe om alle veranderinge in jou dokument outomaties op te spoor met eenvoudige stappe. U kan die proses om veranderinge op te spoor maklik begin deur die [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) - metode te gebruik. As u die proses van die opsporing van veranderinge moet stop sodat toekomstige wysigings nie as hersienings beskou word nie, moet u die [stop_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/stop_track_revisions/) - metode gebruik.

{{% alert color="primary" %}}

Let daarop dat die [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) metode nie die status van die [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) eienskap verander nie en nie die waarde daarvan gebruik vir die doel van hersiening dop. Daarbenewens, as'n knoop is verskuif van een plek na'n ander binne die gevolg dokument, dan beweeg hersienings geskep sal word, insluitend beweeg-van en beweeg-na reeks.

{{% /alert %}}

Aan die einde van die proses van opsporingsveranderinge in u dokument, sal u die vermoë hê om selfs alle wysigings te aanvaar of te verwerp om die dokument na sy oorspronklike vorm terug te keer. Dit kan bereik word deur die [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) of [reject_all](https://reference.aspose.com/words/python-net/aspose.words/revisioncollection/reject_all/) metode te gebruik. Daarbenewens kan jy elke hersiening afsonderlik aanvaar of verwerp deur die [accept](https://reference.aspose.com/words/python-net/aspose.words/revision/accept/) of [reject](https://reference.aspose.com/words/python-net/aspose.words/revision/reject/) metode te gebruik.

Alle veranderinge sal vir een iterasie opgespoor word vanaf die oomblik dat jy die proses begin tot die oomblik dat jy dit stop. Die verband tussen verskillende iterasies word voorgestel as die volgende scenario: jy voltooi die opsporing proses, dan maak'n paar veranderinge, en begin die opsporing veranderinge weer. Met hierdie scenario sal alle veranderinge wat u nie aanvaar of verwerp het nie, weer vertoon word.

{{% alert color="primary" %}}

Let daarop dat die [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) metode is soortgelyk aan die "Aanvaar alle Veranderinge" in Microsoft Word.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om te werk met die dop veranderinge:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-AcceptAllRevisions.py" >}}

Die volgende kode voorbeeld toon hoe hersienings gegenereer word wanneer'n knoop binne'n gevolg dokument verskuif word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-MoveNodeInTrackedDocument.py" >}}

## Bestuur En Stoor Veranderinge as Wysigings

Met die vorige funksie vir opsporingsveranderinge kan u verstaan watter veranderinge in u dokument aangebring is en wie die veranderinge aangebring het. Terwyl jy met die [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) - funksie is, dwing jy enige veranderinge binne jou dokument om as hersienings gestoor te word.

Aspose.Words laat jou toe om te kyk of'n dokument'n hersiening het of nie deur die [has_revision](https://reference.aspose.com/words/python-net/aspose.words/document/has_revisions/) eienskap te gebruik. As u nie die veranderinge in u dokument outomaties hoef op te spoor deur die start_track_revisions-en stop_track_revisions-metodes nie, kan u die [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) - eienskap gebruik om te kyk of die veranderinge opgespoor word terwyl u'n dokument in Microsoft Word redigeer en as hersienings gestoor word.

Die [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) funksie maak hersienings in plaas van werklike DOM veranderinge. Maar die hersienings self is apart. Byvoorbeeld, as jy enige paragraaf uitvee, Aspose.Words maak dit as'n hersiening, merk dit as verwydering, in plaas daarvan om dit uit te vee.

Daarbenewens, Aspose.Words kan jy kyk of'n voorwerp is ingevoeg, verwyder, of verander formatering met behulp van die [is_delete_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_delete_revision/), [is_format_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_format_revision/), [is_insert_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_insert_revision/), [is_move_from_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_from_revision/), en [is_move_to_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_to_revision/) eienskappe.

{{% alert color="primary" %}}

Let daarop dat daar geen verband is tussen die hersienings self en die [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) eienskap nie. Daarbenewens kan u hersienings aanvaar/verwerp, ongeag die funksie vir opsporingsveranderinge.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om verskillende eienskappe met hersienings toe te pas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShapeRevision.py" >}}
