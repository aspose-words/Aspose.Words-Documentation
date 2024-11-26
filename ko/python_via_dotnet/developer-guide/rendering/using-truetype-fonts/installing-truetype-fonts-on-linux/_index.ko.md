---
title: Linux에 트루타입 글꼴 설치
second_title: Python via .NET용 Aspose.Words
articleTitle: Linux에 트루타입 글꼴 설치
linktitle: Linux에 트루타입 글꼴 설치
description: "Python용 Aspose.Words를 사용하면 Linux 시스템에서 Microsoft Word을 사용하여 생성된 문서를 최고의 정확도로 렌더링할 수 있습니다. 이를 수행하려면 Windows 시스템에서 글꼴 파일을 복사하거나 Linux 시스템에 `TrueType` 글꼴 패키지를 설치하십시오."
type: docs
weight: 20
url: /ko/python-net/installing-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

대부분의 경우 Aspose.Words를 사용하여 DOC 또는 DOCX 문서를 PDF 형식으로 변환합니다. Linux 시스템에서 이 작업을 수행해야 하는 경우 이 항목은 Aspose.Words가 문서를 가장 정확하게 렌더링하는지 확인하는 방법을 배우는 데 도움이 될 것입니다.

대부분 변환이 필요한 DOC 및 DOCX 문서는 Windows 또는 Mac OS 운영 체제에서 Microsoft Word를 사용하여 생성되었습니다. 따라서 DOC 및 DOCX 문서에 사용되는 대부분의 글꼴은 Microsoft Windows 또는 Microsoft Office와 함께 설치되는 글꼴인 "Windows 글꼴" 또는 "Office 글꼴"입니다. 이러한 글꼴에는 Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings 등이 포함됩니다.

문제는 위에 나열된 `TrueType` 글꼴이 Linux 배포판에 기본적으로 설치되지 않는다는 것입니다. Cambria 글꼴로 포맷된 일반적인 DOCX 문서를 Linux의 PDF 형식으로 변환하려고 하면 Cambria를 사용할 수 없기 때문에 Aspose.Words는 다른 글꼴을 사용합니다. 결과적으로 PDF 문서는 원본 DOCX 문서와 다르게 보입니다. Aspose.Words로 변환된 문서가 원본과 최대한 비슷하게 표시되도록 하려면 Linux 시스템에 "Windows 글꼴"을 설치해야 합니다.

Linux 시스템에서 트루타입 글꼴을 얻는 방법에는 두 가지 주요 방법이 있습니다

- Windows 시스템의 .TTF 및 .TTC 파일을 Linux 시스템으로 복사합니다
- *msttcorefonts*와 같은 `TrueType` 글꼴 패키지를 설치합니다

## Windows 머신에서 글꼴 복사하기

Linux 시스템에서 트루타입 글꼴을 얻는 쉽고 빠른 방법은 .TTF 및 .TTC 파일을 Windows 시스템의 `C:\Windows\Fonts` 디렉토리에서 Linux 시스템의 일부 디렉토리로 복사하는 것입니다. 어떤 방식으로든 Linux에 이러한 글꼴을 설치하거나 등록할 필요가 없습니다. Aspose.Words의 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) 클래스를 사용하여 글꼴 위치를 지정하기만 하면 됩니다.

{{% alert color="primary" %}}

Linux 운영 체제에 MS Fonts를 설치하기 전에 글꼴 라이센스가 필요한지 확인하고 EULA를 주의 깊게 읽으십시오.

{{% /alert %}}

## `TrueType` 글꼴 패키지 설치

Linux 시스템에 다운로드하여 설치할 수 있는 Microsoft 트루타입 글꼴이 포함된 Linux 패키지가 많이 있습니다. 정확한 단계는 다양한 Linux 배포판에 따라 다를 수 있습니다.

- Ubuntu에서 Synaptic Package Manager를 사용하여 *ttf-mscorefonts-installer* 패키지를 찾아 설치하세요.
- openSUSE에서는 Yast2 → 소프트웨어 관리를 사용하여 *fetchmsttfonts* 패키지를 찾아 설치합니다.
- 표준 Windows 글꼴 대신 OFL 라이선스가 부여된 Liberation 글꼴(Arial, Times New Roman 및 Courier New)을 사용하세요.
- 다른 Linux 배포판에 적합한 글꼴 패키지를 보려면 인터넷에서 사용 가능한 문서를 검색하세요.

패키지를 설치한 후 Aspose.Words는 시스템의 폴더에서 이러한 글꼴을 찾아 문서 작업 시 사용합니다.

## 또한보십시오

- 표준 Windows 글꼴의 대안인 [해방 글꼴](https://pagure.io/liberation-fonts)
