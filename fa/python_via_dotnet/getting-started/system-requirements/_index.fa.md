---
title: سیستم مورد نیاز
second_title: Aspose.Words برای Python via .NET
articleTitle: سیستم مورد نیاز
linktitle: سیستم مورد نیاز
description: "قبل از شروع کار با Aspose.Words برای Python via .NET، مطمئن شوید که سیستم عامل، پلتفرم و شرایط محیطی را برآورده می‌کنید تا فعالیت‌های دستگاه‌های شما به درستی محاسبه شوند."
type: docs
weight: 50
url: /fa/python-net/system-requirements/
timestamp: 2024-04-27-18-03-32
---

Aspose.Words for Python via .NET نیازی به نصب هیچ محصول شخص ثالثی مانند Microsoft Word ندارد. Aspose.Words خود موتوری برای ایجاد، اصلاح، تبدیل و ارائه اسناد در قالب‌های مختلف، از جمله فرمت‌های اسناد Microsoft Word است.

## سیستم عامل های پشتیبانی شده

Aspose.Words for Python via .NET از هر سیستم عامل 64 بیتی یا 32 بیتی که در آن Python 3.5 یا بالاتر نصب شده است پشتیبانی می کند.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">سیستم عامل</td>
        <td style="font-weight: bold; width:400px">نسخه ها</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul>
            <li>Windows 2003 Server (x64، x86)</li>
            <li>Windows 2008 Server (x64، x86)</li>
            <li>Windows 2012 Server (x64، x86)</li>
            <li>Windows 2012 R2 Server (x64، x86)</li>
            <li>Windows 2016 Server (x64، x86)</li>
            <li>Windows 2019 Server (x64، x86)</li>
            <li>Windows XP (x64، x86)</li>
            <li>Windows Vista (x64، x86)</li>
            <li>Windows 7 (x64، x86)</li>
            <li>Windows 8, 8.1 (x64, x86)</li>
            <li>Windows 10 (x64، x86)</li>
        </ul></td>
    </tr>
    <tr>
        <td>سیستم عامل مک</td>
        <td><ul>
            <li>macOS-x86_64: 10.14 یا بالاتر</li>
            <li>macOS-arm64: 11.0 یا بالاتر</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>OpenSUSE</li>
            <li>CentOS</li>
            <li>و دیگران</li>
        </ul></td>
    </tr>
</table>

## سیستم مورد نیاز برای پلتفرم های Target Linux و macOS

- کتابخانه های زمان اجرا GCC-6 (یا جدیدتر).

- وابستگی های .NET Core Runtime. نصب .NET Core Runtime خود نیاز به `NOT` دارد.

- برای Python 3.5-3.7: ساخت `pymalloc` Python مورد نیاز است. گزینه ساخت `--with-pymalloc` Python به طور پیش فرض فعال است. به طور معمول، ساخت `pymalloc` Python با پسوند `m` در نام فایل مشخص می شود.

- کتابخانه Python مشترک `libpython`. گزینه ساخت `--enable-shared` Python به طور پیش فرض غیرفعال است، برخی از توزیع های Python حاوی کتابخانه مشترک `libpython` نیستند. برای برخی از پلتفرم های لینوکس، کتابخانه مشترک `libpython` را می توان با استفاده از مدیر بسته نصب کرد، به عنوان مثال: `sudo apt-get install libpython3.7`. مشکل رایج این است که کتابخانه `libpython` در مکانی متفاوت از مکان استاندارد سیستم برای کتابخانه های مشترک نصب شده است. این مشکل را می توان با استفاده از گزینه های ساخت Python برای تنظیم مسیرهای کتابخانه جایگزین در هنگام کامپایل Python برطرف کرد، یا با ایجاد یک پیوند نمادین به فایل کتابخانه `libpython` در محل استاندارد سیستم برای کتابخانه های اشتراکی برطرف شد. معمولاً، نام فایل کتابخانه مشترک `libpython` `libpythonX.Ym.so.1.0` برای Python 3.5-3.7 یا `libpythonX.Y.so.1.0` برای Python 3.8 یا بالاتر است (به عنوان مثال: libpython3.7m.so.1.0، libpython3.9.so.1.0)
