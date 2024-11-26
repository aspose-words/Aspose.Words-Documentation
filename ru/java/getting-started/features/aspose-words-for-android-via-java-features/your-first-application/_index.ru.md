---
title: Ваша первая заявка на Android через Java
second_title: Aspose.Words для Java
articleTitle: Ваше первое заявление
linktitle: Ваше первое заявление
description: "Установка Aspose.Words для Android через Java."
type: docs
weight: 30
url: /ru/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Эта статья дает вам представление о том, как начать работу с Aspose.Words для Android через Java. В нем будет продемонстрировано, как создать новый проект Android с нуля, добавить ссылку на проект Aspose.Words JAR и создать новый документ, который будет сохранен на диске в формате DOCX. В этом примере используется [Android Студия](https://developer.android.com/studio/index.html) для разработки, и приложение запускается на эмуляторе Android. Чтобы начать работу с Aspose.Words для Android через Java, пожалуйста, следуйте этому пошаговому руководству, чтобы создать приложение, которое использует Aspose.Words для Android через Java.:

1. Загрузите и запустите [Android Студия](https://developer.android.com/studio/index.html) и установите его в любом месте.
1. Запустите студию Android.
1. Создайте новый проект приложения Android.<br>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Скопируйте aspose-words-17.5-android.via.java.jar в папку libs/вашего проекта<br>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. Выберите раздел проекта (в меню файл) и перейдите на вкладку Зависимости.
   1. Нажмите на кнопку "+", выберите параметр зависимости от файла.
   1. Выберите библиотеку Aspose.Words из папки libs и нажмите на OK.<br>
   ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. При необходимости синхронизируйте проект с файлами Gradle<br>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. Чтобы получить доступ к SDcard, необходимо добавить специальные разрешения. Щелкните по файлу AndroidManifest.xml и выберите режим XML. Добавьте в файл следующую строку <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. Вернитесь в раздел кода приложения и добавьте следующие импортные данные:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
А затем вставьте следующий код в тело метода onCreate, чтобы создать новый документ с нуля, используя Aspose.Words,
вставьте немного текста и сохраните его в формате SDCard в формате DOCX.<br>
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
Полный код должен выглядеть следующим образом:<br>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. Теперь запустите приложение еще раз. На этот раз код Aspose.Words будет запущен в фоновом режиме и сгенерирует документ, который будет сохранен в SDcard.<br>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. Чтобы просмотреть созданный документ, перейдите в меню Сервис, затем выберите Android и выберите Android Монитор устройства<br>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. Для открытия документа используйте программу просмотра по умолчанию. Выходные данные, сгенерированные приложением с помощью всего нескольких строк кода, выглядят следующим образом:<br>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
