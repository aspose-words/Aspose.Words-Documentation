---
title: Ваше ім'я Android Зареєструватися Java
second_title: Aspose.Words для Java
articleTitle: Ваше ім'я
linktitle: Ваше ім'я
description: "Встановлення Aspose.Words для Android Зареєструватися Javaй"
type: docs
weight: 30
url: /uk/java/your-first-application/
---

Ця стаття дає вам уявлення про початок роботи Aspose.Words для Android Зареєструватися Javaй Як налаштувати новий Android проект з нуля, додати посилання на Aspose.Words JAR і створити новий документ, який зберігається у форматі DOCX. Цей приклад використовує [Android Студії](https://developer.android.com/studio/index.html) для розробки і застосування здійснюється на Android Емулятор. Для початку Aspose.Words для Android Зареєструватися Java, будь ласка, стежте за цим покроковим підручником, щоб створити додаток, який використовує Aspose.Words для Android Зареєструватися Java:

1,1 км Завантажити і [Android Студії](https://developer.android.com/studio/index.html) і встановити його на будь-яке місце.
1,1 км Запуск Android Студія.
1,1 км Створити новий Android Проект заявки.<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Скопіювати фрази-17.5-андроїд.via.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java.java у ваш проект libs/fold/fold/збір<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1,1 км Виберіть розділ проекту (з меню файлу і натисніть на вкладку "В залежності".
   1. Клацніть на кнопку "+", виберіть параметр залежності файлу.
   1. Виберіть Aspose.Words Бібліотека з папки libs і натисніть на OK.<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1,1 км Синхронізація проекту з файлами Gradle, якщо це потрібно<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1,1 км Для доступу до спеціальних дозволів SDcard необхідно додати спеціальні дозволи. Натисніть на AndroidManifest.xml файл і виберіть вид XML. Додати наступний рядок до файлу <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1,1 км Навігація назад до розділу коду додатку і додаємо наступний імпорт:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
А потім вставте наступний код в тіло методу onCreate для створення нового документа з нуля за допомогою Aspose.Words,
введіть текст і зберегти його на SDCard у форматі DOCX.<br/>
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
Повний код повинен виглядати так:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1,1 км Тепер знову запустіть програму. В цей час Aspose.Words Введіть номер мобільного, який Ви вказали при укладаннi договору з банком - для ідентифікації.<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1,1 км Для перегляду створеного документу навігація в меню Інструменти виберіть Android і вибрати Android Моніторинг пристроїв<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1,1 км Використовуйте за замовчуванням, щоб відкрити документ. Вихід, що генерується додатком лише кількома лініями коду, виглядає так:<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)