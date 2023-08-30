# Joshuto

[Github: Joshuto](https://github.com/kamiyaa/joshuto)

## Building

```bash
cargo build
```

## Installion

For single user

```bash
cargo install --path=. --force
```

For single user with cargo

```bash
cargo install --git https://github.com/kamiyaa/joshuto.git --force
```

System wide (Recommand)

```bash
cargo install --path=. --force --root=/usr/local     # /usr also works
```

Packaging status

Fedora (COPR)

```bash
sudo dnf copr enable atim/joshuto -y
sudo dnf install joshuto
```
