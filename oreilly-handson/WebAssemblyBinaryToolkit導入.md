# WebAssemblyBinaryToolkit 導入

WebAssemblyBinaryToolkit は WASM バイナリとテキストの相互変換が出来るツールです。　　
以下からダウンロードします。

https://github.com/WebAssembly/wabt/releases

解凍フォルダには次のツールが格納されています。

| ファイル名          | 説明                                                                                            |
| ------------------- | ----------------------------------------------------------------------------------------------- |
| spectest-interp.exe | json で定義したテスト実行                                                                       |
| wasm-interp.exe     | wasm のインタープリタ                                                                           |
| wasm-opcodecnt.exe  | 命令のオペコード使用量を数える                                                                  |
| wasm-validate.exe   | wasm バイナリのファイルを検証する                                                               |
| wasm2wat.exe        | バイナリからテキストに変換                                                                      |
| wat-desugar.exe     | WAT テキストをパースしてフラットな形式にする                                                    |
| wasm-decompile.exe  | バイナリ形式から読みやすい C ライクな構文に変換する                                             |
| wasm-objdump.exe    | wasm バイナリに関する情報を出力                                                                 |
| wasm-strip.exe      | wasm バイナリ ファイルのセクションを削除する                                                    |
| wasm2c.exe          | wasm バイナリファイルを C のソースとヘッダに変換する                                            |
| wast2json.exe       | wasm spec test フォーマットのファイルを JSON ファイルと関連する wasm バイナリファイルに変換する |
| wat2wasm.exe        | テキストからバイナリに変換                                                                      |
