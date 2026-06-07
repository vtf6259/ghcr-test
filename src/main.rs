use std::fs;

fn main() {
    fs::write("/pers/test.txt", b"Hello, Docker!").unwrap();
    println!("Hello, Docker!");
    loop {};
}
