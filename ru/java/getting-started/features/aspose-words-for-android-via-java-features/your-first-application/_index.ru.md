---
title: Ваша первая заявка на Android через Java
second_title: Aspose.Words для Java
articleTitle: Ваше первое приложение
linktitle: Ваше первое приложение
description: "Установка Aspose.Words для Android через Java."
type: docs
weight: 30
url: /ru/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Эта статья дает вам представление о том, как начать Aspose.Words для Android через Java. Он покажет, как создать новый Android проект с нуля, добавить ссылку на Aspose.Words JAR Создайте новый документ, который будет сохранен на диск в формате DOCX. Этот пример использует [Android Студия](https://developer.android.com/studio/index.html) Для разработки и применения выполняется на Android Эмулятор. Чтобы начать с Aspose.Words для Android через JavaПожалуйста, следуйте этому пошаговому руководству, чтобы создать приложение, которое использует Aspose.Words для Android через Java:

1. Скачать и The [Android Студия](https://developer.android.com/studio/index.html) И установить его в любом месте.
1. Беги. Android Студия.
1. Создать новый Android Проект приложения.<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1.Копировать слова-составы-17.5-android.via.java.jar в либры / папку вашего проекта<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. Выберите раздел проекта (из меню файла и нажмите на вкладку Зависимости).
   1.Нажмите на кнопку "+", выберите опцию зависимости от файла.
   1.Выбрать Aspose.Words Библиотека из папки libs и нажмите на OK.<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. Синхронизация проекта с файлами Gradle при необходимости<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. Для доступа к SDcard необходимо добавить специальные разрешения. Нажмите на AndroidManifest.xml файл и выбрать вид XML. Добавить следующую строку в файл <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. Перейдите в раздел кода приложения и добавьте следующий импорт:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
А затем вставить следующий код в корпус метода onCreate для создания нового документа с нуля с помощью Aspose.Words,
Вставьте некоторый текст и сохраните его в SDCard в формате DOCX.<br/>
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
Полный код должен выглядеть так:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. Теперь запустите приложение снова. На этот раз Aspose.Words Код будет работать в фоновом режиме и генерировать документ, который сохраняется на SDcard.<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. Чтобы просмотреть созданный документ, перейдите в меню Инструменты, затем выберите Android и выбрать Android Монитор устройств<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. Используйте просмотрщик по умолчанию, чтобы открыть документ. Выход, генерируемый приложением с несколькими строками кода, выглядит следующим образом:<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
