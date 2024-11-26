---
title: Първата Ви молба за Android през Java
second_title: Aspose.Words вместо Java
articleTitle: Първата ти молба
linktitle: Първата ти молба
description: "Инсталиране Aspose.Words вместо Android през Java."
type: docs
weight: 30
url: /bg/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Тази статия ви дава идея за започване с Aspose.Words вместо Android през Java. Тя ще покаже как да се създаде нов Android проект от нулата, добавете препратка към Aspose.Words JAR и създаване на нов документ, който се записва на диск в DOCX формат. Този пример се използва [Android Студио](https://developer.android.com/studio/index.html) за разработване и прилагането се извършва на Android Емулатор. Да започнем с Aspose.Words вместо Android през JavaМоля, следвайте този урок стъпка по стъпка, за да създадете приложение, което използва Aspose.Words вместо Android през Java:

1. Изтегляне и [Android Студио](https://developer.android.com/studio/index.html) и да го инсталирате на всяко място.
1. Стартирай Android Студио.
1. Създаване на нов Android Проект за кандидатстване.<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Копирайте ASpose-words-17.5-android.via.java.jar във вашия проект<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. Изберете раздел на проекта (от менюто на файла и кликнете върху раздела на зависимостите.
   1. Кликнете върху бутона "+," изберете опцията за зависимост на файла.
   1. Избор Aspose.Words библиотека от папката за либи и кликнете върху OK.<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. Синхронизиране на проекта с файлове на Gradle при необходимост<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. За достъп до специалните разрешения на SDcard трябва да бъдат добавени. Кликнете върху AndroidManifest.xml файл и изберете XML изглед. Добавяне на следния ред към файла <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. Връщане обратно към раздела с кодове на приложението и добавяне на следния внос:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
И след това въведете следния код в тялото на метода onCreate за създаване на нов документ от нулата, използвайки Aspose.Words,
Поставете текст и го запишете в SDCard във формат DOCX.<br/>
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
Пълният код трябва да изглежда така:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. Сега пусни молбата отново. Този път Aspose.Words Кодът ще работи на заден план и генерира документ, който се записва в SDcard.<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. За да видите създадения документ, насочете се към менюто Tools след това изберете Android и изберете Android Монитор на устройство<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. Използвайте екрана по подразбиране, за да отворите документа. Изходът, генериран от приложението само с няколко реда код, изглежда така:<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
