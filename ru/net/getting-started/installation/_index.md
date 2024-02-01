---
title: Монтаж
second_title: Aspose.Words для .NET
articleTitle: Монтаж
linktitle: Монтаж
description: "Установите Aspose.Words для .NET, используя инструменты Visual Studio, такие как Manage NuGet Packages или Package Manager Console, и установщик MSI. Используйте набор разрешений Full Trust в C#."
type: docs
weight: 10
url: /ru/net/installation/
---

Прежде чем начать, убедитесь, что ваша машина соответствует [Системные Требования](/words/ru/net/system-requirements/).

В этой статье объясняется, как установить Aspose.Words для .NET на свой компьютер.

## Установите или обновите Aspose.Words для .NET, используя Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet — это самый простой способ загрузить и установить файлы [Aspose.Words для .NET](https://www.nuget.org/packages/Aspose.Words/) API. Для этого выполните следующие действия:

1. Откройте *Microsoft Visual Studio* и *Manage NuGet Packages* в меню, чтобы открыть диспетчер пакетов
2. Найдите "aspose" или "aspose.words", чтобы найти нужный API-код Aspose.<br>
  <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-слова-nuget" style="width:800px"/>
3. Выберите нужный Aspose API и нажмите "Установить"

Выбранный API-код будет загружен и использован в вашем проекте.

Вы также можете обновить Aspose.Words для .NET до нужной версии, используя *Manage NuGet Packages*.

## Установите или обновите Aspose.Words, используя Package Manager Console

Вы также можете установить или обновить Aspose.Words для файлов .NET API, используя *Package Manager Console*. Для этого выполните следующие действия:

1. Откройте *Microsoft Visual Studio* и *Package Manager Console* в меню, чтобы открыть консоль менеджера пакетов.<br>
  <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. Введите команду `Install-Package Aspose.Words` и нажмите Enter, чтобы установить последнюю полную версию в ваше приложение.<br>
  <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br>
  {{% alert color="primary" %}}Кроме того, вы можете добавить к команде суффикс `-prerelease`, чтобы указать, что также должна быть установлена последняя версия, включая исправления.{{% /alert %}}
3. После загрузки вы увидите сообщения с подтверждением.<br>
  <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/><br>
  {{% alert color="primary" %}}Если вы не знакомы с [Aspose Лицензионное соглашение](https://about.aspose.com/legal/eula/), рекомендуется прочитать лицензию, указанную в URL.{{% /alert %}}
4. Теперь вы можете обнаружить, что Aspose.Words был успешно добавлен и указан в вашем приложении.<br>
  <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-words-nuget-references" style="width:400px"/>

В *Package Manager Console* вы также можете использовать команду `Update-Package Aspose.Words`, чтобы проверить наличие обновлений пакета Aspose.Words и установить их, если они есть. Вы также можете добавить суффикс `-prerelease`, чтобы обновить последнюю версию.

## Установите Aspose.Words для .NET с помощью установщика

Aspose.Words для .NET можно установить, загрузив установщик MSI напрямую из [раздел загрузок](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

Вы должны войти в систему, чтобы загрузить установщик. Если вы еще не зарегистрированы, вы можете зарегистрироваться бесплатно.

{{% /alert %}}

Чтобы установить Aspose.Words для .NET, выполните следующие действия:

1. Загрузите `Aspose.Words_`{LatestVersion}.msi из [раздел загрузок](https://releases.aspose.com/words/)
2. Дважды щелкните загруженный файл, тем самым запустив мастер установки, следуйте инструкциям мастера установки.<br>
  <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-слова-настройка-1" style="width:500px"/>
3. Когда мастер установки завершит установку, необходимые файлы будут доступны в папке по указанному пути.<br>
  <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-слова-настройка-4" style="width:500px"/>
4. Откройте свое решение/проект в формате Visual Studio
5. Щелкните правой кнопкой мыши свой проект в *Solution Explorer* и добавьте ссылку на установленные сборки
6. Aspose.Words для установленных сборок .NET появится в расширениях в разделе "Сборки" — просто выберите необходимый компонент DLL.<br>
  <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-слова-настройка-5" style="width:800px"/>
7. Наконец, нажмите ОК

## Что следует учитывать при работе в среде общего сервера

Все .NET-компоненты Aspose рекомендуется запускать с набором разрешений *Full Trust*. Это связано с тем, что компоненту Aspose .NET иногда требуется доступ к настройкам реестра и файлам, расположенным в местах, отличных от виртуального каталога, например, для чтения шрифтов. Более того, компоненты `Aspose.NET` основаны на основных системных классах .NET, для запуска некоторых из которых в некоторых случаях также требуется разрешение *Full Trust*.

Интернет-провайдеры, размещающие множество приложений от разных компаний, в основном обеспечивают уровень безопасности *Medium Trust*. В случае .NET 2.0 такой уровень безопасности может накладывать следующие ограничения, которые могут повлиять на правильную работу Aspose.Words:

- **RegistryPermission** недоступен. Это означает, что вы не можете получить доступ к реестру, который необходим для перечисления установленных шрифтов при рендеринге документов.
- **FileIOPermission** ограничен. Это означает, что вы можете получить доступ только к файлам в иерархии виртуальных каталогов вашего приложения. Это также потенциально означает, что шрифты не могут быть прочитаны во время экспорта.

По указанным выше причинам рекомендуется запускать Aspose.Words с разрешениями Full Trust. Вы можете обнаружить, что некоторые функции библиотеки будут работать при выполнении различных задач со средним уровнем доверия, а некоторые — нет, например, при рендеринге. Это может быть связано с вызовами обработки изображений GDI+.
