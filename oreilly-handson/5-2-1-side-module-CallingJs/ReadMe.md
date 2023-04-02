- wasm から javaScript を呼び出す場合、javaScript で WASM モジュールへのインポート用オブジェクトの中に env プロパティとその配下に関数名のプロパティを追加する必要がある。

```js
const importObject = {
  env: {
    UpdateHostAboutError: (errorMessagePointer) => {
      setErrorMessage(getStringFromMemory(errorMessagePointer));
    },
  },
  wasi_snapshot_preview1: {
    proc_exit: (value) => {},
  },
};
```
