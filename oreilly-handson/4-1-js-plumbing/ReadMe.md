- Emscrpten には条件付きコンパイルシンボル**EMSCRIPTEN**が用意されている
  WASM 向けにコンパイルする場合は次のようにする。

```cpp
#ifdef __EMSCRIPTEN__
    #include <emscripten.h>
#endif
```

- C++ではコンパイラによるマングル(名前修飾)を防ぐために extern "C"{}ブロック内に関数を定義する

```cpp
#ifdef __cplusplus
extern "C" {
#endif
//関数定義
#ifdef __cplusplus
}
#endif
```

- 関数のエクスポートはコンパイル引数の EXPORTED_FUNCTIONS ではなく、ソース内で 関数に EMSCRIPTEN_KEEPALIVE アノテートすると、自動でエクスポート出来る

```cpp
#ifdef __EMSCRIPTEN__
  EMSCRIPTEN_KEEPALIVE
#endif
  //関数定義
```

- WASM と連携する Javascript を作成する場合は、Emscripten のヘルパー関数である ccall 関数と UTF8ToString 関数を使用するので、コンパイル時に EXPORTED_RUNTIME_METHOD オプションでインクルード関数に指定する必要がある。

```
emcc <ファイル名>.cpp -o <ファイル名>.js -s "EXPORTED_RUNTIME_METHODS=['ccall','UTF8ToString']"
```

*