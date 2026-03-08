use debian_control::lossless::Control;
use std::fs;
use std::io;
use std::str::FromStr;

fn main() -> io::Result<()> {
    println!("--- Running Application Task 1: Control File Parser ---");

    // 读取 debian/control 文件
    let file_path = "../debian/control";
    let control_content = fs::read_to_string(file_path)
        .unwrap_or_else(|e| panic!("Could not read file '{}': {}", file_path, e));

    // 解析文件内容
    let control = Control::from_str(&control_content).expect("Failed to parse control file");

    println!("\nFound the following binary package names:");

    // 遍历二进制包，打印出二进制包名
    for binary in control.binaries() {
        println!("- {}", binary.name().unwrap());
    }

    println!("\n--- Task Complete ---");
    Ok(())
}

fn test() -> i32 {
    return 3;
}
