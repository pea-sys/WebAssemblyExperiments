- wasm をテキスト形式に変換するには、WABT の wasm2wat を使用する

```
wasm2wat -o <出力ファイル名>.wat <入力ファイル名>.wasm
```

- wasm のメモリーオブジェクトは  
  wat の記載にある通り、memory 変数にエキスポートしている

```
(export "memory" (memory 0))
```

JavaScript からは次のように取得できる

```js
moduleMemory = moduleExports.memory;
```

- wasm のテーブルファンクションオブジェクトは  
  wat の記載にある通り、

```
(export "__indirect_function_table" (table,0))
```

JavaScript からは次のように取得できる

```js
moduleTable = moduleExports.__indirect_function_table;
```

- 関数をテーブルファンクションオブジェクトに追加する場合、
  grow で拡張してセットする。

```js
moduleTable.grow(1);
moduleTable.set(index, convertJsFunctionToWasm(jsFunction, signature));
```
