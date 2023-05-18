# Rust Cross Compilation ToolKit
A simple rust toolkit/template to automate all your cross-compilation tools and related dependencies asap. This toolkit uses the official rust [cross](https://github.com/cross-rs/cross) crate for the cross-compilation. Simply adjust your environment variables and get started. 

## Quck Install

1. Goto your project folder and load the toolkit: 
    ```
    wget -qO- https://github.com/iocron/rust-cross-build/archive/refs/tags/latest.tar.gz | tar --strip-components=1 -xzf -
    ```
2. `chmod u+x cross-*.sh`
3. Init project and install dependencies: `./cross-init.sh`
4. Edit your targets in the .env file

## Commands

Cross run/test your application
```
./cross-run.sh
```

Cross build your application
```
./cross-build.sh
```

Init project and install dependencies
```
./cross-init.sh
```

## Further Docs
Read more about the official cross crate: https://github.com/cross-rs/cross
