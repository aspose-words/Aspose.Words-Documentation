---
title: Twój pierwszy wniosek Android przez Java
second_title: Aspose.Words zamiast Java
articleTitle: Twoje pierwsze zastosowanie
linktitle: Twoje pierwsze zastosowanie
description: "Instalacja Aspose.Words zamiast Android przez Java."
type: docs
weight: 30
url: /pl/java/your-first-application/
---

Ten artykuł daje pomysł na rozpoczęcie z Aspose.Words zamiast Android przez Java. Zademonstruje, jak utworzyć nowy Android projekt od podstaw, dodać odniesienie do Aspose.Words JAR i utworzyć nowy dokument, który jest zapisywany do dysku w formacie DOCX. Ten przykład wykorzystuje [Android Studio](https://developer.android.com/studio/index.html) dla rozwoju i aplikacji jest prowadzona na Android Emulator. Aby zacząć z Aspose.Words zamiast Android przez Java, proszę postępować zgodnie z tym tutorial krok-by-krok, aby utworzyć aplikację, która wykorzystuje Aspose.Words zamiast Android przez Java:

1. Pobieranie i [Android Studio](https://developer.android.com/studio/index.html) i zainstalować go w dowolnym miejscu.
1. Uruchom Android Studio.
1. Utwórz nowy Android Projekt aplikacji.<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Kopiuj aspose- words- 17.5 -android.via.java.jar do lib / folderu projektu<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. Wybierz Sekcję Projektu (z menu plików i kliknij na zakładkę Poleżenia.
   1. Kliknij przycisk "+" i wybierz opcję zależności pliku.
   1. Wybierz Aspose.Words biblioteka z folderu libs i kliknij na OK.<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. Synchronizacja projektu z plikami Gradle w razie potrzeby<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. W celu uzyskania dostępu do specjalnych uprawnień SDcard należy dodać. Kliknij na AndroidPlik Manifest.xml i wybierz widok XML. Dodaj następujący wiersz do pliku <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. Przejdź z powrotem do sekcji kodu aplikacji i dodaj następujący import:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
Następnie należy umieścić następujący kod w ciele metody onCreate, aby utworzyć nowy dokument od podstaw używając Aspose.Words,
wstawić tekst i zapisać go do karty SDCard w formacie DOCX.<br/>
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
Pełny kod powinien wyglądać tak:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. Teraz uruchom aplikację ponownie. Tym razem Aspose.Words kod zostanie uruchomiony w tle i wygeneruje dokument zapisany na karcie SDcard.<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. Aby zobaczyć utworzony dokument przejdź do menu Narzędzia następnie wybierz Android i wybrać Android Monitor urządzenia<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. Użyj domyślnej przeglądarki, aby otworzyć dokument. Wyjście generowane przez aplikację z kilkoma wierszami kodu wygląda następująco:<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)