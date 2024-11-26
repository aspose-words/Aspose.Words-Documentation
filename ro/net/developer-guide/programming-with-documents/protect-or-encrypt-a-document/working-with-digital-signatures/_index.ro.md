---
title: Lucrează cu semnături digitale în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucraţi cu semnături digitale
linktitle: Lucraţi cu semnături digitale
description: "Semnaţi documentele digital şi detectaţi, număraţi, verificaţi şi eliminaţi semnăturile digitale existente folosind C#"
type: docs
weight: 40
url: /ro/net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

O semnătură digitală este o implementare tehnologică a semnăturilor electronice pentru a semna documente și a autentifica semnatarul pentru a garanta că un document nu a fost modificat de când a fost semnat. Fiecare semnătură digitală este unică pentru fiecare semnatar datorită faptului că urmează protocolul PKI pentru a genera atât cheile publice cât și pe cele private. A semna o semnătură digitală înseamnă crearea unei semnături folosind cheia privată a semnatarului, unde un algoritm matematic este utilizat pentru a cripta hash-ul generat.

Aspose.Words vă permite să depistați, să numărați sau să verificați semnăturile digitale existente și, de asemenea, să adăugați o nouă semnătură la documentul dvs. pentru a găsi orice modificări în acesta. De asemenea, poți elimina toate semnăturile digitale de pe un document. Foloseşte clasa [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) pentru a lucra cu semnături digitale.

Acest articol explică cum să faci toate cele de mai sus pentru a valida autenticitatea și integritatea unui document digital.

{{% alert color="primary" %}}

Rețineți că puteți accesa semnăturile digitale ale documentului dvs. doar atunci când rulați versiunea .NET Framework 2.0 și cele superioare.

{{% /alert %}}

{{% alert color="primary" %}}

**Încercați online**

Puteți încerca această funcționalitate cu [Free online signature](https://products.aspose.app/words/signature) nostru.

{{% /alert %}}

## Formaturi suportate

Aspose.Words vă permite să lucraţi cu semnături digitale pe documentele DOC, OOXML şi ODT şi să semnaţi documentul generat în format PDF sau XPS.

## Limitările semnăturilor digitale

Tabelul de mai jos descrie câteva limitări pe care le puteți întâmpina în timp ce lucrați cu semnături digitale prin Aspose.Words, precum și câteva opțiuni alternative.

| Limitare | Opțiune alternativă |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Pierderea semnăturilor digitale de pe un document după încărcarea și salvarea acestuia. Prin urmare, procesarea unui document pe un server poate cauza pierderea tuturor semnăturilor digitale fără o notificare. | Verificați dacă un document are semnături digitale și luați măsuri corespunzătoare în cazul în care se constată vreuna. De exemplu trimiteți o alerte către clienți informându-i că documentul pe care îl încarcă conține semnături digitale care se vor pierde dacă acesta este procesat. |
| Aspose.Words suportă lucrul cu macro-uri în cadrul unui document. Dar Aspose.Words nu acceptă încă semnăturile digitale pentru macro-uri. | Exportați documentul înapoi la orice format Word și utilizați Microsoft Word pentru a adăuga o semnătură digitală la macrocomenzi. |

## Detectează, Numără şi Verifică Semnături Digitale

Aspose.Words îți permite să detectezi semnătura digitală într-un document folosind metoda [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) și proprietatea [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/). Este de remarcat că un astfel de control va detecta doar faptul semnării, dar nu și valabilitatea acesteia.

Un document poate fi semnat de mai multe ori și acest lucru poate fi realizat de către utilizatori diferiți. Pentru a verifica valabilitatea semnăturilor digitale trebuie să le încărcați din document folosind metoda [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) și utilizați proprietatea [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/). De asemenea Aspose.Words vă permite să numărați un set de toate semnăturile digitale din cadrul unui document utilizând proprietatea [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/).

Toate acestea oferă o modalitate eficientă și sigură de verificare a unui document pentru semnături înainte de procesarea acestuia.

Exemplul de cod de mai jos arată cum se detectează prezența semnăturilor digitale și se verifică:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## Creați o semnătură digitală {#create-a-digital-signature}

Pentru a crea o semnătură digitală, va trebui să încărcați un certificat de semnătură care confirmă identitatea. Când trimiţi un document semnat digital, trimiţi şi certificatul tău şi cheia publică.

Aspose.Words îți permite să creezi certificate X.509, un certificat digital care folosește standardul internațional acceptat X.509 PKI pentru a verifica că o cheie publică aparține semnatarului inclus în certificat. Pentru a face asta, folosiţi metoda [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) în clasa [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/).

Următoarele secțiuni explică cum să adăugați o semnătură digitală, un spațiu pentru semnătură și cum să semnați un document PDF generat.

### Semnează un document

Aspose.Words vă permite să semnați digital un document DOC, DOCX, XPS sau ODT folosind metoda [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) și proprietățile [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/).

Exemplul de cod următor arată cum se semnează documente folosind un depozit de certificate și opțiuni de semnătură:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### Adăugaţi o linie de semnătură

O linie de semnătură este o reprezentare vizuală a unei semnături digitale dintr-un document. Aspose.Words îți permite să introduci o linie de semnătură folosind metoda [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/). De asemenea, poți seta parametrii pentru această reprezentare folosind clasa [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/).

De exemplu, imaginea de mai jos arată cum pot fi afișate semnăturile valide și invalide.

<img src="valid.png" alt="drawing" style="width:300px"/>

<img src="invalid.png" alt="drawing" style="width:300px"/>

De asemenea, dacă un document conține o linie de semnătură și nici o semnătură digitală, există o caracteristică care cere utilizatorului să adauge o semnătură.

Exemplul de cod următor arată cum să semneze un document cu o semnătură personală și o linie de semnătură specifică:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### Semnează un document PDF generat {#sign-a-generated-pdf-document}

Aspose.Words vă permite să semnați și să obțineți toate detaliile unui document PDF folosind proprietățile [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/).

Exemplul de cod următor prezintă modul în care se semnează un PDF generat:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## Recupera valoarea semnăturii digitale

Aspose.Words oferă, de asemenea, posibilitatea de a obține valoarea semnăturii digitale dintr-un document semnat digital ca o matrice de octeți folosind proprietatea [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/).

Exemplul de cod următor arată cum să obţinem valoarea semnăturii digitale ca o matrice de octeţi dintr-un document:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## Elimină semnăturile digitale

Aspose.Words vă permite să eliminați toate semnăturile digitale dintr-un document semnat folosind metoda [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/).

Exemplul următor de cod arată cum se încarcă şi se elimină semne digitale dintr-un document:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

Ține minte că nu poți elimina doar una singură semnătură digitală în cadrul documentului tău.

{{% /alert %}}
