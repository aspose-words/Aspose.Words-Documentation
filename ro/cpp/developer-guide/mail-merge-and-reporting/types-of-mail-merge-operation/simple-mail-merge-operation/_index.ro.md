---
title: Operație simplă Mail Merge în C++
second_title: Aspose.Words pentru C++
articleTitle: Operație Simplă Mail Merge
linktitle: Operație Simplă Mail Merge
type: docs
description: "Un simplu mail merge este folosit pentru a umple câmpurile mail merge din șablonul dvs. cu datele necesare din sursa de date – este similar cu clasicul mail merge din Microsoft Word. Adăugați unul sau mai multe câmpuri de îmbinare în șablonul dvs. și apoi executați operația simplă mail merge."
keywords: "how to execute mail merge c++"
weight: 10
url: /ro/cpp/simple-mail-merge-operation/
---

Un simplu mail merge este folosit pentru a umple câmpurile mail merge din șablonul dvs. cu datele necesare din sursa de date (reprezentarea unui singur tabel). Deci este similar cu clasicul mail merge din Microsoft Word.

Puteți adăuga unul sau mai multe câmpuri de îmbinare în șablonul dvs. și apoi executați operația simplă mail merge. Este recomandat să îl utilizați dacă șablonul dvs. nu conține regiuni de îmbinare.

Principala limitare a utilizării acestui tip este că întregul conținut al documentului va fi repetat pentru fiecare înregistrare din sursa de date.

## Cum se execută o operație simplă Mail Merge

Odată ce șablonul este gata, puteți începe să efectuați operația simplă mail merge. Aspose.Words vă permite să executați o operație simplă mail merge folosind diferite metode [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) care acceptă diverse obiecte de date ca sursă de date.

Următorul exemplu de cod arată cum să executați o operație simplă mail merge folosind una dintre metodele [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

Puteți observa diferența dintre document înainte de a executa simplu mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

Și după executarea simplă mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Cum se creează mai multe documente îmbinate

În Aspose.Words, operația standard mail merge umple doar un singur document cu conținut din sursa de date. Deci, va trebui să executați operația mail merge de mai multe ori pentru a crea câteva documente îmbinate ca ieșire.

Următorul exemplu de cod arată cum să generați câteva documente îmbinate în timpul unei operații mail merge cu [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
