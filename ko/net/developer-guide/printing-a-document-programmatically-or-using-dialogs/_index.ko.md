---
title: C#에서 문서 인쇄하기
second_title: .NET용 Aspose.Words
articleTitle: 프로그래밍 방식으로 또는 대화 상자를 사용하여 문서 인쇄
linktitle: 프로그래밍 방식으로 또는 대화 상자를 사용하여 문서 인쇄
description: "관리되지 않는 XpsPrint API를 사용하거나 C#의 설정 및 인쇄 미리 보기 대화 상자가 있는 선택한 프린터를 통해 Server의 문서를 인쇄합니다."
type: docs
weight: 55
url: /ko/net/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-31-14-23-37
---

이 문서에서는 Aspose.Words 및 `XpsPrint` API을 사용하여 ASP.NET 또는 Windows 서비스 애플리케이션에서 워드 프로세싱 문서를 인쇄하는 방법을 설명합니다. 또한 설정, 인쇄 미리 보기 및 인쇄 진행률 대화 상자를 사용하여 문서를 인쇄하는 방법을 보여 주고 문서 인쇄를 위한 첫 번째 호출 시간을 줄이는 방법을 설명합니다.

## `XpsPrint` API을 통해 Server의 문서 인쇄

이 섹션은 Aspose.Words를 사용하는 .NET 응용 프로그램에서 관리되지 않는 XpsPrint API에 XPS 문서를 제출하려는 사용자를 위한 것입니다.

### ASP.NET 또는 Windows 서비스 애플리케이션에서 문서 인쇄 제한 사항

인쇄된 출력을 생성하는 .NET 애플리케이션을 개발할 때 일반적으로 *System.Drawing.Printing* 네임스페이스에 제공된 클래스 또는 WPF(Windows Presentation Foundation) 클래스를 사용할 수 있습니다. 그러나 응용 프로그램이 ASP.NET 또는 Windows 서비스 응용 프로그램인 경우 Microsoft에서는 이 접근 방식을 사용하지 않기 때문에 인쇄 옵션이 제한됩니다. .NET Framework 인쇄 클래스는 서비스 응용 프로그램에서 지원되지 않습니다. 여기에는 일반적으로 서버 서비스의 컨텍스트에서 실행되는 ASP 페이지가 포함됩니다.

*System.Drawing.Printing* 네임스페이스 내의 클래스는 Windows 서비스나 ASP.NET 애플리케이션 또는 서비스 내에서 사용하도록 지원되지 않으며, 해당 클래스를 사용하려고 하면 서비스 성능 저하, 런타임 예외 및 기타 문제가 발생할 수 있습니다. Windows 서비스를 구축하기 위해 WPF를 사용하는 것도 마찬가지로 지원되지 않습니다. WPF는 프레젠테이션 기술이므로 Windows 서비스에는 사용자 상호 작용과 관련된 시각적 작업을 수행하기 위한 적절한 권한이 필요합니다. Windows 서비스에 이러한 권한이 없으면 예상치 못한 결과가 발생할 수 있습니다.

Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) 개체는 문서를 인쇄하기 위한 [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) 메서드 제품군을 제공합니다. 이러한 메서드는 *System.Drawing.Printing* 네임스페이스에 정의된 .NET 인쇄 클래스를 사용합니다. 서버측 애플리케이션에서 인쇄에 이를 성공적으로 활용하는 Aspose.Words 고객이 많이 있습니다. 그럼에도 불구하고 이 문서에서는 Microsoft 권장 사항을 준수하는 대체 인쇄 방법을 보여줍니다.

### Server에 문서를 인쇄하는 방법

Microsoft에 따라 문서를 인쇄하는 올바른 방법은 관리되지 않는 XpsPrint API를 사용하는 것입니다. 이 API는 Windows 7, Windows Server 2008 R2 및 Windows Vista용 플랫폼 업데이트가 설치된 경우 Windows Vista에서 사용할 수 있습니다.

Aspose.Words는 모든 문서를 XPS로 쉽게 변환할 수 있으므로 XPS 문서를 `XpsPrint` API로 전달하는 코드만 작성하면 됩니다. 유일한 문제는 `XpsPrint` API가 관리되지 않으며 플랫폼 호출 기술에 대한 지식이 필요하다는 것입니다.

문서를 인쇄하기 위해 Aspose.Words는 다음 매개변수만 지정하면 되는 간단한 Print 메소드가 포함된 **XpsPrintHelper** 클래스를 제공합니다(자세한 내용은 [XPS API를 통해 문서 인쇄](/words/net/missing-features-in-openxml/) 문서 참조)

- 인쇄하려는 문서.
- 프린터 이름.
- 작업 이름(선택 사항).
- 인쇄 작업이 완료될 때까지 프로그램이 기다려야 하는지 여부를 지정하는 부울 값입니다. 따라서 시스템은 문서가 성공적으로 인쇄되었는지 확인하거나 인쇄 작업을 보낸 후 즉시 반환합니다. 마지막 경우에는 인쇄 작업이 성공했는지 여부를 확인할 수 없습니다.

문서를 제출하거나 인쇄하는 데 문제가 발생하면 메서드에서 예외가 발생합니다.

아래 코드 예제에서는 **XpsPrintHelper** 클래스를 사용하여 문서를 인쇄하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

