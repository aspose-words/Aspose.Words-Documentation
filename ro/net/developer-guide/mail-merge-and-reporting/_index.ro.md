---
title: Mail Merge și raportarea în C#
second_title: Aspose.Words pentru .NET
articleTitle: Mail Merge și raportare
linktitle: Mail Merge și raportare
type: docs
description: "Mail Merge este o caracteristică populară pentru crearea rapidă a documentelor folosind C#. Aspose.Words pentru .NET Ia funcționalitatea standard Mail Merge și o avansează cu mulți pași înainte, transformându-l într-o soluție completă de raportare care vă permite să creați documente și mai complexe, cum ar fi rapoarte, cataloage, inventare și facturi."
keywords: "how to use Mail Merge c#"
weight: 30
url: /ro/net/mail-merge-and-reporting/
timestamp: 2024-07-11-08-07-06
---

Mail Merge este o caracteristică populară pentru crearea rapidă și ușoară a documentelor, cum ar fi scrisori, etichete și plicuri. Aspose.Words vă permite să generați documente din șabloane cu câmpuri Mail Merge.

Un câmp Mail Merge este un câmp pe care îl puteți insera într-un șablon mail merge pentru a include valori specifice dintr-o înregistrare sursă de date în documentele de ieșire. De exemplu, puteți insera un câmp de îmbinare într-un șablon de e-mail, astfel încât salutul să aibă prenumele destinatarului, mai degrabă decât un generic "Bună ziua!". Aspose.Words plasează date dintr-o sursă externă, cum ar fi o bază de date sau un fișier, în aceste câmpuri și le formatează. Documentul rezultat este salvat în folderul specificat.

Aspose.Words preia funcționalitatea standard Mail Merge și o avansează cu mulți pași înainte, transformându-l într-o soluție completă de raportare care vă permite să creați documente și mai complexe, cum ar fi rapoarte, cataloage, inventare și facturi. Iată câteva avantaje ale soluției de raportare Aspose.Words:

- Rapoarte de proiectare în Microsoft Word folosind câmpuri standard Mail Merge
- Definiți regiunile din document care sunt în creștere, cum ar fi rândurile de ordine detaliate
- Inserați imagini în timpul unui mail merge
- Executați orice logică personalizată, controlați formatarea sau inserați conținut complex folosind Mail Merge manipulatoare de evenimente
- Completați documentele cu date din orice tip de sursă de date

{{% alert color="primary" %}}

Spațiul de nume [Aspose.Words.MailMerging](https://reference.aspose.com/words/net/aspose.words.mailmerging/) este folosit pentru a lucra cu fuzionarea corespondenței.

{{% /alert %}}

## Mecanismul și componentele principale ale Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words oferă posibilitatea de a încărca documente în diverse [supported formats](https://reference.aspose.com/words/net/aspose.words/loadformat/) și apoi permite utilizatorilor să efectueze o operație Mail Merge.

De obicei, un document încărcat vă permite să stocați câmpuri de îmbinare, de exemplu, un document în format DOCX. Dar există formate care nu stochează astfel de câmpuri, de exemplu, TXT. Dacă Aspose.Words acceptă încărcarea unor astfel de formate de fișiere, puteți adăuga câmpurile de îmbinare direct la modelul de document, puteți salva documentul într-un [supported format](https://reference.aspose.com/words/net/aspose.words/saveformat/) convenabil și puteți efectua operația Mail Merge.

Operația Mail Merge va îmbina *mail merge template* și *data source* pentru a genera individual *merged documents*.

## Ce este un șablon Mail Merge {#what-is-a-mail-merge-template}

Scopul aplicării unei operații mail merge folosind un șablon de îmbinare este de a simplifica procesul de creare a unui document.

Există mai multe moduri de a crea și proiecta un șablon de îmbinare. Puteți utiliza Microsoft Word, iar șablonul de îmbinare nu trebuie să fie un șablon Microsoft Word, adică un document în formatul DOT sau DOTX, poate fi un document obișnuit în formatul DOC sau DOCX. Trebuie să inserați câteva câmpuri speciale numite câmpuri de îmbinare în acest șablon în locurile în care doriți ca datele din sursa dvs. de date să fie inserate ulterior. Sau puteți crea programatic un șablon de îmbinare folosind clasa [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).

Șablonul de îmbinare conține textul principal, care ar trebui să fie același în toate documentele de ieșire după ce efectuați operația Mail Merge. Puteți utiliza orice format pentru șablonul dvs. dacă există posibilitatea de a adăuga câmpuri de îmbinare la acesta. Toate câmpurile de îmbinare din șablonul dvs. vor fi completate din sursa de date în timpul operației Mail Merge.

## Surse de date pentru o operație Mail Merge {#data-source-types-for-a-mail-merge-operation}

Aspose.Words Mail Merge acceptă diverse surse de date. Aceasta poate fi fie o DataTable, DataView, DataSet, IDataReader, o matrice de valori suportate de ADO .NET, sau surse de date personalizate reprezentate de [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) implementări.

Sursa de date conține toate informațiile care sunt extrase în timpul operației Mail Merge pentru a personaliza e-mailurile și documentele individuale. Sursele de date pot fi create manual sau generate prin raportarea dintr-o bază de date sau o aplicație existentă. Dacă aveți date în format XML, le puteți încărca și îmbina cu DataSet. Operația Mail Merge va parcurge toate înregistrările sursei de date și le va introduce în câmpurile Mail Merge din document. Puteți implementa unele interfețe mail merge, cum ar fi [IMailMergeDataSourceRoot](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasourceroot/), pentru a îmbina date din orice sursă de date, inclusiv o interogare LINQ, un fișier XML sau obiecte de afaceri.

Următorul exemplu de cod arată cum să încărcați un tabel de date ca sursă de date pentru operația Mail Merge:

{{< gist "aspose-words-gists" "de5e13f5d5bb7d8cb88da900b4f9ed8b" "execute-with-regions-data-table.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Orders.docx).

{{% /alert %}}

## Documente îmbinate ale unei operații Mail Merge {#merged-documents-of-a-mail-merge-operation}

Un document îmbinat este rezultatul operației Mail Merge atunci când îmbinați șablonul cu sursa de date. Toate câmpurile de îmbinare din documentul îmbinat sunt înlocuite cu date reale din sursa de date.

Următoarea imagine prezintă un exemplu de șablon de îmbinare cu câmpuri îmbinate înainte de a efectua operația Mail Merge.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

Următoarea imagine prezintă un exemplu al documentului îmbinat de ieșire ca urmare a efectuării operației Mail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Vezi Și

- [Lucrați cu Mail Merge șabloane în Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
