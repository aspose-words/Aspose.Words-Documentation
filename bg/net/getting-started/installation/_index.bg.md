---
title: Монтаж
second_title: Aspose.Words вместо .NET
articleTitle: Монтаж
linktitle: Монтаж
description: "Инсталиране Aspose.Words вместо .NET приложение Visual Studio инструменти като Manage NuGet Packages или Package Manager Console и инсталатора на MSI. Използвайте Full Trust разрешение за въвеждане C#."
type: docs
weight: 10
url: /bg/net/installation/
---

Уверете се, че машината ви отговаря на [Системни изисквания](/words/bg/net/system-requirements/) Преди да започнете.

Тази статия обяснява как да инсталирате Aspose.Words вместо .NET на компютъра ти.

## Инсталиране или обновяване Aspose.Words вместо .NET приложение Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet е най-лесният начин за изтегляне и инсталиране [Aspose.Words вместо .NET](https://www.nuget.org/packages/Aspose.Words/) APIс. За да направите това, следвайте следните стъпки:

1. Отваряне *Microsoft Visual Studio* и *Manage NuGet Packages* от менюто за отваряне на пакет мениджър
2. Търсене на "освобождаване" или "spose.words," за да намерите желаната Aspace API<br/>
      <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-words-nuget" style="width:800px"/>
3. Изберете желаната доза API и щракнете върху "Инсталиране"

Избор API ще бъде изтеглена и посочена във вашия проект.

Можете също така да актуализирате Aspose.Words вместо .NET към желаната версия с помощта на *Manage NuGet Packages*.

## Инсталиране или обновяване Aspose.Words приложение Package Manager Console

Можете също така да инсталирате или актуализирате Aspose.Words вместо .NET API*Package Manager Console*. За да направите това, следвайте следните стъпки:

1. Отваряне *Microsoft Visual Studio* и *Package Manager Console* от менюто за отваряне на конзола пакет мениджър<br/>
      <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. Въведете командата `Install-Package Aspose.Words` и натиснете Enter, за да инсталирате най-новото пълно освобождаване във вашето приложение<br/>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br/>
   {{% alert color="primary" %}}В допълнение, можете да добавите `-prerelease` Наставка към командата за уточняване, че последното освобождаване, включително горещите поправки, също следва да бъде инсталирано.{{% /alert %}}
3. След свалянето ще видите съобщения за потвърждение<br/>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/><br/>
   {{% alert color="primary" %}}Ако не сте запознати с [Разположение на EULA](https://about.aspose.com/legal/eula/), се препоръчва да прочетете лиценза, посочен в URL.{{% /alert %}}
4. Сега можеш да намериш това. Aspose.Words е добавен успешно и посочен във Вашето заявление за Вас<br/>
      <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-words-nuget-references" style="width:400px"/>

В *Package Manager Console*, можете също да използвате `Update-Package Aspose.Words` команда за проверка на актуализациите Aspose.Words пакет и да ги инсталирате, ако има. Можете също така да добавите `-prerelease` Наставка за актуализиране на последното издание.

## Инсталиране Aspose.Words вместо .NET използване на инсталатор

Aspose.Words вместо .NET може да бъде инсталиран чрез директно изтегляне на MSI инсталатора от [Раздел за изтегляне](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

Трябва да сте влезли, за да изтеглите инсталатора. Ако все още не сте регистрирани, можете да се регистрирате безплатно.

{{% /alert %}}

Инсталиране Aspose.Words вместо .NET, Следвайте следните стъпки:

1. Изтеглете `Aspose.Words_`{LatestVersion}. msi от [Раздел за изтегляне](https://releases.aspose.com/words/)
2. Кликнете върху изтегления файл, като по този начин стартирате настройката магьосник, следвайте инструкциите на съветника за настройка<br/>
      <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-words-setup-1" style="width:500px"/>
3. Когато съветникът за настройка завърши инсталацията, необходимите файлове ще бъдат на разположение в папката на предоставената директория<br/>
      <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-words-setup-4" style="width:500px"/>
4. Отворете вашето решение/проект в Visual Studio
5. Кликнете с десния бутон върху проекта си в *Solution Explorer* и добавете препратка към инсталираните комплекти
6. Aspose.Words вместо .NET инсталираните монтажни възли ще се появят в разширения под секцията Assemblys.<br/>
      <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. Най-накрая, кликнете OK

## Разглеждане Когато тичаш в споделяна Server Околна среда

Всички стойности .NET компоненти се препоръчва да се работи с *Full TrustРазрешително. Това е така, защото Aspose .NET компонент понякога се нуждае от достъп до настройките на регистъра и файлове, разположени на места, различни от виртуалната директория, като например четене на шрифтове. Освен това, `Aspose.NET` компонентите са базирани на ядро .NET системни класове, някои от които също изискват *Full Trust* разрешение да тичам в някои случаи.

Интернет услуги Доставчиците на множество приложения от различни компании най-вече налагат *Медий Тръст* ниво на сигурност. В случай на .NET 2.0 такова ниво на сигурност може да наложи следните ограничения, които могат да повлияят на способността на Aspose.Words да изпълнява правилно:

- **RegistryPermission** не е на разположение. Това означава, че не можете да получите достъп до регистъра, който е необходим за изброяване на инсталираните шрифтове при подаване на документи.
- **FileIOPermission** е ограничен. Това означава, че можете да получите достъп само до файлове във виртуалната йерархия на директориите. Това потенциално означава, че шрифтовете не могат да се четат по време на износа.

Поради тези причини, посочени по-горе, се препоръчва да се работи Aspose.Words с Full Trust Разрешения. Можете да откриете, че някои от функциите на библиотеката ще работят при изпълнение на различни задачи с Medium доверие, а някои няма, например, да се направи превод. Това може да бъде свързано с GDI+ разговори за обработка на изображения.
