---
title: Eenvoudige Mail Merge Operasie in C++
second_title: Aspose.Words vir C++
articleTitle: Eenvoudige Mail Merge Operasie
linktitle: Eenvoudige Mail Merge Operasie
type: docs
description: "'n eenvoudige Mail Merge word gebruik om die Mail Merge velde binne jou sjabloon te vul met die vereiste data van jou databron – dit is soortgelyk aan die klassieke Mail Merge in Microsoft Word. Voeg een of meer saamvoeg velde in jou sjabloon en dan voer die eenvoudige Mail Merge operasie."
keywords: "how to execute Mail Merge c++"
weight: 10
url: /af/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

'n eenvoudige Mail Merge word gebruik om die Mail Merge velde binne jou sjabloon te vul met die vereiste data van jou databron (enkel tabel verteenwoordiging). So dit is soortgelyk aan die klassieke Mail Merge in Microsoft Word.

U kan een of meer samesmeltingsvelde in u sjabloon byvoeg en dan die eenvoudige Mail Merge - bewerking uitvoer. Dit word aanbeveel om dit te gebruik as u sjabloon geen samesmeltingsgebiede bevat nie.

Die belangrikste beperking van die gebruik van hierdie tipe is dat die hele dokumentinhoud vir elke rekord in die databron herhaal sal word.

## Hoe Om'n Eenvoudige Mail Merge Operasie Uit Te Voer

Sodra u sjabloon gereed is, kan u die eenvoudige Mail Merge - bewerking begin uitvoer. Aspose.Words laat jou toe om'n eenvoudige Mail Merge operasie uit te voer met behulp van verskillende [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) metodes wat verskeie data voorwerpe as die databron aanvaar.

Die volgende kode voorbeeld toon hoe om'n eenvoudige Mail Merge operasie uit te voer met behulp van een van die [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) metode:

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

U kan die verskil tussen die dokument sien voordat u simple mail mergeuitvoer:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

En na die uitvoering van eenvoudige mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Hoe Om Verskeie Saamgesmelte Dokumente Te Skep

In Aspose.Words, die standaard Mail Merge operasie vul slegs'n enkele dokument met inhoud van jou data bron. So, jy sal die Mail Merge operasie baie keer moet uitvoer om'n paar saamgesmelte dokumente as'n uitset te skep.

Die volgende kode voorbeeld toon hoe om'n paar saamgesmelt dokumente te genereer tydens'n Mail Merge operasie met [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
