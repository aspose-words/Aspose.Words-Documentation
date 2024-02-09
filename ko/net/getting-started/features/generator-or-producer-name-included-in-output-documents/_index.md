---
title: 출력의 생산자 이름
second_title: .NET용 Aspose.Words
articleTitle: 출력 문서에 포함된 생성자 또는 생산자 이름
linktitle: 출력 문서에 포함된 생성자 또는 생산자 이름
description: ".NET용 Aspose.Words는 문서를 생성하는 데 사용된 생성기 이름과 버전 번호를 문서에 추가합니다. 이 데이터는 C#을 사용하는 출력 파일 형식에 따라 문서에서 찾을 수 있습니다."
type: docs
weight: 60
url: /ko/net/generator-or-producer-name-included-in-output-documents/
---

Aspose.Words for .NET를 이용하면 문서가 생성되었는지 쉽게 알 수 있습니다. 특정 출력 문서를 생성하는 데 사용된 Aspose.Words for .NET의 버전 번호도 확인할 수 있습니다. Aspose.Words는 이 정보를 생성된 문서에 직접 기록합니다.

버전 번호는 *YY.MM.N* 또는 *YY.M.N* 형식으로 지정됩니다(예: 23.12.0 또는 24.1.0).<br />
여기서 *YY*는 릴리스 연도의 마지막 두 자리이고, *M* 또는 *MM*은 릴리스 월(1-12)이며, *N*는 부 릴리스 번호입니다. 일반적으로 *N*는 "0"입니다.

{{% alert color="primary" %}}

출력 문서에서 이 정보를 제거하도록 Aspose.Words에 지시할 수 있습니다.

{{% /alert %}}

출력 파일 형식에 따라 다음 표에는 생성기 이름과 버전 번호를 확인하는 데 사용할 수 있는 방법이 나열되어 있습니다.

