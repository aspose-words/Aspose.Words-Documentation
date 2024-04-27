---
title: Ihre erste Bewerbung für Android über Java
second_title: Aspose.Words für Java
articleTitle: Ihre erste Anwendung
linktitle: Ihre erste Anwendung
description: "Installation Aspose.Words für Android über Java."
type: docs
weight: 30
url: /de/java/your-first-application/
---

Dieser Artikel gibt Ihnen eine Idee, mit Aspose.Words für Android über Java. Es wird zeigen, wie eine neue Android Projekt von Grund auf, einen Hinweis auf die Aspose.Words JAR und erstellen Sie ein neues Dokument, das im DOCX-Format auf Festplatte gespeichert wird. Dieses Beispiel verwendet [Android Studio](https://developer.android.com/studio/index.html) für die Entwicklung und die Anwendung läuft auf Android Emulator. mit dem Aspose.Words für Android über Java, bitte folgen Sie diesem Schritt-für-Schritt-Tutorial, um eine App zu erstellen, die verwendet Aspose.Words für Android über Java:

ANHANG Download und die [Android Studio](https://developer.android.com/studio/index.html) und installieren Sie es an jedem Ort.
ANHANG Lauft! Android Studio.
ANHANG Neues erstellen Android Bewerbungsprojekt.<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Kopieren Sie Aspose-words-17.5-android.via.java.jar in das Projekt libs/folder<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
ANHANG Wählen Sie Projektabschnitt aus (aus dem Dateimenü und klicken Sie auf die Registerkarte Abhängigkeiten.
   1. Klicken Sie auf die "+" Taste, wählen Sie die Dateiabhängigkeit Option.
   1. Wählen Aspose.Words Bibliothek aus dem Ordner libs und klicken Sie auf OK.<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
ANHANG Synchronisieren Sie das Projekt mit Gradle-Dateien, falls erforderlich<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
ANHANG Um auf die SDcard zuzugreifen, müssen spezielle Berechtigungen hinzugefügt werden. Klicken Sie auf die AndroidManifest.xml Datei und wählen Sie die XML-Ansicht. Fügen Sie die folgende Zeile in die Datei hinzu <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
ANHANG Navigieren Sie zurück in den Codeabschnitt der App und fügen Sie die folgenden Importe hinzu:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
Und dann fügen Sie den folgenden Code in den Körper der onCreate-Methode ein, um ein neues Dokument von Grund auf zu erstellen Aspose.Words,
Text einfügen und auf die SDCard im DOCX-Format speichern.<br/>
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
{{< /highlight >}}<br/>
Der vollständige Code sollte so aussehen:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
ANHANG Jetzt starten Sie die Anwendung wieder. Diesmal die Aspose.Words Der Code wird im Hintergrund ausgeführt und ein Dokument generiert, das auf der SDcard gespeichert wird.<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
ANHANG Um das erstellte Dokument zu dem Menü Werkzeuge zu sehen, wählen Sie dann Android und wählen Android Gerätemonitor<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
ANHANG Verwenden Sie den Standard-Viewer, um das Dokument zu öffnen. Die von der App generierte Ausgabe mit nur wenigen Zeilen von Code sieht so aus:<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)