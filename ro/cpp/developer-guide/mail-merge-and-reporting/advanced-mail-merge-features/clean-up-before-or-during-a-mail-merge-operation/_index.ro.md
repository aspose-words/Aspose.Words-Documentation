---
title: Curățați înainte sau în timpul unei operații Mail Merge
second_title: Aspose.Words pentru C++
articleTitle: Curățați înainte sau în timpul unei operații Mail Merge
linktitle: Curățați înainte sau în timpul unei operații Mail Merge
type: docs
description: "Aplicați diferite opțiuni de curățare și eliminare, cum ar fi ștergerea câmpurilor de îmbinare înainte de a efectua o operație mail merge sau eliminarea regiunilor neutilizate în timpul unei operații mail merge."
keywords: "cleanup options mail merge c#"
weight: 10
url: /ro/cpp/clean-up-before-or-during-mail-merge/
---

Aspose.Words vă permite să aplicați diferite opțiuni de curățare și eliminare, cum ar fi ștergerea câmpurilor de îmbinare înainte de a efectua o operație mail merge sau eliminarea regiunilor neutilizate în timpul unei operații mail merge. Această secțiune va explica cum să ștergeți câmpurile îmbinate și cum să configurați o opțiune de eliminare.

## Ștergeți Câmpurile Îmbinate

Când utilizați un șablon lung creat de altcineva, vă recomandăm să ștergeți toate câmpurile de îmbinare care există deja în acel șablon înainte de a efectua o operație mail merge. Puteți utiliza metoda [DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/) Dacă doriți să ștergeți toate câmpurile de îmbinare dintr-un document fără a executa o operație mail merge. Această metodă nu este afectată de nicio opțiune de eliminare a proprietății [CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/) și executarea acesteia elimină doar câmpurile îmbinate, nu orice câmpuri care conțin sau paragrafe goale.

Următorul exemplu de cod arată cum să ștergeți toate câmpurile de îmbinare din șablon fără a executa o operație mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## Configurați o opțiune `Removing`

Aspose.Words vă permite să eliminați câmpurile, regiunile și paragrafele nemergate dintr-un șablon în timpul unei operații mail merge folosind opțiuni de eliminare.

Utilizați proprietatea **CleanupOptions** împreună cu enumerarea [MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/) pentru a seta opțiunea Eliminare. Specificați ce elemente doriți să eliminați alegând următoarele opțiuni (puteți combina mai multe):

* Eliminați paragrafele goale
* Eliminați regiunile neutilizate
* Eliminați câmpurile neutilizate
* Eliminați câmpurile care conțin
* Eliminați câmpurile statice
* Eliminați rândurile de tabel goale

Puteți considera un câmp de îmbinare ca unmerged într-una din următoarele condiții:

1. Dacă câmpul îmbinare din sursa de date nu are o coloană sau un câmp de mapare.
2. Dacă câmpul de îmbinare din sursa de date conține un câmp de mapare, dar datele sunt nule.

{{% alert color="primary" %}}

Dacă fuzionați date folosind surse de date separate, atunci acele opțiuni de eliminare vor fi activate numai cu ultimul apel al metodei de execuție mail merge.

{{% /alert %}}

### Eliminați Paragrafele Goale

Un paragraf care include doar câmpuri de îmbinare va fi gol atunci când procesul mail merge elimină toate câmpurile sale de îmbinare ca nemergate. Aceste paragrafe goale pot adăuga spațiu nedorit și pot schimba modul în care va arăta raportul generat. Este posibil să vă confruntați cu două situații cu paragrafe în timpul unei operații mail merge:

1. Câmpul mail merge va fi îmbinat cu date goale.
2. Câmpul de îmbinare este neutilizat și va fi eliminat.

În ambele situații, opțiunea **RemoveEmptyParagraphs** va elimina automat paragrafele goale din document. De asemenea, va elimina câmpurile de îmbinare `TableStart` și TableEnd dacă restul paragrafului este gol.

Următorul exemplu de cod arată cum să eliminați paragrafele goale:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Eliminați Câmpurile Neutilizate

Aspose.Words vă permite să eliminați orice câmpuri mail merge neutilizate prin atribuirea steagului **RemoveUnusedFields** la **CleanupOptions**. Această opțiune va elimina câmpurile de îmbinare care nu au datele corespunzătoare în sursa de date.

Următorul exemplu de cod arată cum să eliminați automat orice câmpuri de îmbinare neutilizate dintr-un document în timpul unei operații mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### Eliminarea Câmpurilor Care Conțin

Un câmp de fuziune poate fi conținut într-un alt câmp, cum ar fi un câmp **IF** sau un câmp de formulă. Eliminați acest câmp exterior atunci când câmpul îmbinare este îmbinat sau eliminat din document.

Următorul exemplu de cod arată cum să eliminați câmpurile care conțin câmpuri de îmbinare dintr - un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**Notă**

### Eliminați Rândurile De Tabel Goale

Aspose.Words vă permite să eliminați rândurile de tabel goale atribuind steagul **RemoveEmptyTableRows** la **CleanupOptions**. Această opțiune va elimina rândurile de tabel care conțin câmpuri de îmbinare goale.

Următorul exemplu de cod arată cum să eliminați rândurile de tabel goale care conțin regiuni mail merge dintr-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}
