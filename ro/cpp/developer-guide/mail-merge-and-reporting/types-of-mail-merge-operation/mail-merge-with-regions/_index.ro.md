---
title: Mail Merge cu regiuni în C++
second_title: Aspose.Words pentru C++
articleTitle: Mail Merge cu regiuni
linktitle: Mail Merge cu regiuni
type: docs
description: "Creați diferite regiuni în șablonul dvs. pentru a avea zone speciale pe care le puteți completa pur și simplu cu datele dvs. Utilizați Mail Merge cu regiuni dacă doriți să inserați tabele, rânduri cu date repetate pentru ca documentele dvs. să crească dinamic."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /ro/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

Puteți crea diferite regiuni în șablonul dvs. pentru a avea zone speciale pe care le puteți completa pur și simplu cu datele dvs. Utilizați Mail Merge cu regiuni dacă doriți să inserați tabele, rânduri cu date repetate pentru ca documentele dvs. să crească dinamic, specificând acele regiuni din șablonul dvs.

Puteți crea regiuni imbricate (copil), precum și regiuni de îmbinare. Principalul avantaj al utilizării acestui tip este creșterea dinamică a părților din interiorul unui document. Vedeți mai multe detalii în articolul următor "imbricat Mail Merge cu regiuni".

{{% alert color="primary" %}}

Informațiile despre o regiune Mail Merge pot fi obținute folosind clasa [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

## Cum se execută Mail Merge cu regiuni

O regiune Mail Merge este o parte specifică din interiorul unui document care are un punct de început și un punct final. Ambele puncte sunt reprezentate ca Mail Merge câmpuri care au nume specifice *"TableStart:XXX"* și *"TableEnd:XXX"*. Tot conținutul care este inclus într-o regiune Mail Merge va fi repetat automat pentru fiecare înregistrare din sursa de date.

Aspose.Words vă permite să executați Mail Merge cu regiuni folosind una dintre metodele [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) care acceptă [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) sursă de date personalizată.

Următorul exemplu de cod arată cum se execută Mail Merge cu regiuni din Baza de date sqlite cu [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

Puteți observa diferența dintre document înainte de a executa Mail Merge cu regiuni:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

Și după executarea Mail Merge cu regiuni:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Limitări ale Mail Merge cu regiuni

Există câteva puncte importante pe care trebuie să le luați în considerare atunci când efectuați un Mail Merge cu regiuni:

* Punctul de pornire *TableStart:Orders* și punctul final *TableEnd:Orders* trebuie să fie ambele în același rând sau celulă. De exemplu, dacă începeți o regiune de îmbinare într-o celulă a unui tabel, trebuie să terminați regiunea de îmbinare în același rând cu prima celulă.
  Numele câmpului de îmbinare trebuie să se potrivească cu numele coloanei din DataTable. Dacă nu specificați câmpuri mapate, Mail Merge cu regiuni nu va reuși pentru niciun câmp de îmbinare care are un alt nume decât numele coloanei.
* Aspose.Words pentru C++ acceptă numai surse de date bazate pe [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) și [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/). Spre deosebire de .NET și Java, C++ nu are o platformă încrucișată general acceptată API pentru lucrul cu baze de date (cum ar fi ADODB, ODBC sau JDBC). Pentru a lucra cu o anumită sursă de date, trebuie să implementați interfața [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) sau [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/).

Dacă una dintre aceste reguli este încălcată, veți obține rezultate neașteptate sau poate fi aruncată o excepție.

{{% alert color="primary" %}}

Dacă nu utilizați regiuni mail merge, atunci va fi similar cu Microsoft Word mail merge, iar întregul conținut al documentului va fi repetat pentru fiecare înregistrare din sursa de date.

{{% /alert %}}

