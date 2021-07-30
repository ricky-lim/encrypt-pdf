# What is it?

A simple script to encrypt a folder containing pdf files using `qpdf`.

# Pre-requisite

## macOS
```
brew update
brew install qpdf
```

# How to use it?
```
$ ./bin/enc_pdir.sh input_pdf
Enter Password:
encrypting input_pdf/hello1.pdf ...
encrypting input_pdf/hello2.pdf ...
encrypting done

# Remove the uncrypted files
## Double check before you delete
find . -maxdepth 1 ! -path "*_protected.pdf" -path "*.pdf" 
find . -maxdepth 1 ! -path "*_protected.pdf" -path "*.pdf" -delete
```



# References
- [qpdf](https://github.com/qpdf/qpdf)

