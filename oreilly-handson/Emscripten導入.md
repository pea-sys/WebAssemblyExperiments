# Emspripten 導入(Windows10)

Emscripten の導入にあたって、いくつか前提条件があります。

### ■ 前提条件

- Python3.6 以上がインストールされていること

```
C:\Users\user\source\repos>python -V
Python 3.11.2
```

- WebAssembly JavaScript API が Web サーバで動作すること  
  ここでは Python の Web サーバが wasm に対応していることを確認します。

※上記バージョンの Python が入っていれば大丈夫ですが、理解のために確認

```
C:\Users\user\source\repos>cd C:\Users\user\AppData\Local\Programs\Python\Python311\Lib
C:\Users\user\AppData\Local\Programs\Python\Python311\Lib>type mimetypes.py | find "wasm"
        '.wasm'   : 'application/wasm',
```

### ■ インストール

- 1.Emscripten がインストールされていないことを確認

```
C:\Users\user>emsdk list
'emsdk' は、内部コマンドまたは外部コマンド、
操作可能なプログラムまたはバッチ ファイルとして認識されていません。
```

- 2.EmscriptenSDK のダウンロード

```
C:\Users\user\source\repos>git clone https://github.com/emscripten-core/emsdk.git
Cloning into 'emsdk'...
remote: Enumerating objects: 3591, done.
Receiving objects:  78% (2801/3591), 1.39 MiB | 923.00 KiB/sremote: Total 3591 (delta 0), reused 0 (delta 0), pack-reuseReceiv
Resolving deltas:  83% (1964/2366)
Resolving deltas: 100% (2366/2366), done.
```

- 3.EmscriptenSDK を最新に更新する

```
C:\Users\user\source\repos\emsdk>emsdk install latest
Resolving SDK alias 'latest' to '3.1.33'
Resolving SDK version '3.1.33' to 'sdk-releases-49b960bd03b3a9da478a08541ce6eafe792a58a8-64bit'
Installing SDK 'sdk-releases-49b960bd03b3a9da478a08541ce6eafe792a58a8-64bit'..
Installing tool 'node-14.18.2-64bit'..
Downloading: C:/Users/user/source/repos/emsdk/zips/node-v14.18.2-win-x64.zip from https://storage.googleapis.com/webassembly/emscripten-releases-builds/deps/node-v14.18.2-win-x64.zip, 30570907 Bytes
Unpacking 'C:/Users/user/source/repos/emsdk/zips/node-v14.18.2-win-x64.zip' to 'C:/Users/user/source/repos/emsdk/node/14.18.2_64bit'
Done installing tool 'node-14.18.2-64bit'.
Installing tool 'python-3.9.2-nuget-64bit'..
Downloading: C:/Users/user/source/repos/emsdk/zips/python-3.9.2-4-amd64+pywin32.zip from https://storage.googleapis.com/webassembly/emscripten-releases-builds/deps/python-3.9.2-4-amd64+pywin32.zip, 14413267 Bytes
Unpacking 'C:/Users/user/source/repos/emsdk/zips/python-3.9.2-4-amd64+pywin32.zip' to 'C:/Users/user/source/repos/emsdk/python/3.9.2-nuget_64bit'
Done installing tool 'python-3.9.2-nuget-64bit'.
Installing tool 'java-8.152-64bit'..
Downloading: C:/Users/user/source/repos/emsdk/zips/portable_jre_8_update_152_64bit.zip from https://storage.googleapis.com/webassembly/emscripten-releases-builds/deps/portable_jre_8_update_152_64bit.zip, 69241499 Bytes
Unpacking 'C:/Users/user/source/repos/emsdk/zips/portable_jre_8_update_152_64bit.zip' to 'C:/Users/user/source/repos/emsdk/java/8.152_64bit'
Done installing tool 'java-8.152-64bit'.
Installing tool 'releases-49b960bd03b3a9da478a08541ce6eafe792a58a8-64bit'..
Downloading: C:/Users/user/source/repos/emsdk/zips/49b960bd03b3a9da478a08541ce6eafe792a58a8-wasm-binaries.zip from https://storage.googleapis.com/webassembly/emscripten-releases-builds/win/49b960bd03b3a9da478a08541ce6eafe792a58a8/wasm-binaries.zip, 421972358 Bytes
Unpacking 'C:/Users/user/source/repos/emsdk/zips/49b960bd03b3a9da478a08541ce6eafe792a58a8-wasm-binaries.zip' to 'C:/Users/user/source/repos/emsdk/upstream'
Done installing tool 'releases-49b960bd03b3a9da478a08541ce6eafe792a58a8-64bit'.
Done installing SDK 'sdk-releases-49b960bd03b3a9da478a08541ce6eafe792a58a8-64bit'.
```

- 4.現在のログインユーザーで Emscripten を有効化します

```
C:\Users\user\source\repos\emsdk>emsdk activate latest --global
--global is deprecated. Use `--system` to set the environment variables for all users
Resolving SDK alias 'latest' to '3.1.33'
Resolving SDK version '3.1.33' to 'sdk-releases-49b960bd03b3a9da478a08541ce6eafe792a58a8-64bit'
Registering active Emscripten environment permanently

Setting the following tools as active:
   node-14.18.2-64bit
   python-3.9.2-nuget-64bit
   java-8.152-64bit
   releases-49b960bd03b3a9da478a08541ce6eafe792a58a8-64bit

Adding directories to PATH:
PATH += C:\Users\user\source\repos\emsdk
PATH += C:\Users\user\source\repos\emsdk\node\14.18.2_64bit\bin
PATH += C:\Users\user\source\repos\emsdk\upstream\emscripten

Setting environment variables:
PATH = C:\Users\user\source\repos\emsdk;C:\Users\user\source\repos\emsdk\node\14.18.2_64bit\bin;C:\Users\user\source\repos\emsdk\upstream\emscripten;C:\Program Files\Common Files\Oracle\Java\javapath;C:\Python39\Scripts\;C:\Python39\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\ProgramData\chocolatey\bin;C:\Program Files\jdk-14\bin;C:\Program Files\Microsoft SQL Server\150\Tools\Binn\;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\;C:\Program Files (x86)\Windows Kits\10\Windows Performance Toolkit\;C:\Program Files\dotnet\;C:\Program Files (x86)\Microsoft SQL Server\150\Tools\Binn\;C:\Program Files\Microsoft SQL Server\150\DTS\Binn\;C:\Program Files\nodejs\;C:\TDM-GCC-64\bin;C:\Program Files\CMake\bin;C:\Program Files\Microsoft Network Monitor 3\;C:\Program Files (x86)\dotnet-core-uninstall\;C:\Program Files\PostgreSQL\14\bin;C:\Program Files\Git LFS;C:\HashiCorp\Vagrant\bin;C:\Program Files\Git\cmd;C:\Program Files\Git\mingw64\bin;C:\Program Files\Git\usr\bin;C:\Program Files\TortoiseGit\bin;C:\Program Files\PowerShell\7\
EMSDK = C:/Users/user/source/repos/emsdk
EMSDK_NODE = C:\Users\user\source\repos\emsdk\node\14.18.2_64bit\bin\node.exe
EMSDK_PYTHON = C:\Users\user\source\repos\emsdk\python\3.9.2-nuget_64bit\python.exe
JAVA_HOME = C:\Users\user\source\repos\emsdk\java\8.152_64bit
Clearing existing environment variable: EMSDK_PY
error: failed to set the environment variable 'PATH'! Setting environment variables permanently requires administrator access. Please rerun this command with administrative privileges. This can be done for example by holding down the Ctrl and Shift keys while opening a command prompt in start menu.
```
