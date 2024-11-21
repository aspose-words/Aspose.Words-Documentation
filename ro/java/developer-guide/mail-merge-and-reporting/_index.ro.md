---
title: Mail Merge și raportarea în Java
second_title: Aspose.Words pentru Java
articleTitle: Mail Merge și raportare
linktitle: Mail Merge și raportare
type: docs
description: "Mail Merge este o caracteristică populară pentru crearea rapidă a documentelor. Aspose.Words Pentru Java preia funcționalitatea standard mail merge și o avansează cu mulți pași înainte, transformându-l într-o soluție completă de raportare care vă permite să creați documente și mai complexe, cum ar fi rapoarte, cataloage, inventare și facturi."
keywords: "how to use mail merge Java"
weight: 40
url: /ro/java/mail-merge-and-reporting/
timestamp: 2024-01-27-14-07-04
---

Mail Merge este o caracteristică populară pentru crearea rapidă și ușoară a documentelor, cum ar fi scrisori, etichete și plicuri. Aspose.Words vă permite să generați documente din șabloane cu mail merge câmpuri.

Un câmp mail merge este un câmp pe care îl puteți insera într-un șablon mail merge pentru a include valori specifice dintr-o înregistrare sursă de date în documentele de ieșire. De exemplu, puteți insera un câmp de îmbinare într-un șablon de e-mail, astfel încât salutul să aibă prenumele destinatarului, mai degrabă decât un generic "Bună ziua!". Aspose.Words plasează date dintr-o sursă externă, cum ar fi o bază de date sau un fișier, în aceste câmpuri și le formatează. Documentul rezultat este salvat în folderul specificat.

Aspose.Words preia funcționalitatea standard mail merge și o avansează cu mulți pași înainte, transformându-l într-o soluție completă de raportare care vă permite să creați documente și mai complexe, cum ar fi rapoarte, cataloage, inventare și facturi. Iată câteva avantaje ale soluției de raportare Aspose.Words:

- Rapoarte de proiectare în Microsoft Word folosind câmpuri standard mail merge
- Definiți regiunile din document care sunt în creștere, cum ar fi rândurile de ordine detaliate
- Inserați imagini în timpul unui mail merge
- Executați orice logică personalizată, controlați formatarea sau inserați conținut complex folosind mail merge manipulatoare de evenimente
- Completați documentele cu date din orice tip de sursă de date

## Mecanismul și componentele principale ale Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words oferă posibilitatea de a încărca documente în diverse [supported formats](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) și apoi permite utilizatorilor să efectueze o operație mail merge.

De obicei, un document încărcat vă permite să stocați câmpuri de îmbinare, de exemplu, un document în format DOCX. Dar există formate care nu stochează astfel de câmpuri, de exemplu, TXT. Dacă Aspose.Words acceptă încărcarea unor astfel de formate de fișiere, puteți adăuga câmpurile de îmbinare direct la modelul de document, puteți salva documentul într-un [supported format](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) convenabil și puteți efectua operația mail merge.

Operația mail merge va îmbina *mail merge template* și *data source* pentru a genera individual *merged documents*.

## Ce este un șablon Mail Merge {#what-is-a-mail-merge-template}

Scopul aplicării unei operații mail merge folosind un șablon de îmbinare este de a simplifica procesul de creare a unui document.

Există mai multe moduri de a crea și proiecta un șablon de îmbinare. Puteți utiliza Microsoft Word, iar șablonul de îmbinare nu trebuie să fie un șablon Microsoft Word, adică un document în formatul DOT sau DOTX, poate fi un document obișnuit în formatul DOC sau DOCX. Trebuie să inserați câteva câmpuri speciale numite câmpuri de îmbinare în acest șablon în locurile în care doriți ca datele din sursa dvs. de date să fie inserate ulterior. Sau puteți crea programatic un șablon de îmbinare folosind clasa [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

Șablonul de îmbinare conține textul principal, care ar trebui să fie același în toate documentele de ieșire după ce efectuați operația mail merge. Puteți utiliza orice format pentru șablonul dvs. dacă există posibilitatea de a adăuga câmpuri de îmbinare la acesta. Toate câmpurile de îmbinare din șablonul dvs. vor fi completate din sursa de date în timpul operației mail merge.

## Surse de date pentru o operație Mail Merge {#data-source-types-for-a-mail-merge-operation}

Aspose.Words mail merge acceptă diverse surse de date. Aceasta poate fi fie o DataTable, DataView, DataSet, IDataReader, o matrice de valori suportate de ADO .NET, sau surse de date personalizate reprezentate de [IMailMergeDataSource](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/) implementări.

Sursa de date conține toate informațiile care sunt extrase în timpul operației mail merge pentru a personaliza e-mailurile și documentele individuale. Sursele de date pot fi create manual sau generate prin raportarea dintr-o bază de date sau o aplicație existentă. Dacă aveți date în format XML, le puteți încărca și îmbina cu DataSet. Operația mail merge va parcurge toate înregistrările sursei de date și le va introduce în câmpurile mail merge din document. Puteți implementa unele interfețe mail merge, cum ar fi [IMailMergeDataSourceRoot](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasourceroot/), pentru a îmbina date din orice sursă de date, inclusiv o interogare LINQ, un fișier XML sau obiecte de afaceri.

Următorul exemplu de cod arată cum să încărcați un tabel de date ca sursă de date pentru operația mail merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ExecuteMailMergeWithRegions-ExecuteMailMergeWithRegions.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Orders.docx).

{{% /alert %}}

## Documente îmbinate ale unei operații Mail Merge {#merged-documents-of-a-mail-merge-operation}

Un document îmbinat este rezultatul operației mail merge atunci când îmbinați șablonul cu sursa de date. Toate câmpurile de îmbinare din documentul îmbinat sunt înlocuite cu date reale din sursa de date.

Următoarea imagine prezintă un exemplu de șablon de îmbinare cu câmpuri îmbinate înainte de a efectua operația mail merge.

![mail-merge-and-reporting-aspose-words-java-1](mail-merge-and-reporting-1.jpg)

Următoarea imagine prezintă un exemplu al documentului îmbinat de ieșire ca urmare a efectuării operației mail merge.

![mail-merge-and-reporting-aspose-words-java-2](mail-merge-and-reporting-2.jpg)

## Vezi Și

- [Lucrați cu mail merge șabloane în Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
