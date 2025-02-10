main_fn := """
fn main() {

}
"""
@new num:
  mkdir -p src/{{num}}
  touch src/{{num}}/main.rs
  echo "{{main_fn}}" > src/{{num}}/main.rs
  echo "[[bin]]" >> Cargo.toml
  echo 'name = "{{num}}"' >> Cargo.toml
  echo 'path = "src/{{num}}/main.rs"' >> cargo.toml
