main_fn := """
fn main() {

}
"""
@new num:
  mkdir -p src/{{num}}
  touch src/{{num}}/main.rs
  echo "{{main_fn}}" > src/{{num}}/main.rs
  echo "[[bin]]" >> cargo.toml
  echo 'name = "{{num}}"' >> cargo.toml
  echo 'path = "src/{{num}}/main.rs"' >> cargo.toml
