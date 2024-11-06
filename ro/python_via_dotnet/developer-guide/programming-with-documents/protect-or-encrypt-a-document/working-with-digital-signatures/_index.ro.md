---
title: Lucrul cu semnături digitale
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu semnături digitale
linktitle: Lucrul cu semnături digitale
description: "Semnați digital documente și detectați, numărați, verificați și eliminați semnăturile digitale existente folosind Python."
type: docs
weight: 40
url: /ro/python-net/working-with-digital-signatures/
---

O semnătură digitală este utilizată pentru autentificarea unui document pentru a stabili că expeditorul documentului este cine spune că este și că conținutul documentului nu a fost modificat.

Aspose.Words acceptă documente cu semnături digitale și oferă acces la acestea, permițându-vă să detectați și să validați semnăturile digitale pe un document și să semnați un document PDF generat cu un certificat furnizat. În prezent, semnăturile digitale sunt acceptate pe documentele DOC, OOXML și ODT. Semnarea documentelor generate este acceptată în format PDF.

{{% alert color="primary" %}}

**Încercați online**

Puteți încerca această funcționalitate cu [Semnătură online gratuită](https://products.aspose.app/words/signature).

{{% /alert %}}

## Semnăturile digitale nu sunt păstrate pe Open și Save

Un punct important de remarcat este că un document încărcat și apoi salvat folosind Aspose.Words va pierde orice semnături digitale semnate pe document. Aceasta este prin design, deoarece o semnătură digitală asigură că conținutul nu a fost modificat și, în plus, autentifică identitatea persoanei care a semnat documentul. Aceste principii ar fi invalidate dacă semnăturile originale ar fi transferate în documentul rezultat.

Din acest motiv, dacă procesați documente încărcate pe un server, acest lucru ar putea însemna că puteți corupe un document încărcat pe serverul dvs. în acest fel fără să știți. Prin urmare, cel mai bine este să verificați semnăturile digitale pe un document și să luați măsurile corespunzătoare dacă se găsesc, de exemplu, o alertă poate fi trimisă clientului informându-l că documentul pe care îl transmite conține semnături digitale care se vor pierde dacă este procesat. Puteți descărca fișierul șablon al acestui exemplu din [aici](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

Codul de mai sus utilizează metoda [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) pentru a detecta dacă un document conține semnături digitale fără a încărca mai întâi documentul. Aceasta oferă o modalitate eficientă și sigură de a verifica semnăturile unui document înainte de a le procesa. Când este executată, metoda returnează un obiect [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) care furnizează proprietatea [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). Această proprietate returnează true dacă documentul conține una sau mai multe semnături digitale. Este important să rețineți că această metodă nu validează semnăturile, ci determină doar dacă semnăturile sunt prezente. Validarea semnăturilor digitale este prezentată în secțiunea următoare.

{{% alert color="primary" %}}

De asemenea, puteți verifica dacă un document are semnături digitale după încărcare verificând proprietatea `Count` a colecției [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/).

{{% /alert %}}

## Semnături digitale pe macrocomenzi (VBA proiecte)

Semnăturile digitale de pe macrocomenzi nu pot fi accesate sau semnate. Acest lucru se datorează faptului că Aspose.Words nu se ocupă direct de macrocomenzi într-un document. Cu toate acestea, semnăturile digitale pe macrocomenzi sunt păstrate atunci când exportați documentul înapoi în orice format word. Aceste semnături pot fi păstrate pe codul VBA deoarece conținutul binar al macrocomenzilor nu este modificat chiar dacă documentul în sine este modificat.

### Accesați și verificați semnăturile digitale

Un document poate avea mai multe semnături digitale. Aceste semnături pot fi accesate prin colecția [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/). Fiecare obiect returnat este un [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) care reprezintă o singură semnătură digitală aparținând documentului. Aceasta oferă membrilor care vă permit să verificați validitatea semnăturii.

Cea mai importantă proprietate de verificat cu semnături digitale este valabilitatea fiecărei semnături din document. Toate semnăturile din document pot fi validate simultan apelând proprietatea [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/). Aceasta va returna true dacă toate semnăturile din document sunt valide sau dacă documentul nu are semnături și false dacă cel puțin o semnătură digitală nu este validă.

Fiecare semnătură poate fi, de asemenea, validată individual prin apelarea [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). O semnătură poate reveni nevalidă din mai multe motive, de exemplu documentul a fost modificat de la semnare sau certificatul a expirat. În plus, detalii suplimentare ale semnăturii pot fi, de asemenea, accesate. Eșantionul de cod de mai jos arată cum să validați fiecare semnătură dintr-un document și să afișați informații de bază despre semnătură. Puteți descărca fișierul șablon al acestui exemplu din [aici](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Semnarea Documentelor Word

[DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) clasa oferă metode pentru semnarea documentului. [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) metoda semnează documentul sursă folosind dat [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) cu semnătură digitală și scrie documentul semnat în fluxul de destinație.

Exemplul de mai jos arată cum să semnați un document simplu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

Exemplul de mai jos arată cum să semneze documentul criptat.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Semnarea documentului Word cu linia de semnătură

Puteți semna documentul sursă folosind dat [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) și [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) cu semnătură digitală și scrie documentul semnat în fișierul destinație. Folosind clasa [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) Puteți specifica opțiuni pentru semnarea documentelor. Exemplul de mai jos arată cum să creați o nouă linie de semnătură și un document de semnare.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

Exemplul de mai jos arată cum să modificați linia de semnătură existentă și documentul de semnare.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Semnarea documentului Word utilizând identificatorul furnizorului de semnături

Exemplul de mai jos arată cum să semnați documentul Word utilizând identificatorul furnizorului de semnături. Furnizorul de servicii criptografice (CSP) este un modul software independent care efectuează de fapt algoritmi de criptografie pentru autentificare, codificare și criptare. MS Office își rezervă valoarea {00000000-0000-0000-0000-000000000000} Pentru furnizorul său implicit de semnături.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Creați un nou Document de semnare a liniei de semnătură utilizând identificatorul furnizorului

Exemplul de mai jos arată cum să creați linia de semnătură și să semnați documentul Word utilizând identificatorul furnizorului de semnătură.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Regăsiți valoarea semnăturii digitale

Aspose.Words oferă, de asemenea, posibilitatea de a prelua valoarea semnăturii digitale dintr-un document semnat digital ca matrice de octeți folosind proprietatea [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/).

Următorul exemplu de cod arată cum se obține valoarea semnăturii digitale ca matrice de octeți dintr-un document:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}