| SaveFormat 값 | 파일에 작성된 문자열, 주석 또는 필드 | 찾는 방법 |
|  :-  |  :-  |  :-  |
|  `Doc`  | `AWN.YY.M.N`<br /> 예를 들어,<br /> `AWN.24.1.0` | Aspose.Words에 의해 생성된 DOC는 8바이트를 기록합니다. 일부 바이너리 편집기에서 파일을 열어 확인할 수 있습니다. |
|  `Dot`  | `AWN.YY.M.N`<br /> 예를 들어,<br /> `AWN.24.1.0` | Aspose.Words에 의해 생성된 DOT는 8바이트를 기록합니다. 일부 바이너리 편집기에서 파일을 열어 확인할 수 있습니다. |
|  `Docx`  | `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` | 파일 이름을 .zip으로 바꿉니다. ZIP을 추출하세요. 이 주석을 보려면 ~/Word/Document.xml을 엽니다. |
|  `Docm`  | `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` | 파일 이름을 .zip으로 바꿉니다. ZIP을 추출하세요. 이 주석을 보려면 ~/Word/Document.xml을 엽니다. |
|  `Dotx`  | `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` | 파일 이름을 .zip으로 바꿉니다. ZIP을 추출하세요. 이 주석을 보려면 ~/Document.xml을 엽니다. |
|  `Dotm`  | `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` | 파일 이름을 .zip으로 바꿉니다. ZIP을 추출하세요. 이 주석을 보려면 ~/Word/Document.xml을 엽니다. |
|  `FlatOpc`  | `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` | .xml 파일에 이 주석이 포함되어 있습니다. 이 댓글을 보려면 메모장에서 열어보세요. |
|  `FlatOpcMacroEnabled`  | `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` | .xml 파일에 이 주석이 포함되어 있습니다. 이 댓글을 보려면 메모장에서 열어보세요. |
|  `FlatOpcTemplate`  | `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` | .xml 파일에 이 주석이 포함되어 있습니다. 이 댓글을 보려면 메모장에서 열어보세요. |
|  `FlatOpcTemplateMacroEnabled`  | `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` | .xml 파일에 이 주석이 포함되어 있습니다. 이 댓글을 보려면 메모장에서 열어보세요. |
|  `Rtf`  | `{0}`<br /> 예를 들어,<br /> `{\*\generator Aspose.Words for .NET 24.1.0;}` | .rtf 파일에는 이 주석이 포함되어 있습니다. 이 댓글을 보려면 메모장에서 열어보세요. |
|  `WordML`  | `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` | .xml 파일에 이 주석이 포함되어 있습니다. 이 댓글을 보려면 메모장에서 열어보세요. |
|  PDF |  <ul><li>**애플리케이션:** Aspose.Words</li><li>예를 들어 **PDF 제작자:** `Aspose.Words for .NET YY.M.N`는 다음과 같습니다.<br /> `Aspose.Words for .NET 24.1.0`</li></ul> | ![generator-or-producer-name-aspose-words-net](/words/net/generator-or-producer-name-included-in-output-documents/generator-or-producer-name-included-in-output-documents_1) |
|  `Xps`  | `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` | 파일 이름을 .zip으로 바꿉니다. ZIP을 추출하세요. XPS에서 이 주석은 ~/Documents/1/Pages/1.fpage에서 찾을 수 있습니다 |
|  `XamlFixed`  |  `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` |  .xml 파일에 이 주석이 포함되어 있습니다. 이 댓글을 보려면 메모장에서 열어보세요 |
|  `Svg`  | `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` | .xml 파일에 이 주석이 포함되어 있습니다. 이 댓글을 보려면 메모장에서 열어보세요. |
|  `HtmlFixed`  |  `<meta name="generator" content="Aspose.Words for .NET YY.M.N" />`<br /> 예를 들어,<br /> `<meta name="generator" content="Aspose.Words for .NET 24.1.0" />` |  HTML 파일에는 이 태그가 포함되어 있습니다. 메모장에서 열어서 확인하실 수 있습니다 |
|  `OpenXps`  | `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` | 파일 이름을 .zip으로 바꿉니다. ZIP을 추출하세요. OpenXps에서 이 주석은 ~/Documents/1/Pages/1.fpage에서 찾을 수 있습니다 |
|  `Ps`  | `%Generated by Aspose.Words for .NET YY.M.N`<br /> 예를 들어,<br /> `%Generated by Aspose.Words for .NET 24.1.0` | .ps 파일에는 이 설명이 포함되어 있습니다. 이 댓글을 보려면 메모장에서 열어보세요. |
|  `Pcl`  |  –  |  –  |
|  `Html`  | `<meta name="generator" content="Aspose.Words for .NET YY.M.N" />`<br /> 예를 들어,<br /> `<meta name="generator" content="Aspose.Words for .NET 24.1.0" />` | HTML 파일에는 이 태그가 포함되어 있습니다. 메모장에서 열어서 확인하실 수 있습니다. |
|  `Mhtml`  | `<meta name="generator" content="Aspose.Words for .NET YY.M.N" />`<br /> 예를 들어,<br /> `<meta name="generator" content="Aspose.Words for .NET 24.1.0" />` | MHTML 파일에는 이 태그가 포함되어 있습니다. 메모장에서 열어서 확인하실 수 있습니다. |
|  `Epub`  | `<meta name="generator" content="Aspose.Words for .NET YY.M.N" />`<br /> 예를 들어,<br /> `<meta name="generator" content="Aspose.Words for .NET 24.1.0" />` | 파일 이름을 .zip으로 바꿉니다. ZIP을 추출하세요. ~/OEBPS/로 이동<file_name> .html. |
|  `Odt`  | `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` | 파일 이름을 .zip으로 바꿉니다. ZIP을 추출하세요. ~/content.xml에서 확인하세요 |
|  `Ott`  | `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` | 파일 이름을 .zip으로 바꿉니다. ZIP을 추출하세요. ~/content.xml에서 확인하세요 |
|  `Text`  |  –  |  –  |
|  `XamlFlow`  |  `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` |  .xml 파일에 이 주석이 포함되어 있습니다. 이 댓글을 보려면 메모장에서 열어보세요 |
|  `XamlFlowPack`  |  `<!-- Generated by Aspose.Words for .NET YY.M.N -->`<br /> 예를 들어,<br /> `<!-- Generated by Aspose.Words for .NET 24.1.0 -->` |  .xml 파일에 이 주석이 포함되어 있습니다. 이 댓글을 보려면 메모장에서 열어보세요 |
|  `Markdown`  |  –  |  –  |
|  `Tiff`  |  –  |  –  |
|  `Png`  |  –  |  –  |
|  `Bmp`  |  –  |  –  |
|  `Emf`  |  –  |  –  |
|  `Jpeg`  |  –  |  –  |
|  `Gif`  |  –  |  –  |

{{% alert color="primary" %}}

또한 표에 표시된 변형에 추가 사항이 있습니다. Aspose.Words의 버전 번호는 일부 형식의 경우 여러 위치에 더 기록될 수 있습니다. 내보내기 설정에 따라 다릅니다.

이러한 추가 상황은 위 표에 설명되어 있지 않습니다.

{{% /alert %}}