프로젝트를 실행하면 지정된 프린터에서 샘플 문서가 인쇄되고 콘솔 창이 열려 인쇄 결과가 표시됩니다. 인쇄 작업이 완료되거나 오류가 발생하면 시스템은 성공 메시지나 발생한 예외 텍스트를 표시합니다.

[PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) 클래스를 사용하여 일부 인쇄 설정을 지정할 수도 있습니다. 예를 들어, Microsoft Word에서 프린터 트레이는 각 섹션에 대해 정의되며 프린터마다 다릅니다. 따라서 [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) 및 [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/) 속성을 통해 각 섹션에 대한 이러한 값을 프로그래밍 방식으로 변경할 수 있습니다.

{{% alert color="primary" %}}

어떤 경우에는 Aspose.Words 없이 이 샘플을 사용해야 할 수도 있습니다. 예를 들어, XPS 문서가 이미 있고 ASP.NET 또는 Windows 서비스 애플리케이션에서 인쇄하려는 경우입니다. 그런 다음 `Print` 메서드를 삭제하면 됩니다.

{{% /alert %}}

**XpsPrintHelper**.**Print** 메서드에는 두 가지 오버로드가 있습니다. 첫 번째 오버로드는 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 객체를 가져와 XPS 형식의 `MemoryStream`에 저장합니다. 두 번째 오버로드는 `Stream` 개체를 허용합니다. 스트림에는 XPS 형식의 문서가 포함되어야 합니다.

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip)에서 메서드 오버로딩의 예를 다운로드할 수 있습니다.

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

## 설정 및 인쇄 미리 보기 대화 상자를 사용하여 문서 인쇄

문서 작업을 할 때 선택한 프린터로 인쇄해야 하는 경우가 많습니다. 인쇄 미리보기 대화상자를 활용하면 인쇄된 문서가 어떻게 나타나는지 시각적으로 검사하고 관련 인쇄 옵션을 선택하는 데 도움이 됩니다.

Aspose.Words에는 내장된 대화 상자나 양식이 없지만 .NET **PrintDocument** 클래스를 기반으로 [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) 클래스를 구현합니다. 이 클래스의 인스턴스를 **PrintPreviewDialog** 양식에 전달하여 문서를 미리 보고 인쇄할 수 있습니다. 또한 [인쇄미리보기대화상자](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) 클래스는 프린터로 전송할 출력을 정의합니다.

다음 예에서는 이러한 클래스를 사용하여 인쇄 미리 보기 및 설정 대화 상자를 통해 Aspose.Words에서 문서를 인쇄하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

**AllowSomePages** 속성을 사용하면 이 속성 값이 True인 경우 인쇄할 페이지 범위를 선택할 수 있습니다. 기본적으로 범위의 모든 페이지가 인쇄되도록 선택됩니다.

{{% /alert %}}

인쇄 미리 보기 대화 상자 설정의 모양을 최적화하려면 **PrintPreviewDialog** 클래스의 속성을 지정하십시오.

## 한 장에 여러 페이지 인쇄

문서를 인쇄할 때 더 많은 유연성을 갖는 것이 항상 유익합니다. .NET 및 Aspose.Words를 사용하면 인쇄 작업을 쉽게 미세 조정하여 문서가 인쇄된 페이지에 표시되는 방식을 정의하여 사용자 정의 논리를 구현할 수 있습니다.

이전 섹션에서와 마찬가지로 Aspose.Words는 .NET **PrintDocument** 클래스를 기반으로 하는 **MultipagePrintDocument** 클래스를 구현합니다. 이는 기존 .NET 인쇄 인프라를 인쇄 및 인쇄 미리보기 대화 상자를 통해 인쇄하기 전에 문서를 시각화할 수 있는 방식으로 사용할 수 있음을 의미합니다. **MultipagePrintDocument** 클래스는 한 장의 용지에 여러 페이지를 인쇄하는 기능을 제공합니다.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

이 코드 예제의 결과는 아래와 같습니다

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## 문서를 인쇄할 때 인쇄 진행률 대화 상자 숨기기

[Print](https://reference.aspose.com/words/net/aspose.words/document/print/) 방법을 통해 문서를 인쇄할 때 인쇄 진행 대화 상자가 나타나지 않습니다. 그러나 이 대화 상자는 다른 [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) 방법으로 인쇄하는 동안 나타납니다. 이 경우 인쇄 대화 상자가 나타나지 않도록 하려면 아래 예와 같이 이 방법으로 유효한 프린터 설정과 표준 인쇄 컨트롤러를 지정해야 합니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

## 문서 인쇄를 위한 첫 번째 호출 시간을 줄이는 방법

Aspose.Words는 인쇄 시간을 줄이기 위해 **PrinterSettings**의 일부 필드를 읽고 캐시합니다. [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/) 메서드를 호출하면 이를 달성할 수 있습니다. 이 메소드는 이전에 실행되지 않은 경우 인쇄가 시작되기 전에 호출됩니다. 이 메소드를 호출할 때와 호출하지 않을 때의 총 인쇄 시간은 거의 동일합니다. 이 방법을 사용하는 목적은 [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) 메서드의 첫 번째 호출 시간을 줄이는 것입니다. 다음 코드 예제에서는 이 메서드를 사용하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## 또한보십시오

- [Windows Vista용 플랫폼 업데이트](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
