- コマンドラインでテストする場合は Mocha と Node.js を使用出来る
  - before:describe 関数内のすべてのテストの前に実行
  - beforeEach:各テストの前に実行
  - afterEach:各テストの後に実行
  - after:describe 関数内のすべてのテストの後に実行
- ブラウザでテストする場合は chai を使用出来る
  - テスト用のスクリプトファイルは Emscripten が生成したスクリプトファイルより前に読み込む必要がある