---
title: Установка
second_title: Aspose.Words для .NET
articleTitle: Установка
linktitle: Установка
description: "Устанавливать Aspose.Words для .NET использовать Visual Studio Такие инструменты, как Manage NuGet Packages или Package Manager Console Установщик MSI. Используйте Full Trust разрешение, установленное C#."
type: docs
weight: 10
url: /ru/net/installation/
timestamp: 2024-01-27-14-07-04
---

Убедитесь, что ваша машина соответствует [Системные требования](/words/ru/net/system-requirements/) Прежде чем начать.

В этой статье объясняется, как установить Aspose.Words для .NET на вашем компьютере.

## Установка или обновление Aspose.Words для .NET использовать Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet Самый простой способ скачать и установить [Aspose.Words для .NET](https://www.nuget.org/packages/Aspose.Words/) APIС. Чтобы сделать это, выполните следующие шаги:

1. Открыть*Microsoft Visual Studio* и *Manage NuGet Packages* От меню до менеджера пакетов
2. Ищите "aspose" или "aspose.words", чтобы найти желаемое "aspose". API<br/>
      <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-words-nuget" style="width:800px"/>
3. Выберите желаемое положение API и нажмите "Установить"

Выбранный API Он будет загружен и указан в вашем проекте.

Вы также можете обновить Aspose.Words для .NET Желаемая версия с использованием *Manage NuGet Packages*

## Установка или обновление Aspose.Words использовать Package Manager Console

Вы также можете установить или обновить Aspose.Words для .NET APIИспользуя *Package Manager Console* Чтобы сделать это, выполните следующие шаги:

1. Открыть*Microsoft Visual Studio* и *Package Manager Console* из меню открыть консоль менеджера пакетов<br/>
      <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. Введите команду `Install-Package Aspose.Words` и нажмите Enter, чтобы установить последний полный выпуск в ваше приложение<br/>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br/>
   {{% alert color="primary" %}}Кроме того, вы можете добавить `-prerelease` суффикс к команде, чтобы указать, что последний выпуск, включая исправления, также должен быть установлен.{{% /alert %}}
3. После загрузки вы увидите сообщения подтверждения<br/>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/><br/>
   {{% alert color="primary" %}}Если вы не знакомы с [Взять EULA](https://about.aspose.com/legal/eula/), Рекомендуется прочитать лицензию, указанную в URL.{{% /alert %}}
4. Теперь вы можете обнаружить, что Aspose.Words Он был успешно добавлен и указан в вашей заявке для вас.<br/>
      <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-words-nuget-references" style="width:400px"/>

В *Package Manager Console* Вы также можете использовать `Update-Package Aspose.Words` Команда для проверки обновлений на Aspose.Words Упакуйте и установите их, если они есть. Вы также можете добавить `-prerelease` суффикс для обновления последней версии.

## Устанавливать Aspose.Words для .NET Использование Installer

Aspose.Words для .NET может быть установлен путем прямой загрузки установщика MSI из [Скачать раздел](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

Вы должны войти в систему, чтобы загрузить установщик. Если вы еще не зарегистрированы, вы можете зарегистрироваться бесплатно.

{{% /alert %}}

Установить Aspose.Words для .NET, Следуйте этим шагам:

1.Загрузить `Aspose.Words_`{LatestVersion}.msi из [Скачать раздел](https://releases.aspose.com/words/)
2. Doble-click загруженный файл, тем самым запуская мастер настройки, следуйте инструкциям мастера настройки<br/>
      <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-words-setup-1" style="width:500px"/>
3. Когда мастер настройки завершит установку, необходимые файлы будут доступны в папке на указанном пути папки.<br/>
      <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-words-setup-4" style="width:500px"/>
4. Откройте свое решение / проект Visual Studio
5. Нажмите правой кнопкой мыши на свой проект в *Solution Explorer* и добавьте ссылку на установленные сборки
6. Aspose.Words для .NET Установленные сборки будут отображаться в расширениях в разделе сборки - просто выберите необходимый компонент DLL.<br/>
      <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. Нажмите OK

## Соображения Когда бегать в общей Server окружающая среда

Всем встать .NET Компоненты рекомендуется использовать вместе с *Full Trust* Разрешение установлено. Это связано с тем, что .NET Компоненту иногда требуется доступ к настройкам реестра и файлам, расположенным в местах, отличных от виртуального каталога, таких как шрифты чтения. Кроме того, `Aspose.NET` Компоненты основаны на ядре .NET Системные классы, некоторые из которых также требуютFull Trust* разрешение на выезд в некоторых случаях.

Интернет-сервис Поставщики, размещающие несколько приложений от разных компаний, в основном обеспечивают уровень безопасности Medium Trust. В случае .NET 2.0, такой уровень безопасности может налагать следующие ограничения, которые могут повлиять на способность Aspose.Words Чтобы правильно выполнять:

- **RegistryPermission** недоступна. Это означает, что вы не можете получить доступ к реестру, который необходим для перечисления установленных шрифтов при оформлении документов.
- **FileIOPermission** ограничены. Это означает, что вы можете получить доступ только к файлам в иерархии виртуальных каталогов вашего приложения. Это также потенциально означает, что шрифты не могут быть прочитаны во время экспорта.

По указанным выше причинам рекомендуется бегать Aspose.Words с Full Trust Разрешения. Вы можете обнаружить, что некоторые функции библиотеки будут работать при выполнении различных задач со средним доверием, а некоторые не будут, например, рендеринг. Это может быть связано с вызовами обработки изображений GDI+.
