# ccall

ccall は Emscripten のヘルパー関数です。
wasm 作成時に EXPORTED_RUNTIME_METHODS で指定すると使用出来ます。  
■ コマンド

```
emcc <ファイル名>.c -o <ファイル名>.js -s "EXPORTED_RUNTIME_METHODS=['ccall']"
```

■ 例

```
C:\Users\user\source\repos\WebAssemblyExperiments\oreilly-handson\B-1-ccall>emcc add.c -o js_plumbing.js -s "EXPORTED_RUNTIME_METHODS=['ccall','cwrap']"
cache:INFO: generating system asset: symbol_lists/cb854d0e5a5c9c592410c74c2fe7783e715be3ad.txt... (this will be cached in "C:\Users\user\source\repos\emsdk\upstream\emscripten\cache\symbol_lists\cb854d0e5a5c9c592410c74c2fe7783e715be3ad.txt" for subsequent builds)
cache:INFO:  - ok
```

ccall を JavaScript から次のように使用する

```js
Module.ccall("関数名", "関数の返り値の型", "関数の引数型", "関数の引数");
```

例えば、c から変換した wasm の次の関数を呼ぶ場合

```c
int Add(int value1, int value2)
```

のようにする。 型は既定値です。  
[関数の戻り値の型]

- null
- 'number'
- 'string'

[関数の引数の型]

- 'number'
- 'string'
- 'array'

---

javascript から以下のようにコールする

```js
Module.ccall("Add", "number", ["number", "number"], [1, 2]);
```
