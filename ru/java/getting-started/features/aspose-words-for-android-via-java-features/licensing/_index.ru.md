---
title: Лицензирование
second_title: Aspose.Words для Java
articleTitle: Лицензирование
linktitle: Лицензирование
description: "Лицензирование Aspose.Words для Android через Java."
type: docs
weight: 60
url: /ru/java/licensing-android/
---

Иногда, чтобы лучше изучить систему, хочется как можно быстрее погрузиться в код. Чтобы сделать это проще, Aspose.Words Предоставляет различные планы покупки или предлагает бесплатную пробную версию и 30-дневную временную лицензию для оценки.

{{% alert color="primary" %}}

Обратите внимание, что существует ряд общих политик и практик, которые помогут вам оценить, правильно лицензировать и приобрести наши продукты. Вы можете найти их в [Политика покупок и FAQ](https://purchase.aspose.com/policies/) Раздел.

{{% /alert %}}

## Бесплатная пробная или временная лицензия

Aspose.Words Это невероятное программное обеспечение, которое разработчики могут попробовать перед покупкой. Вы можете легко скачать/установить Aspose.Words для Java и Aspose.Words для Android через Java [со страницы загрузки](https://releases.aspose.com/words/androidjava/) для оценки.

Версия оценки такая же, как и купленная - пробная версия просто становится лицензированной, когда вы добавляете несколько строк кода для применения лицензии.

{{% alert color="primary" %}}

Узнайте больше о бесплатной пробной или временной лицензии Aspose.Words для Android через Java на [Лицензирование и подписка](/words/ru/java/licensing/).

{{% /alert %}}

## Купленная лицензия

После покупки необходимо применить лицензионный файл или включить лицензионный файл в качестве встроенного ресурса. В этом разделе описаны варианты того, как это можно сделать, а также комментарии по некоторым общим вопросам.

{{% alert color="primary" %}}

Лицензия - это простой текстовый XML-файл, который содержит такие данные, как имя продукта, количество лицензированных разработчиков, дата истечения срока действия подписки и т.д.

Файл подписан в цифровом виде, поэтому не изменяйте файл. Даже непреднамеренное добавление дополнительной строки в файл сделает его недействительным.

{{% /alert %}}

{{% alert color="primary" %}}

Вам необходимо установить лицензию:

* Только один раз в домене приложения
* перед использованием любого другого Aspose.Words классы

{{% /alert %}}

{{% alert color="primary" %}}

Вы можете найти информацию о ценах на [Информация о ценах](https://purchase.aspose.com/pricing/words/family/) Страница.

{{% /alert %}}

### Защита приобретенной лицензии

После покупки лицензии нужно внимательно прочитать информацию на странице [Защита приобретенной лицензии](https://purchase.aspose.com/orders/protecting-your-license-file) Чтобы защитить ваш лицензионный файл. Обратите внимание, что эта страница доступна для просмотра только при наличии платной лицензии.

### Лицензия, применяющая опции

Лицензии могут применяться из различных мест:

* Явный путь
* Встроенный ресурс
* As a Metered License - новый механизм лицензирования

#### Загрузка файла лицензии

В Aspose.Words для Android через Java, Лицензия может быть [Лицензирование и подписка](/words/ru/java/licensing/), или загружены из потока:

1. Поместите файл лицензии в любое место **/mnt/sdcard/**.
1. Создайте поток, который ссылается на файл.
1. Перейти в поток (содержащий файл лицензии) `SetLicense` метод.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

Использование лицензии из встроенного ресурса. Для доступа к лицензии в качестве ресурса по имени Android Файл пакета:

1. Добавьте файл лицензии в качестве ресурса в ваше приложение. **res/raw** папка.
   Лицензионный файл должен быть виден в **res/raw** папка.
1. Доступ/загрузка лицензии с ресурса со следующей выборкой кода.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Использовать Metered License

Aspose.Words Позволяет разработчикам применять дозированный ключ. Это новый механизм лицензирования. Новый механизм лицензирования будет использоваться наряду с существующим методом лицензирования. Клиенты, которые хотят быть выставлены на счет на основе использования API Функции могут использовать дозированное лицензирование.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### Изменение имени файла лицензии

Имя файла лицензии не должно бытьAspose.Words.Android.JavaЛик. Вы можете переименовать его во что угодно и использовать это имя при звонке. `License.SetLicense`.

### Исключение: не могу найти имя файла лицензии

Когда вы загружаете купленную лицензию, файл лицензии называется **Aspose.Words.Android.Java.lic** По умолчанию. Лицензионный файл загружается через ваш браузер, и некоторые браузеры распознают лицензионный файл как XML и добавляют расширение .xml к имени. Загруженный файл становится **Aspose.Words.Android.Java.lic.XML**.

Когда Microsoft Windows сконфигурирован для сокрытия расширений известных типов файлов (к сожалению, в большинстве случаев это по умолчанию). Windows Установки), файл лицензии указан как **Aspose.Words.Android.Java.lic** в Windows Исследователь. Похоже на ожидаемое имя файла. Если ты позвонишь `License.SetLicense` и пройтиAspose.Words.Android.Java.lic', вы увидите и исключение, потому что такого файла нет

Чтобы решить проблему, переименуйте файл, чтобы удалить невидимое расширение .xml. Мы рекомендуем отключить опцию "скрыть расширения" в Microsoft Windows.

## Использование многоцелевых продуктов

Если вы используете несколько продуктов Aspose в приложении, например Aspose.Words и `Aspose.Cells`, Вот несколько полезных советов.

- Установите лицензию на каждый продукт Aspose отдельно.
  Даже если у вас есть один файл лицензии для всех компонентов, например, Aspose. Всего.Android.Java.lic', тебе все еще нужно позвонить `License.SetLicense` Метод отдельно для каждого продукта.
- Используйте полностью квалифицированное название класса лицензии.
  Каждый Изделие имеет `License` Класс в пространстве имен. Например, Aspose.Words Есть com.aspose.words. Лицензия и `Aspose.Cells` Имеет com.aspose.cells. Класс лицензии. Использование полностью квалифицированного названия класса позволяет избежать путаницы относительно того, какая лицензия применяется к какому продукту.