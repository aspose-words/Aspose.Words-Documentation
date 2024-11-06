---
title: Creează BarCode în Java
second_title: Aspose.Words pentru Java
articleTitle: Generați o imagine personalizată BarCode
linktitle: Generați o imagine personalizată BarCode
description: "Exemplu de generare a formei codului de bare folosind Java."
type: docs
weight: 350
url: /ro/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Un cod de bare este o reprezentare vizuală a datelor sub formă de linii sau modele paralele. Codurile de bare sunt utilizate pe scară largă în diverse industrii, cum ar fi comerțul cu amănuntul, logistica, asistența medicală, serviciile bancare și multe altele.

Microsoft Word permite utilizatorilor să încorporeze coduri de bare direct în documente folosind câmpuri. Utilizatorii pot introduce un anumit tip de cod de bare, cum ar fi un cod QR sau un cod de bare liniar, folosind [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) câmp.

În acest articol, vom analiza modul în care câmpul BARCODE este implementat în Aspose.Words și modul în care Aspose.Words permite utilizatorilor să lucreze cu documente Word la care a fost deja adăugat un cod de bare.

## Tipuri de coduri de bare acceptate de Aspose.Words

Aspose.Words suportă diferite tipuri de coduri de bare. Tipul codului de bare este transmis ca valoare șir în proprietatea [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Deoarece lucrul cu coduri de bare în cadrul funcționalității Aspose.Words este limitat, utilizatorul poate folosi orice bibliotecă, inclusiv Aspose.Coduri de bare, sau scrie propria sa redare pentru a lucra cu coduri de bare. Puteți afla mai multe despre tipurile de coduri de bare [susținut de Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Când salvați în formate Word care acceptă coduri de bare, puteți utiliza orice tip de cod de bare care este [suportat de Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Dacă a fost transmis un tip incorect de cod de bare, Word va afișa o eroare.

Când salvați în alte formate, cum ar fi PDF, Aspose.Words deleagă redarea codurilor de bare codului de utilizator, astfel încât utilizatorul este limitat la tipurile de coduri de bare ale implementării sau bibliotecii utilizate.

## Introduceți un cod de bare într-un Document sau încărcați un Document cu un cod de bare adăugat

Aspose.Words oferă posibilitatea de a:

1. Introduceți programatic un cod de bare într-un document utilizând [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) și [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) coduri de câmp
2. Sau încărcați un document Word cu coduri de bare deja inserate în el pentru lucrări ulterioare

Aspose.Words are o interfață pentru generarea de coduri de bare personalizate care îl face ușor de utilizat [Aspose.Words](https://products.aspose.com/words/java/) și [Aspose.BarCode](https://products.aspose.com/barcode/java/) împreună pentru a reda imagini de coduri de bare în documentele de ieșire. De exemplu, puteți crea un document DOC, OOXML sau RTF și puteți adăuga un câmp DISPLAYBARCODE folosind Aspose.Words. Sau puteți încărca un DOC, OOXML sau RTF document cu DISPLAYBARCODE câmp deja existente în ea și să ofere punerea în aplicare a generator de coduri de bare personalizate.

Un câmp tipic DISPLAYBARCODE are următoarea sintaxă:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Mai jos este un exemplu de generator de cod folosind Aspose.Words și Aspose.BarCode APIs. Acest exemplu arată cum să inserați imagini cu coduri de bare la poziția câmpului DISPLAYBARCODE într-un document Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

De asemenea, puteți salva documentul cu codul de bare încărcat sau nou introdus în formate de pagină fixe, cum ar fi PDF, XPS etc. Următorul exemplu de cod arată cum să salvați un document Word în format PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Pentru mai multe informații despre conversia documentelor dintr-un format în altul, consultați [Conversia unui Document](/words/java/convert-a-document/) secțiunea Documentație.

{{% /alert %}}

{{% alert color="primary" %}}

De asemenea, puteți utiliza interfața [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) pentru a converti codurile de bare încorporate în documentele Word în imagini. Imaginile rezultate pot fi extrase din document-consultați articolul lucrul cu imagini pentru detalii.

{{% /alert %}}

## Specificați Opțiunile Codului De Bare

Când lucrați cu coduri de bare, puteți seta câteva proprietăți suplimentare. Aspose.Words vă oferă clasa [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) - clasa pentru ca parametrii codului de bare să treacă la BarcodeGenerator.

Aspose.Words suportă rezoluția ppi încorporată 96 pentru imaginile generate cu [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), ceea ce limitează dimensiunea minimă a unei imagini cu coduri de bare. Pentru a rezolva acest lucru, dezvoltatorii pot introduce manual imagini cu coduri de bare cu rezoluția țintă într-un document Word și le pot salva în formatul necesar. Pentru mai multe detalii și exemple despre lucrul cu codurile de bare, consultați articolul [Citiți codurile de bare din documentele Word](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
