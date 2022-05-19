# docker_burp-enterprise

## Installation

1. Download the `Burp Enterprise` installer for `Linux` at:

   https://portswigger-cdn.net/burp/releases/download?product=enterprise&version=2022.4&type=Linux

> The installer is not directly bundled in the `src` folder due to `GitHub` limitations on file size.

2. (Flat) Extract the `Burp Enterprise` archive in the `src` folder.

The `src/` folder should contain the following files:

- `burpsuite_enterprise_linux_v2022_4.sh`
- `response.varfile`

---

## Usage

- To build the `Docker image`:

  ```bash
  docker build -t burp-enterprise:2022.4 .
  ```

- To create a `Docker container`:

  ```bash
  docker run -d -p 8080:8080 burp-enterprise:2022.4
  ```

---

## TODO

- [ ] Reduce the `Docker image` size.
- [ ] Fetch/download the installer directly from PortSwigger's website and unzip it.
