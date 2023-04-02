- 自作の javaScript のコードを Emscripten が生成する JavaScript に組み込む場合、Emscripten の LibraryManager.library オブジェクトに
  追加する必要がある。  
  具体的には LibraryManager.library 変数に対して、 mergeInto() 関数を使用する。

```js
mergeInto(LibraryManager.library, {
  UpdateHostAboutError: function (errorMessagePointer) {
    setErrorMessage(Module.UTF8ToString(errorMessagePointer));
  },
});
```

自作のコードを Emscripten が生成する JavaScript に組み込む場合、、wasm 生成時のコマンドで --js-library <ファイル名>.js を指定する。

自作のコードに Emscripten のヘルパー関数を組み込む場合、wasm 生成時のコマンドで EXPORTED_RUNTIME_METHODS 引数に配列形式でヘルパー関数名を指定し、コンパイルを通す。

```cmd
emcc validate.cpp --js-library mergeinto.js -s "EXPORTED_RUNTIME_METHODS=['ccall','UTF8ToString']" -s "EXPORTED_FUNCTIONS=['_malloc','_free']" -o validate.js
```

組み込んだ場合、Emscirpten の生成する JavaScript に次のように追加される。

```
  function _UpdateHostAboutError(errorMessagePointer) {
      setErrorMessage(Module.UTF8ToString(errorMessagePointer));
    }
```
