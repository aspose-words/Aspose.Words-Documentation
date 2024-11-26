---
title: Prima dvs. cerere pentru Android prin Java
second_title: Aspose.Words pentru Java
articleTitle: Prima Ta Cerere
linktitle: Prima Ta Cerere
description: "Instalarea Aspose.Words pentru Android prin Java."
type: docs
weight: 30
url: /ro/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Acest articol vă oferă o idee de a începe cu Aspose.Words pentru Android prin Java. Acesta va demonstra cum să configurați un nou proiect Android de la zero, să adăugați o referință la Aspose.Words JAR și să creați un nou document care este salvat pe disc în format DOCX. Acest exemplu utilizează [Android Studio](https://developer.android.com/studio/index.html) pentru dezvoltare și aplicația este rulată pe Android Emulator. Pentru a începe cu Aspose.Words pentru Android prin Java, urmați acest tutorial pas cu pas pentru a crea o aplicație care utilizează Aspose.Words pentru Android prin Java:

1. Descărcați și [Android Studio](https://developer.android.com/studio/index.html) și instalați-l în orice locație.
1. Rulați studioul Android.
1. Creați un nou proiect de aplicație Android.<br>
![install-aspose-words-for-android-via-java-3](install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](install-aspose-words-for-android-via-java-7.jpg)<br>
1. Copiați aspose-words-17.5-android.via.java.jar în libs/folderul proiectului dvs<br>
![install-aspose-words-for-android-via-java-8](install-aspose-words-for-android-via-java-8.jpg)
1. Selectați secțiunea proiect (din meniul fișier și faceți clic pe fila dependențe.
   1. Faceți clic pe butonul "+", selectați opțiunea dependență fișier.
   1. Selectați Aspose.Words bibliotecă din folderul libs și faceți clic pe OK.<br>
   ![install-aspose-words-for-android-via-java-9](install-aspose-words-for-android-via-java-9.png)
1. Sincronizați proiectul cu fișiere Gradle, dacă este necesar<br>
![install-aspose-words-for-android-via-java-10](install-aspose-words-for-android-via-java-10.png)
1. Pentru a accesa SDcard trebuie adăugate permisiuni speciale. Faceți clic pe AndroidManifest.fișier xml și alegeți vizualizarea XML. Adăugați următoarea linie la fișier <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](install-aspose-words-for-android-via-java-11.jpg)
1. Navigați înapoi la secțiunea cod a aplicației și adăugați următoarele importuri:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
Și apoi introduceți următorul cod în corpul metodei onCreate pentru a crea un nou document de la zero folosind Aspose.Words,
introduceți un text și salvați-l în SDCard în format DOCX.<br>
{{< highlight csharp >}}
try
{
   Document doc = new Document();
   DocumentBuilder builder = new DocumentBuilder(doc);
   builder.writeln("Hello World!");
   String sdCardPath = Environment.getExternalStorageDirectory().getPath() + File.separator;
   doc.save(sdCardPath + "Document Out.docx");
}
catch (Exception e)
{
   e.printStackTrace();
}
{{< /highlight >}}<br>
Codul complet ar trebui să arate astfel:<br>
![install-aspose-words-for-android-via-java-12](install-aspose-words-for-android-via-java-12.png)
1. Acum rulați din nou aplicația. De data aceasta codul Aspose.Words va rula în fundal și va genera un document care este salvat în SDcard.<br>
![install-aspose-words-for-android-via-java-13](install-aspose-words-for-android-via-java-13.jpg)
1. Pentru a vizualiza documentul creat, navigați la meniul Instrumente, apoi alegeți Android și alegeți Android Monitor dispozitiv<br>
![install-aspose-words-for-android-via-java-14](install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](install-aspose-words-for-android-via-java-15.jpg)
1. Utilizați vizualizatorul implicit pentru a deschide documentul. Ieșirea generată de aplicație cu doar câteva linii de cod arată astfel:<br>
![install-aspose-words-for-android-via-java-16](install-aspose-words-for-android-via-java-16.jpg)
