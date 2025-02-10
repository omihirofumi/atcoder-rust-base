# AtCoder Local Test Setup

AtCoder の問題をローカルで試す際に、環境構築が面倒だったため、雛形を作成しました。

## 必要なツール
- [just](https://github.com/casey/just)
- [toml-cli](https://crates.io/crates/toml-cli)（任意）

## 使い方

1. リポジトリをクローンします。

2. `just new <問題番号>` を実行します。
   ```sh
   just new no001
   ```

   実行すると、以下のようなディレクトリ構造が作成されます。
   ```
   src/
   └── no001/
       └── main.rs
   ```

   `main.rs` の雛形:
   ```rust
   fn main() {

   }
   ```

3. `Cargo.toml` に以下が自動で追記されるため、`cargo run --bin no001` で実行できます。
   ```toml
   [[bin]]
   name = "no001"
   path = "src/no001/main.rs"
   ```

## 発展的な使い方

`toml-cli` をインストールして、パッケージ名 をコンテスト名に設定すると、
`just browse` で対象のコンテストページをデフォルトブラウザで開くことができます。

`Cargo.toml` の `[package]` セクションを以下のように編集してください。
```toml
[package]
name = "<コンテスト名>"
```

その後、以下のコマンドを実行すると、
```sh
just browse
```
対象のコンテストページが開きます。

