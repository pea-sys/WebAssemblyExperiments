- html テンプレートを使用する場合、WASM モジュールを自分で宣言しないこと。オブジェクトの振る舞いを変えたい場合は、Module オブジェクトに直接設定する

```js
Module["dynamicLibraries"] = ["<動的リンクを行うwasmファイル名>"];
```
