### 心得
1. 在 State 中可以透過 `widget` 取得在 Stateful Widget 中儲存的屬性值。
2. GridView 無法直接擺在 Positioned 下。
3. 在 dart 中可以透過 Iterable<int>.generate(10) 產生 range，並直接在 [] 寫 for-loop。
4. 透過 FractionalTranslation，我們可以使用內容的寬度進行位移。
5. LayoutBuilder 可以讓我們取得某個 ancestor 的寬高。
6. 固定間隙這件事用 GridView 做比較符合語意。