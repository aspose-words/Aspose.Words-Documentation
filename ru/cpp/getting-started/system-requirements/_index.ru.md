---
title: Системные требования
second_title: Aspose.Words для C++
articleTitle: Системные требования
linktitle: Системные требования
description: "Прежде чем приступить к работе с Aspose.Words для C++, убедитесь, что вы соответствуете требованиям к операционной системе, платформе, фреймворкам и среде, чтобы должным образом учитывать действия на ваших устройствах."
type: docs
weight: 70
url: /ru/cpp/system-requirements/
---

Aspose.Words для C++ не требует установки какого-либо стороннего продукта, такого как Microsoft Word. Aspose.Words сам по себе является движком для создания, изменения, преобразования и визуализации документов в различных форматах, включая форматы документов Microsoft Word.

## Поддерживаемые операционные системы

Aspose.Words для C++ поддерживает следующие 64-разрядные или 32-разрядные операционные системы и платформы:

<table>
   <tr>
      <td style="font-weight: bold; width:400px">Операционная система</td>
      <td style="font-weight: bold; width:400px">Версии</td>
   </tr>
   <tr>
      <td>Microsoft Windows</td>
      <td><ul>
         <li>Windows Сервер 2008 года выпуска (x64, x86)</li>
         <li>Windows Сервер 2012 (x64, x86)</li>
         <li>Windows Сервер 2012 R2 (x64, x86)</li>
         <li>Windows Сервер 2016 года выпуска (x64, x86)</li>
         <li>Windows Сервер 2019 (x64, x86)</li>
         <li>Windows Сервер 2022 года (x64, x86)</li>
         <li>Windows Vista (x64, x86)</li>
         <li>Windows 7 (х64, х86)</li>
         <li>Windows 8, 8.1 ( x64, x86)</li>
         <li>Windows 10 (х64, х86)</li>
      </ul></td>
   </tr>
   <tr>
      <td>Linux</td>
      <td><ul>
         <li>Ubuntu</li>
         <li>Fedora</li>
         <li>OpenSUSE (открытое использование)</li>
         <li>CentOS</li>
         <li>и другие</li>
      </ul></td>
   </tr>
   <tr>
      <td>macOS (макОС)</td>
      <td><ul>
         <li>macOS-x86_64: 12.0 или более поздняя версия</li>
         <li>macOS-arm64: 12.0 или более поздняя версия</li>
      </ul></td>
   </tr>
</table>

## Среда разработки

Вы можете использовать Aspose.Words для C++ при разработке приложений для Windows, Linux или macOS.

### Windows

Aspose.Words для C++ может использоваться для разработки приложений в любой среде разработки, поддерживающей [Microsoft Visual Studio v143 Platform Toolset](https://docs.microsoft.com/en-us/cpp/porting/binary-compat-2015-2017), но среды, перечисленные в следующей таблице, поддерживаются явно:

<table>
	<tr>
			<td style="font-weight: bold; width:800px">Среды разработки</td>
		</tr>
  <tr>
			<td><ul><li>Microsoft Visual Studio 2022</li></ul></td>
			</tr>
</table>

### Linux

Aspose.Words для C++ может использоваться для разработки приложений в среде разработки, поддерживающей [Стандарт языка C++14](https://en.cppreference.com/w/cpp/14#Compiler_support), но следующие компиляторы поддерживаются явно:

<table>
	<tr>
			<td style="font-weight: bold; width:800px">Компиляторы</td>
		</tr>
  <tr>
			<td><ul><li>Clang 3.9.1 или более поздняя версия</li></ul></td>
			</tr>
</table>

### Дополнительная зависимость от Linux

Aspose.Words для C++ включено Linux зависит от [fontconfig](https://www.freedesktop.org/wiki/Software/fontconfig/) двоичных файлов как динамической библиотеки, так и инструмента. Пожалуйста, установите его перед использованием:

1. Установка fontconfig на Ubuntu или Debian</br>
`sudo apt install libfontconfig fontconfig`
2. Установка fontconfig на Fedora или CentOs</br>
`sudo yum install fontconfig`

### macOS (макОС)

Aspose.Words для C++ может использоваться для разработки приложений в следующих средах разработки:

<table>
	<tr>
			<td style="font-weight: bold; width:800px">Среды разработки</td>
		</tr>
  <tr>
			<td><ul><li>Xcode 12.5.1 или более поздней версии</li><li>Clang и libc++ (которые по умолчанию поставляются вместе с Xcode)</li></ul></td>
			</tr>
</table>

### Дополнительная зависимость от macOS

Aspose.Words для C++ на macOS зависит от [fontconfig](https://www.freedesktop.org/wiki/Software/fontconfig/) двоичных файлов как динамической библиотеки, так и инструмента. Пожалуйста, установите его перед использованием:

Установка fontconfig на macOS с помощью [homebrew](https://brew.sh)</br>
`brew install fontconfig`
