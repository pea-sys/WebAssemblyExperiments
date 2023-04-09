- JavaScript による wasm の動的リンクを行う場合、依存先の wasm をインスタンス化後に  
  　必要な関数を export し、依存元の wasm をインスタンス化する。

```js
WebAssembly.instantiateStreaming(fetch("<dependency>.wasm"), dependencyObject)
  .then((module) => {
    const mainImportObject = {
      env: {
        関数名: module.instance.exports.関数名,
        関数名: js関数名, //jsの関数も渡せる
      },
    };
    return WebAssembly.instantiateStreaming(fetch("<依存元>.wasm"), mainImportObject);
  })
  .then((module) => {
    module.instance.exports.関数名(3, 100);
  });
```
