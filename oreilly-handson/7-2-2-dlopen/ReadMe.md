- wasm の動的リンクにおいて、dlopen を使うメリットは同一関数名が複数あっても動的リンク可能な点にある
- dlopen による wasm の動的リンクを行うには、dlfcn をインクルードする

```cpp
#include <dlfcn.h>
```

- サイドモジュールを Emscripten ファイルシステムにダウンロードするために メインモジュールで emscripten_async_wget 関数を呼び、サイドモジュールを指定する必要がある

```cpp
int main()
{
  emscripten_async_wget("<サイドモジュール>.wasm", "<サイドモジュール>.wasm", <関数名>, <ダウンロード失敗時のコールバック>);

  return 0;
}
```

- サイドモジュール内の関数の参照を取得するには dlsym 関数を使用する

```cpp
  関数名 変数名 = (関数名)dlsym(handle, "関数名");
```
