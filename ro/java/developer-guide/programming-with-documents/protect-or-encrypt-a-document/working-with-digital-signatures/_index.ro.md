---
title: Lucrați cu semnături digitale în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrați cu semnături digitale
linktitle: Lucrați cu semnături digitale
description: "Semnați digital documente și detectați, numărați, verificați și eliminați semnăturile digitale existente folosind Java."
type: docs
weight: 30
url: /ro/java/working-with-digital-signatures/
---

O semnătură digitală este o implementare tehnologică a semnăturilor electronice pentru semnarea documentelor și autentificarea semnatarului pentru a garanta că un document nu a fost modificat de la semnarea acestuia. Fiecare semnătură digitală este unică pentru fiecare semnatar datorită respectării protocolului PKI pentru a genera atât chei publice, cât și private. Semnarea digitală a unui document înseamnă crearea unei semnături folosind cheia privată a semnatarului, unde un algoritm matematic este utilizat pentru a cripta hash-ul generat.

Aspose.Words vă permite să detectați, să numărați sau să verificați semnăturile digitale existente și, de asemenea, să adăugați o nouă semnătură la documentul dvs. pentru a afla orice manipulare a acestuia. De asemenea, puteți elimina toate semnăturile digitale dintr-un document. Utilizați clasa [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) pentru a lucra cu semnături digitale.

Acest articol explică cum să faceți toate cele de mai sus pentru a valida autenticitatea și integritatea unui document digital.

{{% alert color="primary" %}}

Rețineți că puteți accesa semnăturile digitale ale documentului dvs. numai atunci când rulați versiunea Java 6 și mai sus.

{{% /alert %}}

{{% alert color="primary" %}}

**Încercați online**

Puteți încerca această funcționalitate cu [Semnătură online gratuită](https://products.aspose.app/words/signature).

{{% /alert %}}

## Formate Acceptate

Aspose.Words vă permite să lucrați cu semnături digitale pe documente DOC, OOXML și ODT și să semnați documentul generat în format PDF sau XPS.

## Limitări ale semnăturilor digitale

Tabelul de mai jos descrie câteva limitări cu care vă puteți confrunta în timp ce lucrați cu semnături digitale prin Aspose.Words, precum și câteva opțiuni alternative.

| Limitare | Opțiune alternativă |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Pierderea semnăturilor digitale pe un document după încărcarea și salvarea acestuia. Prin urmare, procesarea unui document către un server poate provoca pierderea tuturor semnăturilor digitale fără notificare. | Verificați dacă un document are semnături digitale și luați măsurile corespunzătoare dacă se găsesc. De exemplu, trimiteți o alertă clienților informându-i că documentul pe care îl încarcă conține semnături digitale care se vor pierde dacă este procesat. |
| Aspose.Words acceptă lucrul cu macrocomenzi într-un document. Dar Aspose.Words nu acceptă încă semnături digitale pe macrocomenzi. | Exportați documentul înapoi în orice format Word și utilizați Microsoft Word pentru a adăuga o semnătură digitală la macrocomenzi. |

## Detectați, numărați și verificați semnăturile digitale

Aspose.Words vă permite să detectați semnătura digitală într-un document folosind metoda [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) și Proprietatea [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature). Este demn de remarcat faptul că o astfel de verificare va detecta doar faptul semnăturii, dar nu și valabilitatea acesteia.

Un document poate fi semnat de mai multe ori, iar acest lucru poate fi realizat de diferiți utilizatori. Pentru a verifica validitatea semnăturilor digitale, trebuie să le încărcați din document folosind metoda [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) și să utilizați proprietatea [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid). De asemenea, Aspose.Words vă permite să numărați un set de semnături digitale dintr-un document folosind proprietatea [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount).

Toate acestea oferă o modalitate eficientă și sigură de a verifica semnăturile unui document înainte de a-l procesa.

Următorul exemplu de cod arată cum să detectați prezența semnăturilor digitale și să le verificați:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Creați o semnătură digitală {#create-a-digital-signature}

Pentru a crea o semnătură digitală, va trebui să încărcați un certificat de semnare care confirmă identitatea. Când trimiteți un document semnat digital, trimiteți și certificatul și cheia publică.

Aspose.Words vă permite să creați X.509 certificat, un certificat digital care utilizează standardul X.509 PKI acceptat la nivel internațional pentru a verifica dacă o cheie publică aparține semnatarului inclus în certificat. Pentru a face acest lucru, utilizați metoda [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) din clasa [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/).

Următoarele secțiuni explică cum să adăugați o semnătură digitală, o linie de semnătură și cum să semnați un document PDF generat.

### Semnează un Document

Aspose.Words vă permite să semnați digital un document DOC, DOCX sau ODT folosind metoda [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) și proprietățile [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/).

Următorul exemplu de cod arată cum să semnați documente utilizând un titular de certificat și să semnați opțiuni:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### Adăugați o linie de semnătură

O linie de semnătură este o reprezentare vizuală a unei semnături digitale într-un document. Aspose.Words vă permite să inserați o linie de semnătură folosind metoda [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions). De asemenea, puteți seta parametrii pentru această reprezentare folosind clasa [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/).

De exemplu, imaginea de mai jos arată cum pot fi afișate semnăturile valide și nevalide.

<img src="valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-digital-signature" style="width:300px"/>

De asemenea, dacă un document conține o linie de semnătură și nu are semnătură digitală, există o caracteristică pentru a cere utilizatorului să adauge o semnătură.

Următorul exemplu de cod arată cum să semnați un document cu un certificat personal și o linie de semnătură specifică:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Semnează un document generat PDF {#sign-a-generated-pdf-document}

Aspose.Words vă permite să semnați și să obțineți toate detaliile unui document PDF folosind proprietățile [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/).

Următorul exemplu de cod arată cum să semnați un PDFgenerat:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

Imaginea de mai jos demonstrează că documentul PDF generat este deschis în Adobe Acrobat și semnătura digitală este verificată ca fiind prezentă și validă.

![create-digital-signed-pdf-aspose-words-java](signed-pdf-aspose-words-java.png)

## Regăsiți valoarea semnăturii digitale

Aspose.Words oferă, de asemenea, posibilitatea de a prelua valoarea semnăturii digitale dintr-un document semnat digital ca matrice de octeți folosind proprietatea [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue).

Următorul exemplu de cod arată cum se obține valoarea semnăturii digitale ca matrice de octeți dintr-un document:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Eliminați Semnăturile Digitale

Aspose.Words vă permite să eliminați toate semnăturile digitale dintr-un document semnat folosind metoda [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream).

Următorul exemplu de cod arată cum să încărcați și să eliminați semnăturile digitale dintr-un document:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Rețineți că nu puteți elimina o singură semnătură digitală din documentul dvs.

{{% /alert %}}
