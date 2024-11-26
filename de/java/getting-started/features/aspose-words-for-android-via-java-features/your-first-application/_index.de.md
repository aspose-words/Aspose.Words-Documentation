---
title: Ihre erste Bewerbung für Android über Java
second_title: Aspose.Words für Java
articleTitle: Ihre erste Bewerbung
linktitle: Ihre erste Bewerbung
description: "Installation von Aspose.Words für Android über Java."
type: docs
weight: 30
url: /de/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Dieser Artikel gibt Ihnen eine Vorstellung davon, wie Sie mit Aspose.Words für Android über Java beginnen können. Es wird gezeigt, wie Sie ein neues Android -Projekt von Grund auf neu einrichten, einen Verweis auf Aspose.Words JAR hinzufügen und ein neues Dokument erstellen, das im DOCX -Format auf der Festplatte gespeichert wird. In diesem Beispiel wird verwendet [Android Wohnung](https://developer.android.com/studio/index.html) für die Entwicklung und die Anwendung wird auf dem Android Emulator ausgeführt. Um mit Aspose.Words für Android über Java zu beginnen, folgen Sie bitte dieser Schritt-für-Schritt-Anleitung, um eine App zu erstellen, die Aspose.Words für Android über Java verwendet:

1. Download und die [Android Wohnung](https://developer.android.com/studio/index.html) und installieren Sie es an einem beliebigen Ort.
1. Führen Sie das Android Studio aus.
1. Erstellen Sie ein neues Android-Anwendungsprojekt.<br>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Kopiere aspose-words-17.5-android.via.java.jar in den Ordner libs / deines Projekts<br>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. Wählen Sie Projektabschnitt (aus dem Menü Datei und klicken Sie auf die Registerkarte Abhängigkeiten.
   1. Klicken Sie auf die Schaltfläche "+" und wählen Sie die Option Dateiabhängigkeit.
   1. Wählen Sie Aspose.Words Bibliothek aus dem Ordner libs und klicken Sie auf OK.<br>
   ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. Synchronisieren Sie das Projekt bei Bedarf mit Gradle-Dateien<br>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. Um auf die SDcard zuzugreifen, müssen spezielle Berechtigungen hinzugefügt werden. Klicken Sie auf die AndroidManifest.xml-Datei und wählen Sie die XML-Ansicht. Fügen Sie der Datei die folgende Zeile hinzu <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. Navigieren Sie zurück zum Codeabschnitt der App und fügen Sie die folgenden Importe hinzu:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
Fügen Sie dann den folgenden Code in den Hauptteil der onCreate -Methode ein, um mit Aspose.Words ein neues Dokument von Grund auf neu zu erstellen,
fügen Sie Text ein und speichern Sie ihn im Format SDCard im Format DOCX.<br>
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
Der vollständige Code sollte so aussehen:<br>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. Führen Sie die Anwendung nun erneut aus. Dieses Mal wird der Aspose.Words -Code im Hintergrund ausgeführt und generiert ein Dokument, das in SDcard gespeichert wird.<br>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. Um das erstellte Dokument anzuzeigen, navigieren Sie zum Menü Extras, wählen Sie Android und wählen Sie Android Gerätemonitor<br>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. Verwenden Sie den Standard-Viewer, um das Dokument zu öffnen. Die von der App mit nur wenigen Codezeilen generierte Ausgabe sieht folgendermaßen aus:<br>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
