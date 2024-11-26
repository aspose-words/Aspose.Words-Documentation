---
title: 시스템 요구 사항
second_title: Python via .NET용 Aspose.Words
articleTitle: 시스템 요구 사항
linktitle: 시스템 요구 사항
description: "Python via .NET용 Aspose.Words 작업을 시작하기 전에 운영 체제, 플랫폼 및 환경 요구 사항을 충족하여 장치의 활동이 적절하게 고려되는지 확인하십시오."
type: docs
weight: 50
url: /ko/python-net/system-requirements/
timestamp: 2024-04-27-18-03-32
---

Python via .NET용 Aspose.Words에는 Microsoft Word과 같은 타사 제품을 설치할 필요가 없습니다. Aspose.Words 자체는 Microsoft Word 문서 형식을 포함한 다양한 형식의 문서를 생성, 수정, 변환 및 렌더링하기 위한 엔진입니다.

## 지원되는 운영 체제

Python via .NET용 Aspose.Words는 Python 3.5 이상이 설치된 모든 64비트 또는 32비트 운영 체제를 지원합니다.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">운영 체제</td>
        <td style="font-weight: bold; width:400px">버전</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul>
            <li>Windows 2003 Server(x64, x86)</li>
            <li>Windows 2008 Server(x64, x86)</li>
            <li>Windows 2012 Server(x64, x86)</li>
            <li>Windows 2012 R2 Server(x64, x86)</li>
            <li>Windows 2016 Server(x64, x86)</li>
            <li>Windows 2019 Server(x64, x86)</li>
            <li>Windows XP(x64, x86)</li>
            <li>Windows Vista(x64, x86)</li>
            <li>Windows 7(x64, x86)</li>
            <li>Windows 8, 8.1(x64, x86)</li>
            <li>Windows 10(x64, x86)</li>
        </ul></td>
    </tr>
    <tr>
        <td>맥 OS</td>
        <td><ul>
            <li>macOS-x86_64: 10.14 이상</li>
            <li>macOS-arm64: 11.0 이상</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>오픈수세</li>
            <li>CentOS</li>
            <li>다른 사람</li>
        </ul></td>
    </tr>
</table>

## 대상 Linux 및 macOS 플랫폼의 시스템 요구 사항

- GCC-6 런타임 라이브러리(또는 그 이상).

- .NET Core Runtime의 종속성. .NET Core Runtime 자체 설치는 `NOT`가 필요합니다.

- Python 3.5-3.7의 경우: Python의 `pymalloc` 빌드가 필요합니다. `--with-pymalloc` Python 빌드 옵션은 기본적으로 활성화되어 있습니다. 일반적으로 Python의 `pymalloc` 빌드는 파일 이름에 `m` 접미사가 표시됩니다.

- `libpython` 공유 Python 라이브러리. `--enable-shared` Python 빌드 옵션은 기본적으로 비활성화되어 있으며 일부 Python 배포에는 `libpython` 공유 라이브러리가 포함되어 있지 않습니다. 일부 Linux 플랫폼의 경우 `sudo apt-get install libpython3.7`와 같은 패키지 관리자를 사용하여 `libpython` 공유 라이브러리를 설치할 수 있습니다. 일반적인 문제는 `libpython` 라이브러리가 공유 라이브러리의 표준 시스템 위치와 다른 위치에 설치된다는 것입니다. 이 문제는 Python를 컴파일할 때 대체 라이브러리 경로를 설정하기 위해 Python 빌드 옵션을 사용하여 해결하거나, 공유 라이브러리의 시스템 표준 위치에 `libpython` 라이브러리 파일에 대한 심볼릭 링크를 생성하여 해결할 수 있습니다. 일반적으로 `libpython` 공유 라이브러리 파일 이름은 Python 3.5-3.7의 경우 `libpythonX.Ym.so.1.0`이고, Python 3.8 이상의 경우 `libpythonX.Y.so.1.0`입니다(예: libpython3.7m.so.1.0, libpython3.9.so.1.0)
